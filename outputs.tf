output "nrql_alert_conditions_id" {
  description = "Map of id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no id are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nrql_alert_conditions_account_id" {
  description = "Map of account_id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no account_id are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.account_id if v.account_id != null }
}
output "nrql_alert_conditions_aggregation_delay" {
  description = "Map of aggregation_delay values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no aggregation_delay are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_delay if v.aggregation_delay != null && length(v.aggregation_delay) > 0 }
}
output "nrql_alert_conditions_aggregation_method" {
  description = "Map of aggregation_method values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no aggregation_method are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_method if v.aggregation_method != null && length(v.aggregation_method) > 0 }
}
output "nrql_alert_conditions_aggregation_timer" {
  description = "Map of aggregation_timer values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no aggregation_timer are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_timer if v.aggregation_timer != null && length(v.aggregation_timer) > 0 }
}
output "nrql_alert_conditions_aggregation_window" {
  description = "Map of aggregation_window values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no aggregation_window are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.aggregation_window if v.aggregation_window != null }
}
output "nrql_alert_conditions_baseline_direction" {
  description = "Map of baseline_direction values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no baseline_direction are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.baseline_direction if v.baseline_direction != null && length(v.baseline_direction) > 0 }
}
output "nrql_alert_conditions_close_violations_on_expiration" {
  description = "Map of close_violations_on_expiration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no close_violations_on_expiration are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.close_violations_on_expiration if v.close_violations_on_expiration != null }
}
output "nrql_alert_conditions_critical" {
  description = "Map of critical values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no critical are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.critical) if v.critical != null && length(v.critical) > 0 }
}
output "nrql_alert_conditions_description" {
  description = "Map of description values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no description are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "nrql_alert_conditions_enabled" {
  description = "Map of enabled values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no enabled are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.enabled if v.enabled != null }
}
output "nrql_alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no entity_guid are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.entity_guid if v.entity_guid != null && length(v.entity_guid) > 0 }
}
output "nrql_alert_conditions_evaluation_delay" {
  description = "Map of evaluation_delay values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no evaluation_delay are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.evaluation_delay if v.evaluation_delay != null }
}
output "nrql_alert_conditions_expiration_duration" {
  description = "Map of expiration_duration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no expiration_duration are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.expiration_duration if v.expiration_duration != null }
}
output "nrql_alert_conditions_fill_option" {
  description = "Map of fill_option values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no fill_option are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.fill_option if v.fill_option != null && length(v.fill_option) > 0 }
}
output "nrql_alert_conditions_fill_value" {
  description = "Map of fill_value values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no fill_value are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.fill_value if v.fill_value != null }
}
output "nrql_alert_conditions_ignore_on_expected_termination" {
  description = "Map of ignore_on_expected_termination values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no ignore_on_expected_termination are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.ignore_on_expected_termination if v.ignore_on_expected_termination != null }
}
output "nrql_alert_conditions_name" {
  description = "Map of name values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no name are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nrql_alert_conditions_nrql" {
  description = "Map of nrql values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no nrql are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.nrql) if v.nrql != null && length(v.nrql) > 0 }
}
output "nrql_alert_conditions_open_violation_on_expiration" {
  description = "Map of open_violation_on_expiration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no open_violation_on_expiration are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.open_violation_on_expiration if v.open_violation_on_expiration != null }
}
output "nrql_alert_conditions_outlier_configuration" {
  description = "Map of outlier_configuration values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no outlier_configuration are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.outlier_configuration) if v.outlier_configuration != null && length(v.outlier_configuration) > 0 }
}
output "nrql_alert_conditions_policy_id" {
  description = "Map of policy_id values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no policy_id are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.policy_id if v.policy_id != null }
}
output "nrql_alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no runbook_url are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.runbook_url if v.runbook_url != null && length(v.runbook_url) > 0 }
}
output "nrql_alert_conditions_signal_seasonality" {
  description = "Map of signal_seasonality values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no signal_seasonality are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.signal_seasonality if v.signal_seasonality != null && length(v.signal_seasonality) > 0 }
}
output "nrql_alert_conditions_slide_by" {
  description = "Map of slide_by values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no slide_by are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.slide_by if v.slide_by != null }
}
output "nrql_alert_conditions_target_entity" {
  description = "Map of target_entity values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no target_entity are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.target_entity if v.target_entity != null && length(v.target_entity) > 0 }
}
output "nrql_alert_conditions_term" {
  description = "Map of term values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no term are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.term if v.term != null && length(v.term) > 0 }
}
output "nrql_alert_conditions_title_template" {
  description = "Map of title_template values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no title_template are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.title_template if v.title_template != null && length(v.title_template) > 0 }
}
output "nrql_alert_conditions_type" {
  description = "Map of type values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no type are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.type if v.type != null && length(v.type) > 0 }
}
output "nrql_alert_conditions_violation_time_limit" {
  description = "Map of violation_time_limit values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no violation_time_limit are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.violation_time_limit if v.violation_time_limit != null && length(v.violation_time_limit) > 0 }
}
output "nrql_alert_conditions_violation_time_limit_seconds" {
  description = "Map of violation_time_limit_seconds values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no violation_time_limit_seconds are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => v.violation_time_limit_seconds if v.violation_time_limit_seconds != null }
}
output "nrql_alert_conditions_warning" {
  description = "Map of warning values across all nrql_alert_conditions, keyed the same as var.nrql_alert_conditions except keys with no warning are omitted"
  value       = { for k, v in newrelic_nrql_alert_condition.nrql_alert_conditions : k => one(v.warning) if v.warning != null && length(v.warning) > 0 }
}

