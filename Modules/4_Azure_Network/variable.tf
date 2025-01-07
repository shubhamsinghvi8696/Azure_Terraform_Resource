variable "Virtual_Network" {
  type = map(object({
    name                = string,
    resource_group_name = string,
    location            = string,
    address_space       = list(string),

    var_subnet = map(object({
      subnet_name             = string,
      address_prefixes = list(string),
    }))

  }))
}


