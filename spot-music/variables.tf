variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    "apigateway.googleapis.com",
    "servicemanagement.googleapis.com",
    "servicecontrol.googleapis.com",
    "secretmanager.googleapis.com",
    "compute.googleapis.com",
    "sqladmin.googleapis.com",
    "run.googleapis.com",
    "vpcaccess.googleapis.com",
    "servicenetworking.googleapis.com",
  ]
}
variable "region" {
    type = string
    description = "(optional) describe your variable"
}

variable "project_id" {
    type = string
    description = "(optional) describe your variable"
}

variable "az" {
    type = string
    description = "(optional) describe your variable"
}
variable "bucket_name" {
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

variable "db_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "db_version" {
    type = string
    description = "(optional) describe your variable"
}

variable "db_tier" {
    type = string
    description = "(optional) describe your variable"
}
variable "private_network_id" {
    type = string
    description = "(optional) describe your variable"
    default = ""
}


variable "db_user" {
    type = string
    description = "(optional) describe your variable"
}
variable "db_password" {
    type = string
    description = "(optional) describe your variable"
}
variable "registry_name" {
    type = map(string)
    description = "(optional) describe your variable"
    default = {
      "" = "",
      "" = ""
    }
}

