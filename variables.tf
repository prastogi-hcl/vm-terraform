variable "vsphere_server" {
    description = "vsphere server for the environment - EXAMPLE: vcenter01.hosted.local"
    default = "uslabpowvcs01.hclcnlabs.com"
}
variable "vsphere_user" {
    description = "vsphere server for the environment - EXAMPLE: vsphereuser"
    default = "administrator@vsphere.local"
}
variable "JumpboxIP" {
    description = "vsphere server ipv4 address - EXAMPLE: 172.16.135.60"
    default = "172.16.135.16"
 }
variable "vsphere_password" {
    description = "vsphere server password for the environment"
    default = "Fri@co123!"
}
variable "JumpboxName" {
    description = "Server Name"
    default = "jumpbox-27"
}
variable "user" {
    description = "Jumpbox User"
    default = "root"
}
variable "password" {
    description = "Jumpbox Password"
    default = "redhat"
}
variable "admin_ws_ip" {
    description = "Admin Workstation IP"
    default = "172.16.135.80"
}
