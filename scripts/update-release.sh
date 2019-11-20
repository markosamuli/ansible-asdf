#!/usr/bin/env bash

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT=$(dirname "$SCRIPTS_DIR")

# shellcheck source=scripts/utils.sh
source "${SCRIPTS_DIR}/utils.sh"

# Update asdf version
update_asdf_version() {
    local version=$1
    update_default_variable "asdf_version" "${version}"
}

# Get latest asdf version
latest_asdf_version() {
    local latest_release
    local errmsg="Failed to get latest asdf-vm/asdf release"
    latest_release=$(get_latest_tag asdf-vm/asdf)
    if [ -z "${latest_release}" ]; then
        error "${errmsg}"
        exit 1
    fi
    echo "${latest_release}"
}

# Update all versions
update_versions() {
    local repository=$1
    local version
    if [ -z "${repository}" ]; then
        error "Repository not defined"
        exit 1
    fi
    if [ "${repository}" == "asdf" ]; then
        version=$(latest_asdf_version)
        echo "Latest asdf release is ${version}"
        update_asdf_version "${version}"
    else
        error "Unknown repository: ${repository}"
        exit 1
    fi
}

set -e

cd "${PROJECT_ROOT}"

check_curl
update_versions "$1"
