variable "resource_groups" {
    description = "resource groups to create"
    type = map(object({
        name = string
        location = string
    
    }))
}

