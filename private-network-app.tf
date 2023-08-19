resource "openstack_networking_network_v2" "netowrk_app" {
  name = "network_app"

}

resource "openstack_networking_subnet_v2" "subnet_app_a" {
  name          = "subnet_app_a"
  network_id    = openstack_networking_network_v2.netowrk_app.id
  cidr          = "10.0.1.0/24"
  ip_version    = 4

}

