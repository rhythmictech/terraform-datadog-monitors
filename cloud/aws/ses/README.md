# CLOUD AWS SES DataDog monitors

## How to use this module

```hcl
module "datadog-monitors-cloud-aws-ses" {
  source      = "rhythmictech/monitors/datadog//cloud/aws/ses"
  version     = "{revision}"

  environment = var.environment
  message     = module.datadog-message-alerting.alerting-message
}

```

## Purpose

Creates DataDog monitors with the following checks:

- SES bounce rate
- SES complaint rate

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.31 |
| <a name="requirement_datadog"></a> [datadog](#requirement\_datadog) | >= 3.1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | >= 3.1.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.SES_bounce_rate](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.SES_complaint_rate](https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bounce_rate_enabled"></a> [bounce\_rate\_enabled](#input\_bounce\_rate\_enabled) | Flag to enable SES bounce rate monitor | `string` | `"true"` | no |
| <a name="input_bounce_rate_extra_tags"></a> [bounce\_rate\_extra\_tags](#input\_bounce\_rate\_extra\_tags) | Extra tags for SES bounce rate monitor | `list(string)` | `[]` | no |
| <a name="input_bounce_rate_message"></a> [bounce\_rate\_message](#input\_bounce\_rate\_message) | Custom message for SES bounce rate monitor | `string` | `""` | no |
| <a name="input_bounce_rate_threshold_critical"></a> [bounce\_rate\_threshold\_critical](#input\_bounce\_rate\_threshold\_critical) | Alerting threshold in percentage | `number` | `0.3` | no |
| <a name="input_bounce_rate_threshold_warning"></a> [bounce\_rate\_threshold\_warning](#input\_bounce\_rate\_threshold\_warning) | Warning threshold in percentage | `number` | `0.2` | no |
| <a name="input_bounce_rate_time_aggregator"></a> [bounce\_rate\_time\_aggregator](#input\_bounce\_rate\_time\_aggregator) | Monitor aggregator for SES bounce rate [available values: min, max or avg] | `string` | `"avg"` | no |
| <a name="input_bounce_rate_timeframe"></a> [bounce\_rate\_timeframe](#input\_bounce\_rate\_timeframe) | Monitor timeframe for SES bounce rate [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_complaint_rate_enabled"></a> [complaint\_rate\_enabled](#input\_complaint\_rate\_enabled) | Flag to enable SES complaint rate monitor | `string` | `"true"` | no |
| <a name="input_complaint_rate_extra_tags"></a> [complaint\_rate\_extra\_tags](#input\_complaint\_rate\_extra\_tags) | Extra tags for SES complaint rate monitor | `list(string)` | `[]` | no |
| <a name="input_complaint_rate_message"></a> [complaint\_rate\_message](#input\_complaint\_rate\_message) | Custom message for SES complaint rate monitor | `string` | `""` | no |
| <a name="input_complaint_rate_threshold_critical"></a> [complaint\_rate\_threshold\_critical](#input\_complaint\_rate\_threshold\_critical) | Alerting threshold in percentage | `number` | `0.3` | no |
| <a name="input_complaint_rate_threshold_warning"></a> [complaint\_rate\_threshold\_warning](#input\_complaint\_rate\_threshold\_warning) | Warning threshold in percentage | `number` | `0.2` | no |
| <a name="input_complaint_rate_time_aggregator"></a> [complaint\_rate\_time\_aggregator](#input\_complaint\_rate\_time\_aggregator) | Monitor aggregator for SES complaint rate [available values: min, max or avg] | `string` | `"avg"` | no |
| <a name="input_complaint_rate_timeframe"></a> [complaint\_rate\_timeframe](#input\_complaint\_rate\_timeframe) | Monitor timeframe for SES complaint rate [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | n/a | yes |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `900` | no |
| <a name="input_filter_tags"></a> [filter\_tags](#input\_filter\_tags) | Tags used for filtering | `string` | `"*"` | no |
| <a name="input_message"></a> [message](#input\_message) | Message sent when a monitor is triggered | `any` | n/a | yes |
| <a name="input_new_group_delay"></a> [new\_group\_delay](#input\_new\_group\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_notify_no_data"></a> [notify\_no\_data](#input\_notify\_no\_data) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_prefix_slug"></a> [prefix\_slug](#input\_prefix\_slug) | Prefix string to prepend between brackets on every monitors names | `string` | `""` | no |
| <a name="input_timeout_h"></a> [timeout\_h](#input\_timeout\_h) | Default auto-resolving state (in hours) | `number` | `0` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
## Related documentation

DataDog documentation: [https://docs.datadoghq.com/integrations/amazon_ses/](https://docs.datadoghq.com/integrations/amazon_ses/)

AWS SES metrics documentation: [https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
