# lifeofguenter.nginx

[![Build Status](https://travis-ci.com/lifeofguenter/ansible-role-nginx.svg?branch=master)](https://travis-ci.com/lifeofguenter/ansible-role-nginx)

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.20.1

openssl_version: 1.1.1k

brotli_version: 1.0.9

# 3rd-party modules
ngx_brotli_version: master

ngx_headers_more_version: 0.33

ngx_fancyindex_version: 0.5.1

ngx_modsecurity_version: 1.0.2

ngx_njs_version: 0.6.1

# config defaults
nginx_worker_connections: 2048

# dynamically loaded modules
nginx_load_modules:
  #- http_fancyindex
  #- http_js
  - http_modsecurity

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

[Gunter Grodotzki](https://lifeofguenter.de)
