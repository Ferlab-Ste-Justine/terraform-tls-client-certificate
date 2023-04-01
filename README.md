# About

Given a certificate authority that is recognized by a server, this terraform module will provision a client certificate that can be used to authenticate against the server as a given user.

It assumes that the server will map the user's identity to the certificate's common name.

# Usage

## Variables

This module takes the following variables as input:

- organization: The organization of the certificate that will be provisioned. Defaults to **ferlab**
- username: username of the user the certificate is for
- validity_period: Validity period of the certificate in hours. Defaults to 100 years.
- early_renewal_period: Period in hours after which terraform will try to renew the certificate. Defaults to 99 years.
- ca: Certicate authority. Should be a map containing the following keys: key, key_algorithm, certificate

## Output

The module outputs the following values:

- key: Private key used with the client certificate
- key_algorithm: Algorithm of the private key used with the client certificate
- certificate: Client certificate

## Previous Repo

This project used to be located at this repo: https://github.com/Ferlab-Ste-Justine/terraform-tls-client-certificate

However, the project is technically not dependant on openstack and we also had to do a somewhat disruptive change due to a backward-incompatible change in expected certificate arguments so we opted to just leave the previous repo as is for older orchestration and open up a new project with the corrected name for orchestration going forward.