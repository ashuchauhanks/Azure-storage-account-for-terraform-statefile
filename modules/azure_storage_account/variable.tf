
variable "storage_accounts" {
    description = "storage accounts to create"
    type = map(object({
        name = string
        resource_group_name = string
        location = string
        account_tier = string
        account_replication_type = string
    }))
}

variable "storage_containers" {
    description = "storage containers to create"
    type = map(object({
        name = string
        storage_account_key = string
    }))
}

