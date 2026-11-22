This page tracks the Scrum backlog and sprint schedule for the Raspberry Pi 3 + BME280 Yocto final project.

## Helpful markdown links:
[organizing-information-with-tables](https://help.github.com/en/articles/organizing-information-with-tables)

## Status Icons
Please use these status icons for the status column:

:x: Not started (Issue should include DoD)

:heavy_check_mark: Complete (Issue should contain detail about implementation, DoD in description should be up to date)

:heavy_plus_sign: In Progress (Issue have up to date DoD, should contain detail about status)

:red_circle: Blocked (Issue should include DoD and contain link to blocker)

## Project Backlog
| Target Milestone | Status | Owner  | Issue Link | Definition of Done |
| ---------------- | ------ | ------ | ---------- | ------------------ |
| Sprint 1 | :x: | Daniel | [Yocto environment setup (poky + meta-raspberrypi + meta-openembedded, Scarthgap)](TBD) | `bitbake core-image-minimal` succeeds for `MACHINE=raspberrypi3` |
| Sprint 1 | :x: | Daniel | [Custom layer meta-aesd-bme280 with minimal image + I2C enabled](TBD) | Image recipe builds; `ENABLE_I2C`, `i2c-dev` and `i2c-tools` included |
| Sprint 1 | :x: | Daniel | [Flash image and boot Raspberry Pi 3](TBD) | Board boots from SD card; login on serial console (and SSH if networking is enabled) |
| Sprint 2 | :x: | Daniel | [Wire BME280 and validate the I2C bus](TBD) | `i2cdetect -y 1` shows the sensor at 0x76/0x77; register 0xD0 reads `0x60` |
| Sprint 2 | :x: | Daniel | [User-space bme280-reader app (via /dev/i2c-1)](TBD) | App reads calibration data and prints compensated temperature (°C) and pressure (hPa) |
| Sprint 2 | :x: | Daniel | [Recipe to build and install bme280-reader in the image](TBD) | App is present on a freshly built image and runs at boot or on demand |
| Sprint 3 | :x: | Daniel | [BME280 Linux kernel driver (i2c_driver, out-of-tree module)](TBD) | Module probes the sensor and exposes readings through a char device or sysfs |
| Sprint 3 | :x: | Daniel | [Device tree overlay + module recipe and autoload](TBD) | Driver binds automatically at boot with no manual `insmod` |
| Sprint 3 | :x: | Daniel | [Reliability testing and validation](TBD) | Readings stay stable over 1 hour or more and match a reference within the sensor's tolerance; error handling verified |
| Sprint 3 | :x: | Daniel | [Final demo video and documentation](TBD) | Video recorded and wiki pages complete |
