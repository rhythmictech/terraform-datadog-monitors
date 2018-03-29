AWS API Gateway DataDog monitors
==========================================

How to use this module
----------------------

```
module "datadog-monitors-aws-api-gateway" {
  source = "git::ssh://git@bitbucket.org/morea/terraform.feature.datadog.git//cloud/aws/apigateway?ref={revision}"

  environment = "${var.environment}"
  message = "${module.datadog-message-alerting.alerting-message}"
}

```

Purpose
-------
Creates DataDog monitors with the following checks :

* API Gateway too much 5xx errors
* API Gateway too much 4xx errors
* API Gateway latency to high

Inputs
------

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| artificial_requests_count | Number of false requests used to mitigate false positive in case of low trafic | string | `5` | no |
| delay | Delay in seconds for the metric evaluation | string | `900` | no |
| environment | Environment | string | - | yes |
| filter_tags | Tags used for filtering | string | `*` | no |
| http_4xx_requests_message | Custom message for API Gateway HTTP 4xx requests monitor | string | `` | no |
| http_4xx_requests_silenced | Groups to mute for API Gateway HTTP 4xx requests monitor | map | `<map>` | no |
| http_4xx_requests_threshold_critical | Maximum critical acceptable percent of 4xx errors | string | `30` | no |
| http_4xx_requests_threshold_warning | Maximum warning acceptable percent of 4xx errors | string | `15` | no |
| http_5xx_requests_message | Custom message for API Gateway HTTP 5xx requests monitor | string | `` | no |
| http_5xx_requests_silenced | Groups to mute for API Gateway HTTP 5xx requests monitor | map | `<map>` | no |
| http_5xx_requests_threshold_critical | Maximum critical acceptable percent of 5xx errors | string | `20` | no |
| http_5xx_requests_threshold_warning | Maximum warning acceptable percent of 5xx errors | string | `10` | no |
| latency_message | Custom message for API Gateway latency monitor | string | `` | no |
| latency_silenced | Groups to mute for API Gateway latency monitor | map | `<map>` | no |
| latency_threshold_critical | Alerting threshold in milliseconds | string | `800` | no |
| latency_threshold_warning | Warning threshold in milliseconds | string | `400` | no |
| message | Message sent when a monitor is triggered | string | - | yes |

Related documentation
---------------------

DataDog documentation: [https://docs.datadoghq.com/integrations/amazon_api_gateway/](https://docs.datadoghq.com/integrations/amazon_api_gateway/)

AWS API Gateway metrics documentation: [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/api-gateway-metrics-dimensions.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/api-gateway-metrics-dimensions.html)