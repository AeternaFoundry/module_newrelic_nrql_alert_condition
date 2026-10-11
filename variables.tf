variable "nrql_alert_conditions" {
  description = <<EOT
Map of nrql_alert_conditions, attributes below
Required:
    - name
    - policy_id
    - nrql (block):
        - data_account_id (optional)
        - evaluation_offset (optional)
        - query (required)
        - since_value (optional)
Optional:
    - account_id
    - aggregation_delay
    - aggregation_method
    - aggregation_timer
    - aggregation_window
    - baseline_direction
    - close_violations_on_expiration
    - description
    - enabled
    - evaluation_delay
    - expiration_duration
    - fill_option
    - fill_value
    - ignore_on_expected_termination
    - open_violation_on_expiration
    - runbook_url
    - signal_seasonality
    - slide_by
    - target_entity
    - title_template
    - type
    - violation_time_limit
    - violation_time_limit_seconds
    - critical (block):
        - disable_event_creation (optional)
        - disable_health_status_reporting (optional)
        - duration (optional)
        - operator (optional)
        - prediction (optional, block):
            - predict_by (optional)
            - prefer_prediction_violation (optional)
        - threshold (required)
        - threshold_duration (optional)
        - threshold_occurrences (optional)
        - time_function (optional)
    - outlier_configuration (block):
        - dbscan (required, block):
            - epsilon (required)
            - evaluation_group_facet (optional)
            - minimum_points (required)
    - term (block):
        - disable_event_creation (optional)
        - disable_health_status_reporting (optional)
        - duration (optional)
        - operator (optional)
        - prediction (optional, block):
            - predict_by (optional)
            - prefer_prediction_violation (optional)
        - priority (optional)
        - threshold (required)
        - threshold_duration (optional)
        - threshold_occurrences (optional)
        - time_function (optional)
    - timeouts (block):
        - create (optional)
    - warning (block):
        - disable_event_creation (optional)
        - disable_health_status_reporting (optional)
        - duration (optional)
        - operator (optional)
        - prediction (optional, block):
            - predict_by (optional)
            - prefer_prediction_violation (optional)
        - threshold (required)
        - threshold_duration (optional)
        - threshold_occurrences (optional)
        - time_function (optional)
EOT

  type = map(object({
    name                           = string
    policy_id                      = number
    account_id                     = optional(number)
    aggregation_delay              = optional(string)
    aggregation_method             = optional(string)
    aggregation_timer              = optional(string)
    aggregation_window             = optional(number)
    baseline_direction             = optional(string)
    close_violations_on_expiration = optional(bool)
    description                    = optional(string)
    enabled                        = optional(bool)
    evaluation_delay               = optional(number)
    expiration_duration            = optional(number)
    fill_option                    = optional(string)
    fill_value                     = optional(number)
    ignore_on_expected_termination = optional(bool)
    open_violation_on_expiration   = optional(bool)
    runbook_url                    = optional(string)
    signal_seasonality             = optional(string)
    slide_by                       = optional(number)
    target_entity                  = optional(string)
    title_template                 = optional(string)
    type                           = optional(string)
    violation_time_limit           = optional(string)
    violation_time_limit_seconds   = optional(number)
    nrql = object({
      data_account_id   = optional(number)
      evaluation_offset = optional(number)
      query             = string
      since_value       = optional(string)
    })
    critical = optional(object({
      disable_event_creation          = optional(bool)
      disable_health_status_reporting = optional(bool)
      duration                        = optional(number)
      operator                        = optional(string)
      prediction = optional(object({
        predict_by                  = optional(number)
        prefer_prediction_violation = optional(bool)
      }))
      threshold             = number
      threshold_duration    = optional(number)
      threshold_occurrences = optional(string)
      time_function         = optional(string)
    }))
    outlier_configuration = optional(object({
      dbscan = object({
        epsilon                = number
        evaluation_group_facet = optional(string)
        minimum_points         = number
      })
    }))
    term = optional(list(object({
      disable_event_creation          = optional(bool)
      disable_health_status_reporting = optional(bool)
      duration                        = optional(number)
      operator                        = optional(string)
      prediction = optional(object({
        predict_by                  = optional(number)
        prefer_prediction_violation = optional(bool)
      }))
      priority              = optional(string)
      threshold             = number
      threshold_duration    = optional(number)
      threshold_occurrences = optional(string)
      time_function         = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
    }))
    warning = optional(object({
      disable_event_creation          = optional(bool)
      disable_health_status_reporting = optional(bool)
      duration                        = optional(number)
      operator                        = optional(string)
      prediction = optional(object({
        predict_by                  = optional(number)
        prefer_prediction_violation = optional(bool)
      }))
      threshold             = number
      threshold_duration    = optional(number)
      threshold_occurrences = optional(string)
      time_function         = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.term == null || (length(v.term) <= 2)
      )
    ])
    error_message = "Each term list must contain at most 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.type == null || (contains(["static", "baseline", "outlier"], v.type))
      )
    ])
    error_message = "must be one of: \"static\", \"baseline\", \"outlier\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.critical == null || (v.critical.duration == null || (v.critical.duration >= 1 && v.critical.duration <= 120))
      )
    ])
    error_message = "must be between 1 and 120"
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.critical == null || (v.critical.operator == null || (contains([for v in ["above", "above_or_equals", "below", "below_or_equals", "equals", "not_equals"] : lower(v)], lower(v.critical.operator))))
      )
    ])
    error_message = "must be one of: \"above\", \"above_or_equals\", \"below\", \"below_or_equals\", \"equals\", \"not_equals\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.critical == null || (v.critical.time_function == null || (contains(["all", "any"], v.critical.time_function)))
      )
    ])
    error_message = "must be one of: \"all\", \"any\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.critical == null || (v.critical.threshold_occurrences == null || (contains([for v in ["ALL", "AT_LEAST_ONCE"] : lower(v)], lower(v.critical.threshold_occurrences))))
      )
    ])
    error_message = "must be one of: \"ALL\", \"AT_LEAST_ONCE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.warning == null || (v.warning.duration == null || (v.warning.duration >= 1 && v.warning.duration <= 120))
      )
    ])
    error_message = "must be between 1 and 120"
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.warning == null || (v.warning.operator == null || (contains([for v in ["above", "above_or_equals", "below", "below_or_equals", "equals", "not_equals"] : lower(v)], lower(v.warning.operator))))
      )
    ])
    error_message = "must be one of: \"above\", \"above_or_equals\", \"below\", \"below_or_equals\", \"equals\", \"not_equals\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.warning == null || (v.warning.time_function == null || (contains(["all", "any"], v.warning.time_function)))
      )
    ])
    error_message = "must be one of: \"all\", \"any\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.warning == null || (v.warning.threshold_occurrences == null || (contains([for v in ["ALL", "AT_LEAST_ONCE"] : lower(v)], lower(v.warning.threshold_occurrences))))
      )
    ])
    error_message = "must be one of: \"ALL\", \"AT_LEAST_ONCE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.violation_time_limit == null || (contains([for v in ["ONE_HOUR", "TWO_HOURS", "FOUR_HOURS", "EIGHT_HOURS", "TWELVE_HOURS", "TWENTY_FOUR_HOURS", "THIRTY_DAYS"] : lower(v)], lower(v.violation_time_limit)))
      )
    ])
    error_message = "must be one of: \"ONE_HOUR\", \"TWO_HOURS\", \"FOUR_HOURS\", \"EIGHT_HOURS\", \"TWELVE_HOURS\", \"TWENTY_FOUR_HOURS\", \"THIRTY_DAYS\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.expiration_duration == null || (v.expiration_duration >= 30 && v.expiration_duration <= 172800)
      )
    ])
    error_message = "must be between 30 and 172800"
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.fill_option == null || (contains([for v in ["NONE", "LAST_VALUE", "STATIC"] : lower(v)], lower(v.fill_option)))
      )
    ])
    error_message = "must be one of: \"NONE\", \"LAST_VALUE\", \"STATIC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.aggregation_method == null || (contains([for v in ["CADENCE", "EVENT_FLOW", "EVENT_TIMER"] : lower(v)], lower(v.aggregation_method)))
      )
    ])
    error_message = "must be one of: \"CADENCE\", \"EVENT_FLOW\", \"EVENT_TIMER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.baseline_direction == null || (contains([for v in ["LOWER_ONLY", "UPPER_AND_LOWER", "UPPER_ONLY"] : lower(v)], lower(v.baseline_direction)))
      )
    ])
    error_message = "must be one of: \"LOWER_ONLY\", \"UPPER_AND_LOWER\", \"UPPER_ONLY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.outlier_configuration == null || (v.outlier_configuration.dbscan.epsilon >= 0.0000001)
      )
    ])
    error_message = "must be at least 0.0000001"
  }
  validation {
    condition = alltrue([
      for k, v in var.nrql_alert_conditions : (
        v.outlier_configuration == null || (v.outlier_configuration.dbscan.minimum_points >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

