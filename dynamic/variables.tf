variable "instances" {
    type = list
    default = [" mongodb", "catalogue", "redis", "user", "cart","mysql", "shipping", "rabbitmq", "payment", "frontend"]

  
}


variable "zone_id" {
    default = "Z10145393TKZKPDMJT8U0"
}


variable "domain_name" {
    default = "devcops.online"
}


variable "ingress" {
    default = [
        {
            port = 22
            cidr_blocks    = ["0.0.0.0/0"]
            description    =  "alllowing port numner 22 from instances"

        },
                {
            port = 443
            cidr_blocks    = ["0.0.0.0/0"]
            description    =  "alllowing port numner 443 from instances"

        },
                {
            port = 3306
            cidr_blocks    = ["0.0.0.0/0"]
            description    =  "alllowing port numner 3306 from instances"

        }
    ]
}