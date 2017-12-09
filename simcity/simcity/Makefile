ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = simcity
simcity_FILES = simcity.mm
simcity_INSTALL_PATH = /Library/PreferenceBundles
simcity_FRAMEWORKS = UIKit
simcity_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/simcity.plist$(ECHO_END)
