
resource "azurerm_storage_account" "storage" {
    for_each = var.storage_accounts
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type

}

resource "azurerm_storage_container" "container" {
    for_each = var.storage_containers
    name = each.value.name
    storage_account_id = azurerm_storage_account.storage[each.value.storage_account_key].id
    container_access_type = "private"

}


