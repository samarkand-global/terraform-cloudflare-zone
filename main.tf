resource "cloudflare_zone" "this" {
  zone       = var.zone.zone
  paused     = var.zone.paused
  jump_start = var.zone.jump_start
  plan       = var.zone.plan
  type       = var.zone.type
}

resource "cloudflare_zone_settings_override" "this" {
  count = var.zone_settings_override != null ? 1 : 0

  zone_id = cloudflare_zone.this.id

  settings {
    brotli              = var.zone_settings_override.brotli
    ciphers             = var.zone_settings_override.ciphers
    early_hints         = var.zone_settings_override.early_hints
    email_obfuscation   = var.zone_settings_override.email_obfuscation
    hotlink_protection  = var.zone_settings_override.hotlink_protection
    http3               = var.zone_settings_override.http3
    min_tls_version     = var.zone_settings_override.min_tls_version
    server_side_exclude = var.zone_settings_override.server_side_exclude
    zero_rtt            = var.zone_settings_override.zero_rtt
  }
}
