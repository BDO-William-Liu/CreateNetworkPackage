module "create-azure-network-package" {
    source = "./ModuleNetwork"

    name = var.name
    location = var.location
    address_space = var.address_space
}