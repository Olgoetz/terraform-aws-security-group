output "security_groups" {
  value = { for sg in sort(keys(var.security_groups)) : sg => { name = module.iteration-sg[sg].this_sg_name,
    id = module.iteration-sg[sg].this_sg_id,
    arn = module.iteration-sg[sg].this_sg_arn }
  }
  description = "All SG names, IDs and ARNs."
}


/*

This output value will look like this:

Outputs:

security_groups = {
  "databases" = {
    "arn" = "arn:aws:ec2:eu-central-1:<yourAccountId>:security-group/sg-040d2b08b42384889"
    "id" = "sg-040d2b08b42384889"
    "name" = "databases-zIZ6WA"
  }
}

*/
