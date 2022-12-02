resource "cloudflare_worker_route" "this" {
  for_each = var.worker_routes

  zone_id     = cloudflare_zone.this.id
  pattern     = each.key
  script_name = each.value
}
