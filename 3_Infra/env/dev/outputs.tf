output "resource_group_map" {
  value = { for k , v in module.rg : v.resource_group_name => v.resource_group_id }
}

output "vent_id" {
  value = module.vnet.vnet_id
}