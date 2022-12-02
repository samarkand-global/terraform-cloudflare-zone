variable "zone" {
  type = object({
    zone       = string
    paused     = optional(bool)
    jump_start = optional(bool)
    plan       = optional(string)
    type       = optional(string)
  })
}

variable "zone_settings_override" {
  type = object({
    brotli              = optional(string)
    ciphers             = optional(list(string))
    early_hints         = optional(string)
    email_obfuscation   = optional(string)
    hotlink_protection  = optional(string)
    http3               = optional(string)
    min_tls_version     = optional(string)
    mirage              = optional(string)
    rocket_loader       = optional(string)
    server_side_exclude = optional(string)
    zero_rtt            = optional(string)
  })
  default = null
}

variable "worker_routes" {
  type    = map(string)
  default = {}
}

variable "page_rules" {
  type = map(object({
    cache_level = optional(string)
    priority    = optional(number)
    status      = optional(string)
    actions = object({
      always_use_https = optional(bool)
      cache_level      = optional(string)
    })
  }))
  default = {}
}

variable "rulesets" {
  type = map(object({
    description = optional(string)
    phase       = string
    rules = set(object({
      enabled     = optional(bool, true)
      description = string
      expression  = string
      action      = optional(string)
      action_parameters = optional(object({
        headers = optional(set(object({
          name      = string
          operation = string
          value     = string
        })))
      }))
    }))
  }))
  default = {}
}

variable "managed_request_headers" {
  type = set(object({
    id      = string
    enabled = bool
  }))
}

variable "managed_response_headers" {
  type = set(object({
    id      = string
    enabled = bool
  }))
}
