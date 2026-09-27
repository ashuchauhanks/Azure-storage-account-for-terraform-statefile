module "azure_rg" {
    source = "../../modules/azure_resource_group"
    resource_groups = var.resource_groups

}

module "az_storage_account" {
    source = "../../modules/azure_storage_account"
    storage_accounts = var.storage_accounts
    storage_containers = var.storage_containers
}
