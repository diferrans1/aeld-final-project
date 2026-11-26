SUMMARY = "Minimal Raspberry Pi 3 image with I2C support for the BME280"

require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL:append = " i2c-tools kernel-module-i2c-dev"

IMAGE_FEATURES += "ssh-server-dropbear"

# Development only: root login over serial and SSH without a password
IMAGE_FEATURES += "allow-empty-password empty-root-password allow-root-login"
