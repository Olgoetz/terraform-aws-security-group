provider "aws" {

  region = "eu-central-1"
}



module "iteration-sg" {
  source      = "../../"
  for_each    = var.security_groups
  name        = each.key
  description = each.value.description

  ingress = each.value.ingress_rules
  egress  = each.value.egress_rules

  tags = {
    "Name" = each.key
  }

}


module "with-sg-id" {
  source      = "../../"
  name        = "With-sg-id"
  description = "Example with id"

  ingress = [{
    "cidr_blocks"      = null
    "ipv6_cidr_blocks" = null
    "prefix_list_ids"  = null
    "from_port"        = 0
    "to_port"          = 0
    "protocol"         = -1
    "security_groups"  = [module.iteration-sg["databases"].this_sg_id]
    "description"      = "Allow something"
  }]
  egress = [
    {
      "cidr_blocks"      = ["0.0.0.0/0"]
      "ipv6_cidr_blocks" = null
      "prefix_list_ids"  = null
      "from_port"        = 0
      "to_port"          = 0
      "protocol"         = -1
      "security_groups"  = null
      "description"      = "Allow something"
    }
  ]

  tags = {
    "Name" = "with-sg-id"
  }

}


