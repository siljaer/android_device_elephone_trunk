# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 audit=0,enforcing=0,androidboot.selinux=permissive isolcpu
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_SOURCE := kernel/qcom/msm8916
TARGET_KERNEL_CONFIG := halium_trunk_defconfig
#TARGET_COMPILE_WITH_MSM_KERNEL := true

#TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
