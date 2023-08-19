resource "openstack_networking_network_v2" "network_db" {
  name = "network_db"
}

resource "openstack_networking_subnet_v2" "subnet_db_a" {
  name          = "subnet_db_a"
  network_id    = openstack_networking_network_v2.network_db.id
  cidr          = "10.0.2.0/24"
  ip_version    = 4
}

resource "openstack_networking_subnet_v2" "subnet_c" {
  name          = "subnet_db_b"
  network_id    = openstack_networking_network_v2.network_db.id
  cidr          = "10.0.3.0/24"
  ip_version    = 4

}

