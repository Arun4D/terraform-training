module "rg" {
  source = "git::https://github.com/Arun4D/terraform-training-modules.git//resource-group?ref=v1.0.0"

  //for_each = { for k , v in local.config_final["resource_group"] : k => v }
  for_each = local.config_final["resource_group"]

  resource_group_name = each.value
  location            = local.config_final["location"]
}

module "vnet" {
  source = "git::https://github.com/Arun4D/terraform-training-modules.git//vnet?ref=v1.0.1"


  vnet_name           = local.config_final["vnet"]["vnet_name"]
  address_space       = local.config_final["vnet"]["address_space"]
  vnet_location       = local.config_final["location"]
  //resource_group_name = local.config_final["resource_group"]["app1"]
  resource_group_name = module.rg["app1"].resource_group_name

  tags = local.global_tags_final
}
