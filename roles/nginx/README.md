# nginx

Configures [nginx](https://tracker.debian.org/pkg/nginx) on a target host. The purpose of this role is not to expose every parameter imaginable to Ansible, but to provision hosts efficiently and consistently. Edit `.j2` templates if you must.


## Requirements

- Ansible ≥2.9
- Python ≥3.7
- Debian 11 (might work on its derivatives, however this is not guaranteed)


## Role Variables

| Variable       | Description                    | Default     |
|----------------|--------------------------------|-------------|
| ngx_flavour    | `full` or `light` package?     | full        |
| ngx_endpoints  | Lists of domains to provision. | []          |
| ngx_resolver   | Resolver to use for stapling.  | '127.0.0.1' |
| ngx_cert_email | E-mail to use for LetsEncrypt. | ''          |


## Dependencies
Tested on a remote that is already provisioned with the [base role](https://github.com/savchenko/debian/roles/base/README.md).  


## License
Apache 2.0


## Author Information
Andrew Savchenko  
https://savchenko.net
