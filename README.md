[![Build Status](https://travis-ci.org/lifeofguenter/ansible-role-nginx.svg?branch=master)](https://travis-ci.org/lifeofguenter/ansible-role-nginx)

# lifeofguenter.nginx

This role will compile nginx from source on Debian-like systems.

## Requirements

None

## Role Variables

```yaml

nginx_version: 1.12.2

pcre_version: "8.41"

zlib_version: 1.2.11

openssl_version: 1.1.0f

# 3rd-party modules
nginx_brotli_version: master

nginx_headers_more_version: 0.32

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
