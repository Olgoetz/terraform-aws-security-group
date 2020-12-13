


resource "random_id" "this" {
  byte_length = 4
}


resource "aws_security_group" "this" {
  name        = "${var.name}-${random_id.this.id}"
  description = var.description

  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress

    content {
      cidr_blocks      = ingress.value.cidr_blocks
      ipv6_cidr_blocks = ingress.value.ipv6_cidr_blocks
      prefix_list_ids  = ingress.value.prefix_list_ids
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = ingress.value.protocol
      security_groups  = ingress.value.security_groups
      description      = ingress.value.description
    }
  }

  dynamic "egress" {
    for_each = var.egress
    content {
      cidr_blocks      = egress.value.cidr_blocks
      ipv6_cidr_blocks = egress.value.ipv6_cidr_blocks
      prefix_list_ids  = egress.value.prefix_list_ids
      from_port        = egress.value.from_port
      to_port          = egress.value.to_port
      protocol         = egress.value.protocol
      security_groups  = egress.value.security_groups
      description      = egress.value.description
    }
  }

  tags = var.tags

}
