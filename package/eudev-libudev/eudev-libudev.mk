################################################################################
#
# eudev-libudev
#
################################################################################

EUDEV_LIBUDEV_VERSION = 3.2.14
EUDEV_LIBUDEV_SOURCE = eudev-$(EUDEV_LIBUDEV_VERSION).tar.gz
EUDEV_LIBUDEV_SITE = https://github.com/eudev-project/eudev/releases/download/v$(EUDEV_LIBUDEV_VERSION)
EUDEV_LIBUDEV_LICENSE = LGPL-2.1+
EUDEV_LIBUDEV_LICENSE_FILES = COPYING
EUDEV_LIBUDEV_INSTALL_STAGING = YES

EUDEV_LIBUDEV_CONF_OPTS = \
	--disable-programs \
	--disable-hwdb \
	--disable-rule-generator \
	--disable-manpages \
	--disable-kmod \
	--disable-blkid \
	--disable-selinux

EUDEV_LIBUDEV_DEPENDENCIES = host-pkgconf
EUDEV_LIBUDEV_PROVIDES = udev

$(eval $(autotools-package))
