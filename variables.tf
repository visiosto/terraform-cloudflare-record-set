variable "default_ttl" {
  description = "The default TTL for DNS records in seconds."
  type        = number
  default     = 1
}

variable "records" {
  description = "A map of DNS records to create."
  type = map(map(object({
    name     = optional(string)
    type     = optional(string)
    content  = string
    ttl      = optional(number)
    proxied  = optional(bool, false)
    priority = optional(number, 0)
  })))
}
