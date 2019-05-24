andrewrothstein.go-dep
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-go-dep.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-go-dep)

Environment with [golang](https://golang.org/) and [dep](https://golang.github.io/dep/). From which to start go-ing and dep-ing.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.go-dep
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
