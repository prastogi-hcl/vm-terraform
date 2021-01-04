variable "vsphere_server" {
    description = "vsphere server for the environment - EXAMPLE: vcenter01.hosted.local"
    default = "uslabpowvcs01.hclcnlabs.com"
}
variable "vsphere_user" {
    description = "vsphere server for the environment - EXAMPLE: vsphereuser"
    default = "administrator@vsphere.local"
}
variable "ipv4_address" {
    description = "vsphere server ipv4 address - EXAMPLE: 172.16.135.60"
}

variable "vsphere_password" {
    description = "vsphere server password for the environment"
}
variable "password" {
    description = "Root account password"
}
variable "servername" {
    description = "Server Name"
}
