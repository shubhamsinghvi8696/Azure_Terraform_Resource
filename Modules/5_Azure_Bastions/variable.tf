variable "main_Bastons" {
    type = map(object({
      submet_name = string,
      virtual_network_name = string,
      resource_group_name = string,
      pip_name = string,
      location =string
    }))
}