module "rg" {
  source = "git::https://github.com/Arun4D/terraform-training-modules.git//resource-group?ref=v1.0.0"

  resource_group_name = var.resource_group_name
  location            = var.location
}