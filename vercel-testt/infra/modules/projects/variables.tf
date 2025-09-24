variable "name" {
  type = string
}
variable "domain" {
  description = "This will be used to construct *.vercel.app domains (internal domains)"
  type        = string
}
