# Changelog

## [1.1.0] - 2019-11-20

### Changed

* Added `asdf_init_shell` option for skipping shell configuration for users
  managing their configuration using dotfiles

### Development improvements

* Run Travis builds with Xcode 11.2 on macOS 10.14
* Run Travis builds with Xcode 10.1 on macOS 10.13
* Improved development and test shell scripts and coding style
* Use multiple stages on Travis to improve performance
* Added GitHub Actions workflow for testing code quality
* Validate bash scripts with [shellcheck]
* Format bash scripts with [shfmt]
* Added [commitlint] commit-msg hook

[shellcheck]: https://github.com/koalaman/shellcheck
[shfmt]: https://github.com/mvdan/sh
[commitlint]: https://commitlint.js.org/

## [1.0.0] - 2019-06-02

First release.

[1.1.0]: https://github.com/markosamuli/ansible-asdf/releases/tag/v1.1.0
[1.0.0]: https://github.com/markosamuli/ansible-asdf/releases/tag/v1.0.0
