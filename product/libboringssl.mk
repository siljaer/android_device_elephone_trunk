# Add libboringssl-compat.so to provide BIO_f_base64
TARGET_REQUIRES_B64_COMPAT = true
PRODUCT_PACKAGES += \
    libboringssl-compat
