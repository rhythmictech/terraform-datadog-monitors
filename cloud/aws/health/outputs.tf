output "health_events_id" {
  description = "id for monitor health_events"
  value       = datadog_monitor.health_events.*.id
}