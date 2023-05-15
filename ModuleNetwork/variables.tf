variable "name" {
    description = "name of virtual network"
    type = string
    default = ""
}

variable "location" {
    description = "location of virtual network server"
    type = string
    default = ""
}

variable "address_space" {
    description = "network address of virtual network server"
    type = list(string)
    default = []
}