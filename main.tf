locals {
  flat_records = merge([
    for zone_name, zone_map in var.records : {
      for rec_key, rec in zone_map :
      "${zone_name}:${rec_key}" => {
        name      = lookup(rec, "name", null) != null ? lookup(rec, "name", null) : split(":", rec_key)[1]
        type      = lookup(rec, "type", null) != null ? lookup(rec, "type", null) : split(":", rec_key)[0]
        content   = rec.content
        ttl       = lookup(rec, "ttl", null) != null ? lookup(rec, "ttl", null) : var.default_ttl
        proxied   = lookup(rec, "proxied", null)
        priority  = lookup(rec, "priority", null)
        zone_name = zone_name
      }
    }
  ]...)
}

module "record" {
  source = "github.com/visiosto/terraform-cloudflare-record?ref=v0.3.3"

  for_each = local.flat_records

  content   = each.value.content
  name      = each.value.name
  ttl       = each.value.ttl
  proxied   = each.value.proxied
  type      = each.value.type
  zone_name = each.value.zone_name
}

output "created" {
  value = local.flat_records
}
