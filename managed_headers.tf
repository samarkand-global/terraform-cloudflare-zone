resource "cloudflare_managed_headers" "this" {
  count = (length(var.managed_request_headers) > 0 || length(var.managed_response_headers) > 0) ? 1 : 0

  zone_id = cloudflare_zone.this.id

  dynamic "managed_request_headers" {
    for_each = var.managed_request_headers

    content {
      id      = managed_request_headers.value.id
      enabled = managed_request_headers.value.enabled
    }
  }

  dynamic "managed_response_headers" {
    for_each = var.managed_response_headers

    content {
      id      = managed_response_headers.value.id
      enabled = managed_response_headers.value.enabled
    }
  }
}
