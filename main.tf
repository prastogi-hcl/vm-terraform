provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "Fri@co123!"
  vsphere_server = "uslabpowvcs01.hclcnlabs.com"

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "FRISCO-DC"
 }

data "vsphere_datastore" "datastore" {
  name          = "vsanDatastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = "Anthos-QA"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "ANTHOS-VM-MANAGEMENT-PG"
  datacenter_id = data.vsphere_datacenter.dc.id
}

#Data source for VM template
data "vsphere_virtual_machine" "template" {
   name = "anthos-qa-jumpbox"
   datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "vm" {
name             = "jumpbox-12jan"
resource_pool_id = data.vsphere_resource_pool.pool.id
datastore_id     = data.vsphere_datastore.datastore.id
wait_for_guest_net_timeout = 0
wait_for_guest_ip_timeout  = 0
num_cpus = 2
memory   = 4096
guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 100
  }

  #Included a clone attribute in the resource
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options{
        host_name = "jumpbox-12jan"
        domain = "hclcnlabs.com"
      }
      network_interface {
        ipv4_address = "172.16.135.24"
        ipv4_netmask = "24"
      }

      ipv4_gateway = "172.16.135.1"
      dns_suffix_list = ["hclcnlabs.com"]
      dns_server_list = ["8.8.8.8"]
    }
  }
}
