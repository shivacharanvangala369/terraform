### with map

# variable "instances" {
#     type = map
#     default = {
#         mongodb = "t3.micro"
#         mysql = "t3.small"
#         cart = "t3.micro"
#         shipping = "t3.micro"
#     }
  
# }


### with set this should be converted in to set

variable "instances" {
    type = list
    default = [" mongodb", "catalogue"]

  
}


variable "zone_id" {
    default = "Z10145393TKZKPDMJT8U0"
}


variable "domain_name" {
    default = "devcops.online"
}