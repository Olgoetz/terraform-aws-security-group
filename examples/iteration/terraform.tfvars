

security_groups = {

  databases = {
    description = "Allow access on different database engines"
    ingress_rules = [
      # Allow subnet 1 to access MSSQL
      {
        "cidr_blocks"      = ["176.31.0.0/20"]
        "ipv6_cidr_blocks" = null
        "prefix_list_ids"  = null
        "from_port"        = 1433
        "to_port"          = 1433
        "protocol"         = "TCP"
        "security_groups"  = null
        "description"      = "Allow something"
      },
      # Allow subnet 2 to access MSSQL
      {
        "cidr_blocks"      = ["176.32.0.0/20"]
        "ipv6_cidr_blocks" = null
        "prefix_list_ids"  = null
        "from_port"        = 1433
        "to_port"          = 1433
        "protocol"         = "TCP"
        "security_groups"  = null
        "description"      = "Allow something else"
      }
      # Other rules may follow here
    ]

    egress_rules = [
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


  }



}
