module "vpc" {
  source = "./vpc"
  gcp_service_list = var.gcp_service_list
  project_id = var.project_id
  private_network_address_name = var.private_network_address_name
  private_network_name = var.private_network_name

}

module "db" {
  source = "./db"  
  db_name = var.db_name
  db_user = var.db_user
  db_tier = var.db_tier
  db_version = var.db_version
  db_password = var.db_password
  private_network_id = module.vpc.google_compute_network_id


  depends_on = [
    module.vpc
  ]
}

module "artifact-registry" {
  source = "./artifact-registry"
  registry_name = var.registry_name
}