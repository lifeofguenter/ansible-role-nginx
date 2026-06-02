# lifeofguenter.nginx

[![Build Status](https://travis-ci.com/lifeofguenter/ansible-role-nginx.svg?branch=main)](https://travis-ci.com/lifeofguenter/ansible-role-nginx)

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.30.2

nginx_user: www-data
nginx_group: www-data

nginx_worker_processes: auto

# 3rd-party modules
ngx_brotli_version: master
ngx_headers_more_version: 0.39
ngx_fancyindex_version: 0.6.0
ngx_geoip2_version: 3.4
ngx_modsecurity_version: 1.0.4
ngx_njs_version: 0.9.9

# config defaults
nginx_worker_connections: 2048

# dynamically loaded modules
nginx_load_modules:
  # - http_fancyindex
  # - http_js
  - http_modsecurity

nginx_resolvers:
  - 1.1.1.1
  - 8.8.8.8

nginx_resolver_timeout: 2s

nginx_compile_modsecurity: ''

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
