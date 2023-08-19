resource "openstack_networking_network_v2" "netowrk_k8s" {
  name = "network_k8s"
  region = "GRA11"

}

resource "openstack_networking_subnet_v2" "subnet_k8s_a" {
  name          = "subnet_app_a"
  network_id    = openstack_networking_network_v2.netowrk_k8s.id
  cidr          = "10.10.1.0/24"
  ip_version    = 4
  region = "GRA11"
}
