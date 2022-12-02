resource "cloudflare_page_rule" "this" {
  for_each = var.page_rules

  zone_id  = cloudflare_zone.this.id
  target   = each.key
  priority = each.value.priority
  status   = each.value.status

  actions {
    always_use_https = each.value.actions.always_use_https
    cache_level      = each.value.actions.cache_level
  }
}
