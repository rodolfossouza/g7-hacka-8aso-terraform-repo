
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
variable "region" {
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