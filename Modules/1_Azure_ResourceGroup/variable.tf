variable "Module_RG" {
  type = map(object({
    name =string
    location= string
    tags = optional(map(string))
    managed_by  = optional(string) 
  }))
}