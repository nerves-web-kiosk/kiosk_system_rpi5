# Kiosk System for Raspberry Pi 5 Model B (64-bit)

[![Hex version](https://img.shields.io/hexpm/v/kiosk_system_rpi5.svg "Hex version")](https://hex.pm/packages/kiosk_system_rpi5)
[![CI](https://github.com/nerves-web-kiosk/kiosk_system_rpi5/actions/workflows/ci.yml/badge.svg)](https://github.com/nerves-web-kiosk/kiosk_system_rpi5/actions/workflows/ci.yml)
[![REUSE status](https://api.reuse.software/badge/github.com/nerves-web-kiosk/kiosk_system_rpi5)](https://api.reuse.software/info/github.com/nerves-web-kiosk/kiosk_system_rpi5)

*This is the v0 maintenance branch. It is still maintained and is the
recommended branch for most users. Active development is in the `main` branch.*

This is a specialised version of the
[nerves_system_rpi5](https://github.com/nerves-project/nerves_system_rpi5) that
includes the required packages to run a fullscreen web browser in kiosk mode.

This is a work-in-progress to bring a maintained open source web kiosk back to
Nerves. Thanks to the following people and their code that they shared:

- [Tim Cooper's RPi4 Kiosk](https://github.com/coop/kiosk_system_rpi4)
- [Tom Winkler's reTerminal DM Kiosk](https://github.com/formrausch/frio_rpi4)

The documentation here is out of date, but the example works.

## Using

The most common way of using this Nerves System is create a project with `mix
nerves.new my_kiosk_app --target rpi5` and to export `MIX_TARGET=rpi5`.

Then, change the rpi5 system dependency to `{:kiosk_system_rpi5, "~> 0.1.0",
runtime: false, targets: :rpi5}`.

## Kiosk Example

Please see the
[kiosk_example](https://github.com/nerves-web-kiosk/kiosk_example) project for
an example of how to use this in a Nerves project.

## RP1 PIO

The `rpi1-pio` device driver allows use of the PIO hardware using
[`piolib`](https://github.com/raspberrypi/utils/tree/master/piolib). If you
don't see `/dev/pio0`, the most likely cause is that you need to update your
Raspberry Pi's boot EEPROM. See
[rpi-eeprom](https://github.com/raspberrypi/rpi-eeprom) for binaries. It may be
easier to upgrade the EEPROM via RaspberryPi OS if the instructions aren't
clear.
