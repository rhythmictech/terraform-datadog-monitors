module "filter-tags" {
  source = "../../../common/filter-tags"

  resource                    = "aws_health"
  filter_tags_use_defaults    = var.filter_tags_use_defaults
  filter_tags_custom          = var.filter_tags_custom
  filter_tags_custom_excluded = var.filter_tags_custom_excluded
}

