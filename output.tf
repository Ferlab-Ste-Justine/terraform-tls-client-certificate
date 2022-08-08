output key {
  value     = tls_private_key.key.private_key_pem
  sensitive = true
}

output key_algorithm {
  value     = tls_private_key.key.algorithm
  sensitive = true
}

output certificate {
  value = tls_locally_signed_cert.certificate.cert_pem
}