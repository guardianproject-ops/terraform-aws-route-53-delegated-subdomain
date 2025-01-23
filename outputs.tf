output "zone_id" {
  description = "The Route 53 zone ID of the subdomain hosted zone"
  value       = aws_route53_zone.subdomain.zone_id
}

output "domain" {
  description = "Full name of the subdomain (subdomain + root domain). Example: foobar.example.com"
  value       = aws_route53_zone.subdomain.name
}
