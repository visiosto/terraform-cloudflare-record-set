variable "default_ttl" {
  description = "The default TTL for DNS records in seconds."
  type        = number
  default     = 1
}

variable "records" {
  description = "A map of DNS records to be created."
  type = map(map(object({
    name     = optional(string)
    type     = optional(string)
    content  = string
    ttl      = optional(number)
    proxied  = optional(bool)
    priority = optional(number)
  })))
}
