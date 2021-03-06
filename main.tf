resource "aws_route" "route" {
  count                  = "${var.create_vpc && var.nat_gateway_route ? var.count : 0}"
  route_table_id         = "${element(var.route_table_id, count.index)}"
  destination_cidr_block = "${var.destination_cidr_block}"
  gateway_id = "${var.gateway_route ? element(concat(var.gateway_id, list("")), count.index) : "null"}"
  nat_gateway_id = "${var.nat_gateway_route ? element(concat(var.nat_gateway_id, list("")), count.index) : "null"}"
}
