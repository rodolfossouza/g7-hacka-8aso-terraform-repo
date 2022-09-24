### NETWORK ###
resource "google_compute_network" "private_network" {
  name = var.private_network_name

}
## Cria o RANGE de IP privado
resource "google_compute_global_address" "private_ip_address" {
  name          = var.private_network_address_name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = "20"
  network       = google_compute_network.private_network.id
}
## Cria a service connection com a rede privada
resource "google_service_networking_connection" "private_vpc_connection" {
  service                 = "servicenetworking.googleapis.com"  
  network                 = google_compute_network.private_network.id
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

## Cria o Connector para serviços Serverlesss se falarem na VPC
resource "google_vpc_access_connector" "connector" {
  name          = "g7-hacka-vpc-connector"
  ip_cidr_range = "10.8.0.0/28"
  network       = google_compute_network.private_network.id
}

