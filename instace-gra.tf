
resource "openstack_compute_keypair_v2" "test-keypair" {
  name       = "carvalhedo"
  region = "GRA11"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRAoyOMXGK4VIszhPLurJYiVBmA8BaKNeEAMaBlgrMFmg/8aTMaBFTgauvSvS3AWQzN+mfIO+do/XtdLDzYkr8tF0jaCsxCuWeZo2BYfEkyuBDKFQGorWzKimG0SnV9JqlPqnzS7r3HsgXPLlFPktm0D5aBw1ISTnHULBB3zaUiRLWZcRrYS+TVguRGuFMpyC605lZobyrt3T0hGL5f2ZTyLywXc1/EXuITd+DPn1CLnrJ9ADGLjtDc+fcOSiPS4rxy9yJjMwtKZViSmQaKmb4uT7tXLNHGKVyecZ80G48Y4aN8c9441XYzLDByly9M+ASM2Ajnr7QpmU+2buxeMbd41+bhnhllOAGpMD5BNFlOQsW1ALiAPf6Rb3gTrCNDSPBUrKtos2SLbOYaHGvICRwldwg0FpOV79sh4oejz3RoFGNJKb9MllguLBBPTE+1qY3S20+1DGf522w3Jqw/g/X3LCtgGw8hV8OS3KfifoX4Svwnlgjhi36zzMO4UN33sU= rafaelsousa@MacBook-Air-de-Rafael.local"
}

resource "openstack_compute_instance_v2" "basic" {
  name            = "basic"
  image_name  = "Debian 11"
  flavor_name       = "s1-2"
  key_pair        = openstack_compute_keypair_v2.test-keypair.name
  security_groups = ["default"]
  region = "GRA11"
  
  metadata = {
    this = "that"
  }

  network {
    name = openstack_networking_network_v2.netowrk_k8s.name
  }

}