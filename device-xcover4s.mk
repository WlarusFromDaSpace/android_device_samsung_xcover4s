$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aost_base_telephony.mk)

PRODUCT_PLATFORM := exynos7885

AB_OTA_UPDATER := false

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_PACKAGES += \
		    tzdata_twrp

PRODUCT_PACKAGES += \
		    android.hardware.boot@1.0-impl \
		    android.hardware.boot@1.0-service \
		    android.hardware.boot@1.0-impl-wrapper.recovery \
		    android.hardware.boot@1.0-impl-wrapper \
		    android.hardware.boot@1.0-impl.recovery \
		    bootctrl.$(PRODUCT_PLATFORM) \
		    bootctrl.$(PRODUCT_PLATFORM).recovery

PRODUCT_SOONG_NAMESPACES += \
			    $(LOCAL_PATH)

PRODUCT_PROPERTY_OVERRIDES += \
			      ro.vendor.build.security_path=2099-12-31
