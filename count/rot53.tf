resource "aws_route53_record" "www" {
count = 10
  zone_id = var.zone_id
  # inetrpolation  = mixing a varialble and extra char
  name    =  "${var.instances[count.index]}.${var.domain_name}"  # mongodb.devocops.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.ec2[count.index].private_ip]
}


# record for roboshop.devops.online

resource "aws_route53_record" "www" {

  zone_id = var.zone_id
  # inetrpolation  = mixing a varialble and extra char
  name    =  "roboshop.${var.domain_name}"  # roboshop.devocops.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.ec2[index(var.instances, "frontend")].public_ip]
}

