resource "newrelic_nrql_alert_condition" "nrql_alert_conditions" {
  for_each = var.nrql_alert_conditions

  name                           = each.value.name
  policy_id                      = each.value.policy_id
  account_id                     = each.value.account_id
  aggregation_delay              = each.value.aggregation_delay
  aggregation_method             = each.value.aggregation_method
  aggregation_timer              = each.value.aggregation_timer
  aggregation_window             = each.value.aggregation_window
  baseline_direction             = each.value.baseline_direction
  close_violations_on_expiration = each.value.close_violations_on_expiration
  description                    = each.value.description
  enabled                        = each.value.enabled
  evaluation_delay               = each.value.evaluation_delay
  expiration_duration            = each.value.expiration_duration
  fill_option                    = each.value.fill_option
  fill_value                     = each.value.fill_value
  ignore_on_expected_termination = each.value.ignore_on_expected_termination
  open_violation_on_expiration   = each.value.open_violation_on_expiration
  runbook_url                    = each.value.runbook_url
  signal_seasonality             = each.value.signal_seasonality
  slide_by                       = each.value.slide_by
  target_entity                  = each.value.target_entity
  title_template                 = each.value.title_template
  type                           = each.value.type
  violation_time_limit           = each.value.violation_time_limit
  violation_time_limit_seconds   = each.value.violation_time_limit_seconds

  nrql {
    data_account_id   = each.value.nrql.data_account_id
    evaluation_offset = each.value.nrql.evaluation_offset
    query             = each.value.nrql.query
    since_value       = each.value.nrql.since_value
  }

  dynamic "critical" {
    for_each = each.value.critical != null ? [each.value.critical] : []
    content {
      disable_event_creation          = critical.value.disable_event_creation
      disable_health_status_reporting = critical.value.disable_health_status_reporting
      duration                        = critical.value.duration
      operator                        = critical.value.operator
      dynamic "prediction" {
        for_each = critical.value.prediction != null ? [critical.value.prediction] : []
        content {
          predict_by                  = prediction.value.predict_by
          prefer_prediction_violation = prediction.value.prefer_prediction_violation
        }
      }
      threshold             = critical.value.threshold
      threshold_duration    = critical.value.threshold_duration
      threshold_occurrences = critical.value.threshold_occurrences
      time_function         = critical.value.time_function
    }
  }

  dynamic "outlier_configuration" {
    for_each = each.value.outlier_configuration != null ? [each.value.outlier_configuration] : []
    content {
      dbscan {
        epsilon                = outlier_configuration.value.dbscan.epsilon
        evaluation_group_facet = outlier_configuration.value.dbscan.evaluation_group_facet
        minimum_points         = outlier_configuration.value.dbscan.minimum_points
      }
    }
  }

  dynamic "term" {
    for_each = each.value.term != null ? each.value.term : []
    content {
      disable_event_creation          = term.value.disable_event_creation
      disable_health_status_reporting = term.value.disable_health_status_reporting
      duration                        = term.value.duration
      operator                        = term.value.operator
      dynamic "prediction" {
        for_each = term.value.prediction != null ? [term.value.prediction] : []
        content {
          predict_by                  = prediction.value.predict_by
          prefer_prediction_violation = prediction.value.prefer_prediction_violation
        }
      }
      priority              = term.value.priority
      threshold             = term.value.threshold
      threshold_duration    = term.value.threshold_duration
      threshold_occurrences = term.value.threshold_occurrences
      time_function         = term.value.time_function
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }

  dynamic "warning" {
    for_each = each.value.warning != null ? [each.value.warning] : []
    content {
      disable_event_creation          = warning.value.disable_event_creation
      disable_health_status_reporting = warning.value.disable_health_status_reporting
      duration                        = warning.value.duration
      operator                        = warning.value.operator
      dynamic "prediction" {
        for_each = warning.value.prediction != null ? [warning.value.prediction] : []
        content {
          predict_by                  = prediction.value.predict_by
          prefer_prediction_violation = prediction.value.prefer_prediction_violation
        }
      }
      threshold             = warning.value.threshold
      threshold_duration    = warning.value.threshold_duration
      threshold_occurrences = warning.value.threshold_occurrences
      time_function         = warning.value.time_function
    }
  }
}

