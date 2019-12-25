resource "cloudflare_record" "mx" {
  for_each = local.google_mx_server_domains

  zone_id = var.zone_id
  name = "@"
  value = each.key
  type = "MX"
  ttl = var.ttl
  priority = each.value
}

resource "cloudflare_record" "spf" {
  zone_id = var.zone_id

  name = "@"
  value = var.spf_value
  type = "TXT"
  ttl = var.ttl
}

resource "cloudflare_record" "dkim" {
  count = var.dkim_value != null ? 1 : 0

  zone_id = var.zone_id

  name = "google._domainkey"
  value = var.dkim_value
  type = "TXT"
  ttl = var.ttl
}