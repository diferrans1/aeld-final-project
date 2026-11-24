#!/bin/bash
# Build the Yocto image for the Raspberry Pi 3.
set -e

cd "$(dirname "$0")"
git submodule init
git submodule sync
git submodule update

# Creates build/ on first run and changes into it.
source poky/oe-init-build-env build

add_conf() {
	grep -qxF "$1" conf/local.conf || echo "$1" >> conf/local.conf
}

add_conf 'MACHINE = "raspberrypi3"'

for layer in ../meta-openembedded/meta-oe ../meta-raspberrypi; do
	if ! grep -q "$(realpath "$layer")" conf/bblayers.conf; then
		bitbake-layers add-layer "$layer"
	fi
done

bitbake-layers show-layers
bitbake core-image-minimal
