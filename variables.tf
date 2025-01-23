######################
# REQUIRED VARIABLES #
######################

variable "root_domain" {
  type        = string
  description = "The root domain to create the subdomain under. Example: example.com"
}

variable "subdomain" {
  type        = string
  description = "The subdomain to create. Example: foobar"
}


######################
# OPTIONAL VARIABLES #
######################

variable "ttl" {
  description = "The TTL of the NS record."
  type        = number
  default     = 3600
}
