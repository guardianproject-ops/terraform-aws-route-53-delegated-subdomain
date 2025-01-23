data "aws_route53_zone" "root" {
  provider = aws.root_domain_account

  name = var.root_domain
}

resource "aws_route53_zone" "subdomain" {
  provider = aws.subdomain_account

  name = "${var.subdomain}.${data.aws_route53_zone.root.name}"
  tags = module.this.tags
}

resource "aws_route53_record" "ns" {
  provider = aws.root_domain_account

  zone_id = data.aws_route53_zone.root.zone_id
  name    = aws_route53_zone.subdomain.name
  records = aws_route53_zone.subdomain.name_servers
  ttl     = var.ttl
  type    = "NS"
}
