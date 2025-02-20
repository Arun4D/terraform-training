config = {
  location = "East US",

  resource_group = {
    app1 = "app1-rg"
    app2 = "app2-rg"
  },

  vnet = {
    vnet_name     = "myVNet",
    address_space = ["192.168.1.0/24"],

  }
}

environment_tags = {
  environment = "dev",
  cost_center = "1564",
  owner       = "AdM"
}