variable "organization" {
  description = "The client's certificates' organization"
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

variable "legacy_defaults" {
  description = "If set to true, the unspecified subject fields will be set to the defaults of version 3 (empty values) of the tls provider instead of version 4 (omitted)"
  type        = bool
  default     = false
}