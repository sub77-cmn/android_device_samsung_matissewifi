# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := matissewifi

DEVICE_PATH := device/samsung/matissewifi

# Audio
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Radio
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(PWD)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
TARGET_KERNEL_SOURCE := kernel/samsung/ks01lteskt
TARGET_KERNEL_CONFIG := cyanogenmod_matissewifi_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562643968
BOARD_CACHEIMAGE_PARTITION_SIZE := 218103808
TARGET_USERIMAGES_USE_F2FS := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true
