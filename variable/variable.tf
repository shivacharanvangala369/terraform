variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL 9 Image"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "variable_demo"
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"
    }
  
}

variable "sg_name" {
    default = "allow-all-terraform"
    type = string
}

variable "sg_description" {
    default = "Allow TLS inbound traffic and all outbound traffic"
    type = string
}

variable "sg_from_port" {
    default = 0
    type = number
}

variable "sg_cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list
}

variable "sg_to_port" {
    default = 0
    type = number
}

variable "sg_tags" {
    default = {
      Name = "allow_all-terraform"
      Project = "Roboshop"
      Terraform = "true"
      Environment = "dev"
    }
    type = map
}