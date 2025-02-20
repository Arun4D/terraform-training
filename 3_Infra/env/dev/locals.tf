locals {
  config_final      = merge(var.config, var.global_map)
  global_tags_final = merge(var.global_tags, var.environment_tags)
}