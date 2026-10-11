resource "databricks_sql_alert" "sql_alerts" {
  for_each = var.sql_alerts

  name       = each.value.name
  query_id   = each.value.query_id
  created_at = each.value.created_at
  parent     = each.value.parent
  rearm      = each.value.rearm
  updated_at = each.value.updated_at

  options {
    column             = each.value.options.column
    custom_body        = each.value.options.custom_body
    custom_subject     = each.value.options.custom_subject
    empty_result_state = each.value.options.empty_result_state
    muted              = each.value.options.muted
    op                 = each.value.options.op
    value              = each.value.options.value
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

