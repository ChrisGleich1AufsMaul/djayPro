TARGET := iphone:clang:latest:15.0
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk
INSTALL_TARGET_PROCESSES = com.algoriddim.djay-iphone-free Preferences
ARCHS = arm64 arm64e
DEBUG = 1
FINALPACKAGE = 0
THEOS_DEVICE_IP = 192.168.1.94

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = djayPro

djayPro_FILES = Tweak.x
djayPro_CFLAGS = -fobjc-arc -Wdeprecated-declarations -Wno-deprecated-declarations


include $(THEOS_MAKE_PATH)/tweak.mk
# SUBPROJECTS += settings
# include $(THEOS_MAKE_PATH)/aggregate.mk