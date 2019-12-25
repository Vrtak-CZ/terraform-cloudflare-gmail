variable "zone_id" {
  type = string
}

variable "spf_value" {
  type = string
  default = "v=spf1 include:_spf.google.com ~all"
}

variable "dkim_value" {
  type = string
  default = null
}

variable "dkim_domain" {
  type = string
  default = "google._domainkey"
}

variable "ttl" {
  type = number
  default = 1
}
