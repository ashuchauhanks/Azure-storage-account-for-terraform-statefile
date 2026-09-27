variable "resource_groups" {
    description = "resource groups to create"
    type = map(object({
        name = string
        location = string
    
    }))
}





variable "storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "storage_containers" {
  type = map(object({
    name                = string
    storage_account_key = string
  }))
}
