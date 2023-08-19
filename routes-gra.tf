resource "openstack_networking_router_v2" "router_gra" {
  name = "router-gra"
  external_network_id = "bcf59eb2-9d83-41cc-b4f5-0435ed594833"
  region = "GRA11"
}

resource "openstack_networking_router_interface_v2" "interface_gra" {
  router_id     = openstack_networking_router_v2.router_gra.id
  subnet_id     = openstack_networking_subnet_v2.subnet_k8s_a.id
  region = "GRA11"
}
