resource "datadog_monitor" "health_events" {
  count   = var.health_events_enabled == "true" ? 1 : 0
  name    = "${var.prefix_slug == "" ? "" : "[${var.prefix_slug}]"}AWS Health event {{#is_alert}}is at 0{{/is_alert}}{{#is_warning}}is at {{value}}%%{{/is_warning}}"
  message = coalesce(var.health_events_message, var.message)
  type    = "event-v2 alert"

  query = "events(\"source:amazon_health status:open event_category:issue\").rollup(\"count\").last(\"5m\") > 0"

  monitor_thresholds {
    critical = 1
  }

  include_tags        = true

  tags = ["env:${var.environment}", "type:cloud", "provider:aws", "resource:health", "created-by:terraform"]
}

