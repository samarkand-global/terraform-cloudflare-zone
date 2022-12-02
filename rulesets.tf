resource "cloudflare_ruleset" "this" {
  for_each = var.rulesets

  zone_id     = cloudflare_zone.this.id
  name        = each.key
  description = each.value.description
  kind        = "zone"
  phase       = each.value.phase

  dynamic "rules" {
    for_each = each.value.rules

    content {
      enabled     = rules.value.enabled
      description = rules.value.description
      expression  = rules.value.expression
      action      = rules.value.action
      action_parameters {
        dynamic "headers" {
          for_each = rules.value.action_parameters.headers

          content {
            name      = headers.value.name
            operation = headers.value.operation
            value     = headers.value.value
          }
        }
      }
    }
  }
}
