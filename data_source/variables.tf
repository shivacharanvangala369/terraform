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