# FortiOS Static Route Terraform Module

This Terraform module creates a static route on a FortiGate device using the FortiOS provider.

## Requirements

- Terraform >= 0.13.x
- FortiOS Provider >= 1.15.0
- FortiGate device with API access enabled

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| destination_network | Destination IP and mask for the static route | string | n/a | yes |
| gateway_ip | Gateway IP address for the static route | string | n/a | yes |
| outgoing_interface | Outgoing interface for the static route | string | n/a | yes |
| administrative_distance | Administrative distance for the route (1-255) | number | 10 | no |
| route_status | Status of the static route (enable/disable) | string | "enable" | no |
| route_comment | Comment for the static route | string | "Created by Terraform" | no |
| sequence_number | Sequence number for the static route | number | 1 | no |

## Outputs

| Name | Description |
|------|-------------|
| route_id | The ID of the created static route |
| route_details | Details of the created static route including destination, gateway, interface, and status |

## Notes

- Ensure that the FortiOS provider is properly configured with the required credentials
- The outgoing interface must exist on the FortiGate device
- The gateway IP should be reachable through the specified interface
- Administrative distance affects route preference (lower values are preferred)
- Sequence numbers should be unique for each route
- Enable API access on your FortiGate device before using this module