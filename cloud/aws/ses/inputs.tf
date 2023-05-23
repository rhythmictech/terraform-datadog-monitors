variable "environment" {
  description = "Environment"
  type        = string
}

variable "filter_tags" {
  description = "Tags used for filtering"
  default     = "*"
}

variable "message" {
  description = "Message sent when a monitor is triggered"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "new_group_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "timeout_h" {
  description = "Default auto-resolving state (in hours)"
  default     = 0
}

variable "prefix_slug" {
  description = "Prefix string to prepend between brackets on every monitors names"
  default     = ""
}

variable "notify_no_data" {
  description = "Will raise no data alert if set to true"
  default     = true
}

###################################
###   BOUNCE RATE VARIABLES   ###
###################################

variable "bounce_rate_enabled" {
  description = "Flag to enable SES bounce rate monitor"
  type        = string
  default     = "true"
}

variable "bounce_rate_extra_tags" {
  description = "Extra tags for SES bounce rate monitor"
  type        = list(string)
  default     = []
}

variable "bounce_rate_message" {
  description = "Custom message for SES bounce rate monitor"
  type        = string
  default     = ""
}

variable "bounce_rate_time_aggregator" {
  description = "Monitor aggregator for SES bounce rate [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "bounce_rate_timeframe" {
  description = "Monitor timeframe for SES bounce rate [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "bounce_rate_threshold_critical" {
  default     = 0.3
  description = "Alerting threshold in percentage"
}

variable "bounce_rate_threshold_warning" {
  default     = 0.2
  description = "Warning threshold in percentage"
}

###################################
###   COMPLAINT RATE VARIABLES   ###
###################################

variable "complaint_rate_enabled" {
  description = "Flag to enable SES complaint rate monitor"
  type        = string
  default     = "true"
}

variable "complaint_rate_extra_tags" {
  description = "Extra tags for SES complaint rate monitor"
  type        = list(string)
  default     = []
}

variable "complaint_rate_message" {
  description = "Custom message for SES complaint rate monitor"
  type        = string
  default     = ""
}

variable "complaint_rate_time_aggregator" {
  description = "Monitor aggregator for SES complaint rate [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "complaint_rate_timeframe" {
  description = "Monitor timeframe for SES complaint rate [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "complaint_rate_threshold_critical" {
  default     = 0.3
  description = "Alerting threshold in percentage"
}

variable "complaint_rate_threshold_warning" {
  default     = 0.2
  description = "Warning threshold in percentage"
}