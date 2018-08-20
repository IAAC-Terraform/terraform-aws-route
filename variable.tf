variable "route_table_id" {
  type = "list"
}

variable "destination_cidr_block" {}

variable "nat_gateway_route" {
  default = "false"
}

variable "nat_gateway_id" {
  type = "list"
}

variable "create_vpc" {}

variable "count" {}

variable "gateway_route" {
  type = "list"
}

variable "gateway_id" {
  type = "list"
  default = []
}