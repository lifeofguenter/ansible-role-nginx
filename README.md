# lifeofguenter.nginx

[![Build Status](https://travis-ci.com/lifeofguenter/ansible-role-nginx.svg?branch=main)](https://travis-ci.com/lifeofguenter/ansible-role-nginx)

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.22

openssl_version: 3.0.5

brotli_version: 1.0.9

# 3rd-party modules
ngx_brotli_version: master

ngx_headers_more_version: 0.34

ngx_fancyindex_version: 0.5.2

ngx_modsecurity_version: 1.0.3

ngx_njs_version: 0.7.6

# config defaults
nginx_worker_connections: 2048

# dynamically loaded modules
nginx_load_modules:
  #- http_fancyindex
  #- http_js
  - http_modsecurity

nginx_resolvers:
  - 1.1.1.1
  - 8.8.8.8

nginx_resolver_timeout: 2s
```

## Dependencies

None

## Example Playbook

```yaml

- hosts: webservers
  roles:
    - { role: lifeofguenter.nginx }
```

## License

Licensed under the MIT License. See the [LICENSE file](LICENSE) for details.

## Author Information

[Günter Grodotzki](https://www.lifeofguenter.de)
