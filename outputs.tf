output "sql_alerts_id" {
  description = "Map of id values across all sql_alerts, keyed the same as var.sql_alerts except keys with no id are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_alerts_created_at" {
  description = "Map of created_at values across all sql_alerts, keyed the same as var.sql_alerts except keys with no created_at are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "sql_alerts_name" {
  description = "Map of name values across all sql_alerts, keyed the same as var.sql_alerts except keys with no name are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_alerts_options" {
  description = "Map of options values across all sql_alerts, keyed the same as var.sql_alerts except keys with no options are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => one(v.options) if v.options != null && length(v.options) > 0 }
}
output "sql_alerts_parent" {
  description = "Map of parent values across all sql_alerts, keyed the same as var.sql_alerts except keys with no parent are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "sql_alerts_provider_config" {
  description = "Map of provider_config values across all sql_alerts, keyed the same as var.sql_alerts except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_alerts_query_id" {
  description = "Map of query_id values across all sql_alerts, keyed the same as var.sql_alerts except keys with no query_id are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.query_id if v.query_id != null && length(v.query_id) > 0 }
}
output "sql_alerts_rearm" {
  description = "Map of rearm values across all sql_alerts, keyed the same as var.sql_alerts except keys with no rearm are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.rearm if v.rearm != null }
}
output "sql_alerts_updated_at" {
  description = "Map of updated_at values across all sql_alerts, keyed the same as var.sql_alerts except keys with no updated_at are omitted"
  value       = { for k, v in databricks_sql_alert.sql_alerts : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

