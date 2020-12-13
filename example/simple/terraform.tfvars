


ingress_rules = [
    {
        "cidr_blocks" = ["176.31.0.0/20"]
        "ipv6_cidr_blocks" = null
        "prefix_list_ids" =null
        "from_port" = 5432
        "to_port" = 5432
        "protocol" = "TCP"
        "security_groups" = null
        "description"= "Allow something"
    },
    {
        "cidr_blocks" = ["176.32.0.0/20"]
        "ipv6_cidr_blocks" = null
        "prefix_list_ids" =null
        "from_port" = 5432
        "to_port" = 5432
        "protocol" = "TCP"
        "security_groups" = null
        "description"= "Allow something"
    }
    # Other rules may follow here
]

egress_rules = [
    {
        "cidr_blocks" = ["0.0.0.0/0"]
        "ipv6_cidr_blocks" = null
        "prefix_list_ids" =null
        "from_port" = 0
        "to_port" = 0
        "protocol" = -1
        "security_groups" = null
        "description"= "Allow something"
    }
]