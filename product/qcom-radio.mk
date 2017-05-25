PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=998 \
    persist.radio.ecc_hard_count=1 \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.default_network=9,9 \
    ro.telephony.ril.config=simactivation,sim2gsmonly \
    persist.data.target=dpm1 \
    persist.radio.apm_sim_not_pwdn=1 \
    ril.subscription.types=NV,RUIM 

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/data/NsrmConfiguration.xml:system/etc/dpm/nsrm/NsrmConfiguration.xml \
    $(LOCAL_PATH)/configs/data/dpm.conf:system/etc/dpm/dpm.conf
endif
