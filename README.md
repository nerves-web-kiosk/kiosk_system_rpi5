# Kiosk System for Raspberry Pi 5 Model B (64-bit)

[![Hex version](https://img.shields.io/hexpm/v/kiosk_system_rpi5.svg "Hex version")](https://hex.pm/packages/kiosk_system_rpi5)
[![CI](https://github.com/nerves-web-kiosk/kiosk_system_rpi5/actions/workflows/ci.yml/badge.svg)](https://github.com/nerves-web-kiosk/kiosk_system_rpi5/actions/workflows/ci.yml)
[![REUSE status](https://api.reuse.software/badge/github.com/nerves-web-kiosk/kiosk_system_rpi5)](https://api.reuse.software/info/github.com/nerves-web-kiosk/kiosk_system_rpi5)

*This is the `main` branch. If you are customizing a `v0.x` system, please see
the `maint-v0.x` branch. See the "Upgrading to 2.0" section if you are upgrading
your Nerves system dependency.*

This is a specialised version of the
[nerves_system_rpi5](https://github.com/nerves-project/nerves_system_rpi5) that
includes the required packages to run a fullscreen web browser in kiosk mode.

## Using

The most common way of using this Nerves System is create a project with `mix
nerves.new my_kiosk_app --target rpi5` and to export `MIX_TARGET=rpi5`.

Then, change the rpi5 system dependency to `{:kiosk_system_rpi5, "~> 2.0",
runtime: false, targets: :rpi5}`.

## Upgrading to 2.0

If your application depended on a pre-2.0 version of this Nerves system and you
are upgrading, you'll need to start validating firmware after it boots the first
time. If you don't do this, the Nerves MOTD will show that the firmware hasn't
been validated when you log in. You can manually validate by calling
`Nerves.Runtime.validate_firmware/0` or running the `fw_validate` helper at the IEx prompt.
If you don't do this, the device will run the old firmware on the next reboot.

A simple default way of validating the firmware can be enabled using
Nerves.Runtime's startup guard feature as described in [Assisted firmware
validation and automatic
revert](https://hexdocs.pm/nerves_runtime/readme.html#assisted-firmware-validation-and-automatic-revert).
Please follow the directions there for the needed config file update.

If in doubt, use `mix nerves.new` to create a new project and compare what it
creates to your project. If you haven't modified the Nerves-specific
configuration parts of your project much, the firmware validation piece should
be the main update.

## Kiosk Example

Please see the [kiosk_demo](https://github.com/nerves-web-kiosk/kiosk_demo)
project for an example of how to use this in a Nerves project.

## Troubleshooting

### Hangs on reboot when updating firmware

This was traced to an old
[rpi-eeprom](https://github.com/raspberrypi/rpi-eeprom) version. The fix is to
update to the latest. See
[`nerves_rpi_eeprom`](https://github.com/fhunleth/nerves_rpi_eeprom/) for a
rough Nerves-compatible module for updating. If it doesn't work, try the
Raspberry Pi OS tools.
