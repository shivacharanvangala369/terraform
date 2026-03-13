variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = true
        Environmnet = "dev"
   }
  
}

variable "ec2_tags" {
    default = {
        Name = "function_demo"
    }
  
}

variable "sg_tags" {
    default = {
        Name = "function_demo"
    }
  
}