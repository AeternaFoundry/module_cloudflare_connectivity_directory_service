resource "cloudflare_connectivity_directory_service" "connectivity_directory_services" {
  for_each = var.connectivity_directory_services

  account_id   = each.value.account_id
  host         = each.value.host
  name         = each.value.name
  type         = each.value.type
  app_protocol = each.value.app_protocol
  http_port    = each.value.http_port
  https_port   = each.value.https_port
  tcp_port     = each.value.tcp_port
  tls_settings = each.value.tls_settings
}

