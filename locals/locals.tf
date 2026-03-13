locals {
  instance_name = "${var.name}-${var.Environmnet}"
  instance_type = "t3.micro"
}


locals {
  instance_ami = data.aws_ami.roboshop
}