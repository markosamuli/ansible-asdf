# markosamuli.asdf

[![Ansible Quality Score](https://img.shields.io/ansible/quality/40885.svg)](https://galaxy.ansible.com/markosamuli/asdf)
[![Ansible Role](https://img.shields.io/ansible/role/40885.svg)](https://galaxy.ansible.com/markosamuli/asdf)
[![GitHub release](https://img.shields.io/github/release/markosamuli/ansible-asdf.svg)](https://github.com/markosamuli/ansible-asdf/releases)
[![License](https://img.shields.io/github/license/markosamuli/ansible-asdf.svg)](https://github.com/markosamuli/ansible-asdf/blob/master/LICENSE)

| Branch  | Travis Builds | Code Quality |
|---------|--------|--------------|
| master  | [![Build Status][travis-master]][travis] | ![Build Status][gh-master] |
| develop | [![Build Status][travis-develop]][travis] | ![Build Status][gh-develop] |

[travis]: https://travis-ci.org/markosamuli/ansible-asdf/branches
[travis-master]: https://travis-ci.org/markosamuli/ansible-asdf.svg?branch=master
[travis-develop]: https://travis-ci.org/markosamuli/ansible-asdf.svg?branch=develop
[gh-master]: https://github.com/markosamuli/ansible-asdf/workflows/Code%20Quality/badge.svg?branch=master
[gh-develop]: https://github.com/markosamuli/ansible-asdf/workflows/Code%20Quality/badge.svg?branch=develop

Ansible role for installing [asdf] version manager for the current user.

Don't use this role on production servers as it supports installing asdf only
under user home directory.

[asdf]: https://asdf-vm.com

## Role Variables

Set `asdf_init_shell` to `false` if you're for example managing your shell
rc files using your own .dotfiles repository.

```yaml
# Configure shell rc files
asdf_init_shell: true
```

## Installing plugins and packages

Plugin and package installation and configuration is based on [cimon-io.asdf]
Ansible role.

```yaml
asdf_plugins:
  - name: "terraform"    # a plugin name
    repository: ""       # a plugin repository, optional
    versions:            # a list of the package versions to install
      - "0.11.14"
    global: "0.11.14"    # set as a global version, optional
```

[cimon-io.asdf]: https://github.com/cimon-io/ansible-role-asdf

## Updating versions

Run the following scripts to get latest releases from GitHub and update them in
role defaults.

Update [asdf] release:

```bash
make update
```

## License

* [MIT](LICENSE)

## Author Information

* [@markosamuli](https://github.com/markosamuli)
