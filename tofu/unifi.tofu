resource "unifi_network" "kubernetes_lab" {
  name         = "kubernetes-lab"
  purpose      = "corporate"
  vlan_id      = 8
  subnet       = "192.168.8.1/24"
  dhcp_enabled = var.dhcp_enabled
  site         = "default"
  dhcp_start   = "192.168.8.10"
  dhcp_stop    = "192.168.8.254"
}

