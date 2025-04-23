locals {
  flat_records = merge([
    for zone_name, zone_map in var.records : {
      for rec_key, rec in zone_map :
      "${zone_name}:${rec_key}" => {
        name      = rec.name == null ? split(":", rec_key)[1] : rec.name
        type      = rec.type == null ? split(":", rec_key)[0] : rec.type
        content   = rec.content
        ttl       = coalesce(rec.ttl, var.default_ttl)
        proxied   = rec.proxied
        priority  = rec.priority
        zone_name = zone_name
      }
    }
  ]...)
}

module "record" {
  source = "github.com/visiosto/terraform-cloudflare-record?ref=v0.3.4"

  for_each = local.flat_records

  content   = each.value.content
  name      = each.value.name
  ttl       = each.value.ttl
  priority  = each.value.priority
  proxied   = each.value.proxied
  type      = each.value.type
  zone_name = each.value.zone_name
}
