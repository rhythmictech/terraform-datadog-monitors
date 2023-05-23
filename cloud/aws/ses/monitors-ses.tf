# Monitoring SES bounce rate
resource "datadog_monitor" "SES_bounce_rate" {
  count   = var.bounce_rate_enabled == "true" ? 1 : 0
  name    = "${var.prefix_slug == "" ? "" : "[${var.prefix_slug}]"}[${var.environment}] SES bounce rate {{#is_alert}}{{{comparator}}} {{threshold}}/1 ({{value}}/1){{/is_alert}}"
  message = coalesce(var.bounce_rate_message, var.message)
  type    = "query alert"

  query = <<EOQ
    ${var.bounce_rate_time_aggregator}(${var.bounce_rate_timeframe}):
      avg:aws.ses.reputation_bounce_rate{${var.filter_tags}} by {region}
    > ${var.bounce_rate_threshold_critical}
EOQ

  monitor_thresholds {
    warning  = var.bounce_rate_threshold_warning
    critical = var.bounce_rate_threshold_critical
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  new_group_delay     = var.new_group_delay
  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = var.timeout_h
  include_tags        = true

  tags = concat(["env:${var.environment}", "type:cloud", "provider:aws", "resource:ses", "created-by:terraform"], var.bounce_rate_extra_tags)
}

# Monitoring SES complaint rate
resource "datadog_monitor" "SES_complaint_rate" {
  count   = var.complaint_rate_enabled == "true" ? 1 : 0
  name    = "${var.prefix_slug == "" ? "" : "[${var.prefix_slug}]"}[${var.environment}] SES complaint rate {{#is_alert}}{{{comparator}}} {{threshold}}/1 ({{value}}/1){{/is_alert}}"
  message = coalesce(var.complaint_rate_message, var.message)
  type    = "query alert"

  query = <<EOQ
    ${var.complaint_rate_time_aggregator}(${var.complaint_rate_timeframe}):
      avg:aws.ses.reputation_complaint_rate{${var.filter_tags}} by {region}
    > ${var.complaint_rate_threshold_critical}
EOQ

  monitor_thresholds {
    warning  = var.complaint_rate_threshold_warning
    critical = var.complaint_rate_threshold_critical
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  new_group_delay     = var.new_group_delay
  notify_no_data      = false
  renotify_interval   = 0
  require_full_window = false
  timeout_h           = var.timeout_h
  include_tags        = true

  tags = concat(["env:${var.environment}", "type:cloud", "provider:aws", "resource:ses", "created-by:terraform"], var.complaint_rate_extra_tags)
}


