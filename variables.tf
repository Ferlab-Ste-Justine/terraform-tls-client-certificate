variable "organization" {
  description = "The etcd client's certificates' organization"
  type        = string
  default     = "Ferlab"
}

variable "username" {
  description = "The user the certificate is for"
  type        = string
  default     = "root"
}

variable "validity_period" {
  description = "Certificate's validity period in hours"
  type        = number
  default     = 100*365*24
}

variable "early_renewal_period" {
  description = "Certificate's early renewal period in hours"
  type        = number
  default     = 365*24
}

variable "ca" {
  description = "The ca that will sign the member's certificate. Should have the following keys: key, key_algorithm, certificate"
  type        = any
  sensitive   = true
}