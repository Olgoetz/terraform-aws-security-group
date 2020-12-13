provider "aws" {

  region = "eu-central-1"
}



module "sample-sg" {
  source      = "../"
  name        = "myFirstSG"
  description = "Allow access on postgresql"

  ingress = var.ingress_rules
  egress  = var.egress_rules

  tags = {
    "foo" = "bar"
  }

}


