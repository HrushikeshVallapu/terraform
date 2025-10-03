resource "aws_route53_record" "www" {
  count = 4
  zone_id = var.hostedzone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}