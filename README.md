[![Build Status](https://travis-ci.org/lifeofguenter/ansible-role-nginx.svg?branch=master)](https://travis-ci.org/lifeofguenter/ansible-role-nginx)

# lifeofguenter.nginx

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.18.0

pcre_version: 8.44

zlib_version: 1.2.11

openssl_version: 1.1.1g

brotli_version: 1.0.7

# 3rd-party modules
ngx_brotli_version: master

ngx_headers_more_version: 0.33

ngx_fancyindex_version: 0.4.4

# config defaults
nginx_worker_connections: 2048

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
