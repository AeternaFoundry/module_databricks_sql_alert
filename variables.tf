variable "sql_alerts" {
  description = <<EOT
Map of sql_alerts, attributes below
Required:
    - name
    - query_id
    - options (block):
        - column (required)
        - custom_body (optional)
        - custom_subject (optional)
        - empty_result_state (optional)
        - muted (optional)
        - op (required)
        - value (required)
Optional:
    - created_at
    - parent
    - rearm
    - updated_at
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name       = string
    query_id   = string
    created_at = optional(string)
    parent     = optional(string)
    rearm      = optional(number)
    updated_at = optional(string)
    options = object({
      column             = string
      custom_body        = optional(string)
      custom_subject     = optional(string)
      empty_result_state = optional(string)
      muted              = optional(bool)
      op                 = string
      value              = string
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

