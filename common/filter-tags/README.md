# FILTER TAGS Datadog Generator

## How to use this module

This module usage should be transparent because it should be used inside each monitors set directly.
Here is a simple example but it is advisable to see how are created other existing monitors sets:

```
module "filter-tags" {
  source = "../../common/filter-tags"

  environment              = "${var.environment}"
  resource                 = "my_resource"
  filter_tags_use_defaults = "${var.filter_tags_use_defaults}"
  filter_tags_custom       = "${var.filter_tags_custom}"
}
```

## Purpose

Creates all kinds of filters tags patterns depending of the monitor type and directly usable in a monitors set :

* A filter tags pattern for service check
* A filter tags pattern for query alert

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | Architecture Environment | string | - | yes |
| extra_tags | Extra optional tags (i.e. ["tag1:val1", "tag2:val2"]) | list | `<list>` | no |
| filter_tags_custom | Tags used for custom filtering when filter_tags_use_defaults is false | string | `*` | no |
| filter_tags_use_defaults | Use default filter tags convention | string | `true` | no |
| resource | The dedicated tag for the resource | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| query_alert | The full filtering pattern including parentheses for service check monitor type |
| service_check | The full filtering pattern including braces for query alert monitor type |

## Related documentation

Datadog API type of monitor: [https://docs.datadoghq.com/api/?lang=python#create-a-monitor](https://docs.datadoghq.com/api/?lang=python#create-a-monitor)
