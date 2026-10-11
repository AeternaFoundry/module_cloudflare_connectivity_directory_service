variable "connectivity_directory_services" {
  description = <<EOT
Map of connectivity_directory_services, attributes below
Required:
    - account_id
    - host
    - name
    - type
Optional:
    - app_protocol
    - http_port
    - https_port
    - tcp_port
    - tls_settings
EOT

  type = map(object({
    account_id = string
    host = object({
      hostname = optional(string)
      ipv4     = optional(string)
      ipv6     = optional(string)
      network = optional(object({
        tunnel_id = string
      }))
      resolver_network = optional(object({
        resolver_ips = optional(list(string))
        tunnel_id    = string
      }))
    })
    name         = string
    type         = string
    app_protocol = optional(string)
    http_port    = optional(number)
    https_port   = optional(number)
    tcp_port     = optional(number)
    tls_settings = optional(object({
      cert_verification_mode = string
    }))
  }))
}

