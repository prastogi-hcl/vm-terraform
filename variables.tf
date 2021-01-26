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
    default = "172.16.135.30"
}
variable "vsphere_password" {
    description = "vsphere server password for the environment"
    default = "Fri@co123!"
}
variable "password" {
    description = "Root account password"
    default = "redhat"
}
variable "servername" {
    description = "Server Name"
    default = "jumpbox"
}
