output "route_id" {
  description = "The ID of the created static route"
  value       = fortios_router_static.static_route.id
}

output "route_details" {
  description = "Details of the created static route"
  value = {
    destination = fortios_router_static.static_route.dst
    gateway     = fortios_router_static.static_route.gateway
    interface   = fortios_router_static.static_route.device
    status      = fortios_router_static.static_route.status
  }
}