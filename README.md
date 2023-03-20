## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 4.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_managed_headers.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/managed_headers) | resource |
| [cloudflare_page_rule.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/page_rule) | resource |
| [cloudflare_ruleset.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/ruleset) | resource |
| [cloudflare_worker_route.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/worker_route) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone) | resource |
| [cloudflare_zone_settings_override.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_settings_override) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managed_request_headers"></a> [managed\_request\_headers](#input\_managed\_request\_headers) | n/a | <pre>set(object({<br>    id      = string<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_managed_response_headers"></a> [managed\_response\_headers](#input\_managed\_response\_headers) | n/a | <pre>set(object({<br>    id      = string<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_page_rules"></a> [page\_rules](#input\_page\_rules) | n/a | <pre>map(object({<br>    cache_level = optional(string)<br>    priority    = optional(number)<br>    status      = optional(string)<br>    actions = object({<br>      always_use_https = optional(bool)<br>      cache_level      = optional(string)<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_rulesets"></a> [rulesets](#input\_rulesets) | n/a | <pre>map(object({<br>    description = optional(string)<br>    phase       = string<br>    rules = set(object({<br>      enabled     = optional(bool, true)<br>      description = string<br>      expression  = string<br>      action      = optional(string)<br>      action_parameters = optional(object({<br>        headers = optional(set(object({<br>          name      = string<br>          operation = string<br>          value     = string<br>        })))<br>      }))<br>    }))<br>  }))</pre> | `{}` | no |
| <a name="input_worker_routes"></a> [worker\_routes](#input\_worker\_routes) | n/a | `map(string)` | `{}` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | <pre>object({<br>    zone       = string<br>    paused     = optional(bool)<br>    jump_start = optional(bool)<br>    plan       = optional(string)<br>    type       = optional(string)<br>  })</pre> | n/a | yes |
| <a name="input_zone_settings_override"></a> [zone\_settings\_override](#input\_zone\_settings\_override) | n/a | <pre>object({<br>    brotli              = optional(string)<br>    ciphers             = optional(list(string))<br>    early_hints         = optional(string)<br>    email_obfuscation   = optional(string)<br>    hotlink_protection  = optional(string)<br>    http3               = optional(string)<br>    min_tls_version     = optional(string)<br>    mirage              = optional(string)<br>    rocket_loader       = optional(string)<br>    server_side_exclude = optional(string)<br>    zero_rtt            = optional(string)<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | n/a |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 4.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_managed_headers.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/managed_headers) | resource |
| [cloudflare_page_rule.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/page_rule) | resource |
| [cloudflare_ruleset.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/ruleset) | resource |
| [cloudflare_worker_route.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/worker_route) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone) | resource |
| [cloudflare_zone_settings_override.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/zone_settings_override) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managed_request_headers"></a> [managed\_request\_headers](#input\_managed\_request\_headers) | n/a | <pre>set(object({<br>    id      = string<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_managed_response_headers"></a> [managed\_response\_headers](#input\_managed\_response\_headers) | n/a | <pre>set(object({<br>    id      = string<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_page_rules"></a> [page\_rules](#input\_page\_rules) | n/a | <pre>map(object({<br>    cache_level = optional(string)<br>    priority    = optional(number)<br>    status      = optional(string)<br>    actions = object({<br>      always_use_https = optional(bool)<br>      cache_level      = optional(string)<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_rulesets"></a> [rulesets](#input\_rulesets) | n/a | <pre>map(object({<br>    description = optional(string)<br>    phase       = string<br>    rules = set(object({<br>      enabled     = optional(bool, true)<br>      description = string<br>      expression  = string<br>      action      = optional(string)<br>      action_parameters = optional(object({<br>        headers = optional(set(object({<br>          name      = string<br>          operation = string<br>          value     = string<br>        })))<br>      }))<br>    }))<br>  }))</pre> | `{}` | no |
| <a name="input_worker_routes"></a> [worker\_routes](#input\_worker\_routes) | n/a | `map(string)` | `{}` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | <pre>object({<br>    account_id = string<br>    zone       = string<br>    paused     = optional(bool)<br>    jump_start = optional(bool)<br>    plan       = optional(string)<br>    type       = optional(string)<br>  })</pre> | n/a | yes |
| <a name="input_zone_settings_override"></a> [zone\_settings\_override](#input\_zone\_settings\_override) | n/a | <pre>object({<br>    brotli              = optional(string)<br>    ciphers             = optional(list(string))<br>    early_hints         = optional(string)<br>    email_obfuscation   = optional(string)<br>    hotlink_protection  = optional(string)<br>    http3               = optional(string)<br>    min_tls_version     = optional(string)<br>    mirage              = optional(string)<br>    rocket_loader       = optional(string)<br>    server_side_exclude = optional(string)<br>    zero_rtt            = optional(string)<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | n/a |
<!-- END_TF_DOCS -->