# lifeofguenter.nginx

[![Build Status](https://travis-ci.com/lifeofguenter/ansible-role-nginx.svg?branch=main)](https://travis-ci.com/lifeofguenter/ansible-role-nginx)

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.30.7

nginx_user: www-data
nginx_group: www-data

nginx_worker_processes: auto

# 3rd-party modules
nginx_brotli_version: master
nginx_headers_more_version: "0.42"
nginx_fancyindex_version: 0.6.0
nginx_geoip2_version: 3.4
nginx_modsecurity_version: 1.0.4
nginx_njs_version: 1.0.2

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
