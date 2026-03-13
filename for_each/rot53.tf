resource "aws_route53_record" "www" {
  for_each = aws_instance.ec2
  zone_id = var.zone_id
  # inetrpolation  = mixing a varialble and extra char
  name    =  "${each.key}.${var.domain_name}"  # mongodb.devocops.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}



# record for roboshop.devops.online

resource "aws_route53_record" "www" {
  for_each = aws_instance.ec2
  zone_id = var.zone_id
  # inetrpolation  = mixing a varialble and extra char
  name    =  "roboshop.${var.domain_name}"  # roboshop.devocops.online
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.ec2, "frontend").public_ip]
  allow_overwrite = true
}
