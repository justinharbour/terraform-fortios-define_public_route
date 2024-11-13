variable "destination_network" {
  description = "Destination IP and mask for the static route (e.g., 10.0.0.0/8)"
  type        = string
}

variable "gateway_ip" {
  description = "Gateway IP address for the static route"
  type        = string
}

variable "outgoing_interface" {
  description = "Outgoing interface for the static route"
  type        = string
}

variable "administrative_distance" {
  description = "Administrative distance for the route (1-255)"
  type        = number
  default     = 10
}

variable "route_status" {
  description = "Status of the static route (enable/disable)"
  type        = string
  default     = "enable"
  validation {
    condition     = contains(["enable", "disable"], var.route_status)
    error_message = "Route status must be either 'enable' or 'disable'."
  }
}

variable "route_comment" {
  description = "Comment for the static route"
  type        = string
  default     = "Created by Terraform"
}

variable "sequence_number" {
  description = "Sequence number for the static route"
  type        = number
  default     = 1
}