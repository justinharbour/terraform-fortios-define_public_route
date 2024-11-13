terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">=1.15.0"
    }
  }
}

resource "fortios_router_static" "static_route" {
  dst         = var.destination_network
  gateway     = var.gateway_ip
  device      = var.outgoing_interface
  distance    = var.administrative_distance
  status      = var.route_status
  comment     = var.route_comment
  seq_num     = var.sequence_number
}