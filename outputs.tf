output "nrql_alert_conditions_id" {
  description = "Map of id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.id }
}
output "nrql_alert_conditions_account_id" {
  description = "Map of account_id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.account_id }
}
output "nrql_alert_conditions_aggregation_delay" {
  description = "Map of aggregation_delay values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_delay }
}
output "nrql_alert_conditions_aggregation_method" {
  description = "Map of aggregation_method values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_method }
}
output "nrql_alert_conditions_aggregation_timer" {
  description = "Map of aggregation_timer values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_timer }
}
output "nrql_alert_conditions_aggregation_window" {
  description = "Map of aggregation_window values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_window }
}
output "nrql_alert_conditions_baseline_direction" {
  description = "Map of baseline_direction values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.baseline_direction }
}
output "nrql_alert_conditions_close_violations_on_expiration" {
  description = "Map of close_violations_on_expiration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.close_violations_on_expiration }
}
output "nrql_alert_conditions_critical" {
  description = "Map of critical values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.critical) }
}
output "nrql_alert_conditions_description" {
  description = "Map of description values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.description }
}
output "nrql_alert_conditions_enabled" {
  description = "Map of enabled values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.enabled }
}
output "nrql_alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.entity_guid }
}
output "nrql_alert_conditions_evaluation_delay" {
  description = "Map of evaluation_delay values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.evaluation_delay }
}
output "nrql_alert_conditions_expiration_duration" {
  description = "Map of expiration_duration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.expiration_duration }
}
output "nrql_alert_conditions_fill_option" {
  description = "Map of fill_option values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.fill_option }
}
output "nrql_alert_conditions_fill_value" {
  description = "Map of fill_value values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.fill_value }
}
output "nrql_alert_conditions_ignore_on_expected_termination" {
  description = "Map of ignore_on_expected_termination values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.ignore_on_expected_termination }
}
output "nrql_alert_conditions_name" {
  description = "Map of name values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.name }
}
output "nrql_alert_conditions_nrql" {
  description = "Map of nrql values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.nrql) }
}
output "nrql_alert_conditions_open_violation_on_expiration" {
  description = "Map of open_violation_on_expiration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.open_violation_on_expiration }
}
output "nrql_alert_conditions_outlier_configuration" {
  description = "Map of outlier_configuration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.outlier_configuration) }
}
output "nrql_alert_conditions_policy_id" {
  description = "Map of policy_id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.policy_id }
}
output "nrql_alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.runbook_url }
}
output "nrql_alert_conditions_signal_seasonality" {
  description = "Map of signal_seasonality values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.signal_seasonality }
}
output "nrql_alert_conditions_slide_by" {
  description = "Map of slide_by values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.slide_by }
}
output "nrql_alert_conditions_target_entity" {
  description = "Map of target_entity values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.target_entity }
}
output "nrql_alert_conditions_term" {
  description = "Map of term values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.term }
}
output "nrql_alert_conditions_title_template" {
  description = "Map of title_template values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.title_template }
}
output "nrql_alert_conditions_type" {
  description = "Map of type values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.type }
}
output "nrql_alert_conditions_violation_time_limit" {
  description = "Map of violation_time_limit values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.violation_time_limit }
}
output "nrql_alert_conditions_violation_time_limit_seconds" {
  description = "Map of violation_time_limit_seconds values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.violation_time_limit_seconds }
}
output "nrql_alert_conditions_warning" {
  description = "Map of warning values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.warning) }
}

