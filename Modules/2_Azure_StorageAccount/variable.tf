variable "var_stg" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    tags = optional(map(string))
  }))  
}