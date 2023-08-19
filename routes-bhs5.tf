resource "openstack_networking_router_v2" "router" {
  name = "router-bhs"
  external_network_id = "d7eaf2f8-d9d8-465b-9244-fd4736660570"
}

resource "openstack_networking_router_interface_v2" "interface_a" {
  router_id     = openstack_networking_router_v2.router.id
  subnet_id     = openstack_networking_subnet_v2.subnet_app_a.id
}

resource "openstack_networking_router_interface_v2" "interface_b" {
  router_id     = openstack_networking_router_v2.router.id
  subnet_id     = openstack_networking_subnet_v2.subnet_db_a.id
}


