# Changelog

This project does NOT follow semantic versioning. The version increases as
follows:

1. Major version updates are breaking updates to the build infrastructure.
   These should be very rare.
2. Minor version updates are made for every major Buildroot release. This
   may also include Erlang/OTP and Linux kernel updates. These are made four
   times a year shortly after the Buildroot releases.
3. Patch version updates are made for Buildroot minor releases, Erlang/OTP
   releases, and Linux kernel updates. They're also made to fix bugs and add
   features to the build infrastructure.

## v0.4.1

This is a security/bug fix release.

* Package updates
  * [Erlang/OTP 27.3.4.1](https://erlang.org/download/OTP-27.3.4.1.README.md)
  * [Buildroot 2025.02.3 (fixed 2025.02.2)](https://lore.kernel.org/buildroot/49d039c0-8121-4a91-8a69-889376f85c71@rnout.be/T/)
  * Raspberry Pi WiFi firmware 1:20240709-2~bpo12+1+rpt3
  * [rpi-libcamera v0.5.0+rpt20250429](https://github.com/raspberrypi/libcamera/releases/tag/v0.5.0%2Brpt20250429)
  * rpicam-apps 1.7.0
  * [erlinit 1.14.3](https://github.com/nerves-project/erlinit/releases/tag/v1.14.3)
  * [fwup 1.13.0](https://github.com/fwup-home/fwup/releases/tag/v1.13.0)

## v0.4.0

This is a major Buildroot update.

Please see the [nerves_system_br v1.31.0 release notes](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.31.0)
for additional information if you've forked this system.

* Changes
  * Add support for the RPi Touch Display 2
  * Update Mesa3D to fix several failures when initializing displays

* Updated dependencies
  * [Buildroot 2025.02.1](https://lore.kernel.org/buildroot/60b8483c-b717-41ce-a406-bceb71c3a089@rnout.be/T/)

## v0.3.1

This is a security/bug fix update.

* Updated dependencies
  * [Erlang/OTP 27.3.3](https://erlang.org/download/OTP-27.3.3.README)
  * [nerves_system_br v1.30.1](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.30.1)

## v0.3.0

This is a major Buildroot update.

Please see the [nerves_system_br v1.30.0 release notes](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.30.0)
for upgrade instructions if you've forked this system.

* Changes
  * Enable support for the RP1's PIO feature
  * Add REUSE compliance to help improve OSS copyright and licensing accuracy
  * Update Raspberry Pi libraries and firmware to latest releases

* Updated dependencies
  * [Erlang/OTP 27.3](https://erlang.org/download/OTP-27.3.README.md)
  * [Buildroot 2024.11.2](https://lore.kernel.org/buildroot/87v7t3nyls.fsf@dell.be.48ers.dk/T/)
  * Linux 6.6.74 (Raspberry Pi 1.20250127 release)
  * rpicam-apps 1.5.3
  * rpi-libcamera v0.3.2+rpt20241119
  * rpi-distro-firmware-nonfree 1:20230625-2+rpt3

## v0.2.1

This is a security/bug fix update.

* Changes
  * Support the CM5 and any other devices that use the BCM2712D0
  * Support the use of NVME SSDs
  * Enable the RP1 PIO driver. This likely also requires the bootloader to be
    updated to use

* Updated dependencies
  * [nerves_system_br v1.29.3](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.29.3)
  * [Buildroot 2024.08.3](https://lore.kernel.org/buildroot/874j3e17ek.fsf@dell.be.48ers.dk/T/)
  * [Erlang/OTP 27.2](https://erlang.org/download/OTP-27.2.README)
  * Linux 6.6.64 with the Raspberry Pi and PREEMPT_RT patches
  * [fwup v1.12.0](https://github.com/fwup-home/fwup/releases/tag/v1.12.0)

## v0.2.0

This is a Buildroot and Linux kernel update release.

* Updated dependencies
  * [nerves_system_br v1.29.1](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.29.1)
  * [Buildroot 2024.08.2](https://lore.kernel.org/buildroot/871pzex7gn.fsf@dell.be.48ers.dk/T/)
  * linux 6.6.51

## v0.1.2

This is a security/bug fix update.

* Updated dependencies
  * [nerves_system_br v1.28.3](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.28.3)
  * [Buildroot 2024.05.2](https://lore.kernel.org/buildroot/87zfpfh147.fsf@dell.be.48ers.dk/T/)

## v0.1.1

This is a security/bug fix update.

* Package updates
  * [nerves_system_br v1.28.2](https://github.com/nerves-project/nerves_system_br/releases/tag/v1.28.2)
  * [Buildroot 2024.05.1](https://lore.kernel.org/buildroot/87ed7xfq78.fsf@dell.be.48ers.dk/T/)
  * [Erlang/OTP 27.0.1](https://erlang.org/download/OTP-27.0.1.README)

## v0.1.0

This is an initial release to make it easier for more people to test Nerves web
kiosks on the Raspberry Pi 5. Future releases will likely be incompatible to
expand the root filesystem and this one might have some frustrating bugs.
