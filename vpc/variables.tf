variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    "compute.googleapis.com",
    "sqladmin.googleapis.com",
    "run.googleapis.com",
    "vpcaccess.googleapis.com",
    "servicenetworking.googleapis.com",
  ]
}

variable "project_id" {
    type = string
    description = "(optional) describe your variable"
}

variable "private_network_name" {
    type = string
    description = "(optional) describe your variable"
}
variable "private_network_address_name" {
    type = string
    description = "(optional) describe your variable"
}