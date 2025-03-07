#resource "null_resource" "test" {
#    for_each = var.map_list
#    port = each.value.port
#    protocol = each.value.protocol
#}

variable "map_list" {
    type = map(list(any))
}

resource "aws_security_group" "example" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-a077f1d8"
  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group_rule" "example" {
  for_each          = var.map_list
  type              = each.value[0]
  from_port         = each.value[1]
  to_port           = each.value[2]
  protocol          = each.value[3]
  cidr_blocks       = [ each.value[4] ]
  security_group_id = aws_security_group.example.id
}
