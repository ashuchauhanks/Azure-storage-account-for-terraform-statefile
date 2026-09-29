resource_groups = {
    rg1 = {
        name = "rg-statebk"
        location = "eastus"
        }

}


storage_accounts = {
    stg1 = {
        name = "stg-statebk"
        resource_group_name = "rg-statebk"
        location = "eastus"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
}

storage_containers = {
    container1 = {
        name = "tfstate"
        storage_account_key = "stg1"
    }
}