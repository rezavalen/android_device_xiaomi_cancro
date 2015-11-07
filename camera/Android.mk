LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_C_INCLUDES := \
    frameworks/native/include/media/openmax \
    system/media/camera/include

LOCAL_STATIC_LIBRARIES := libbase libarect
LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils libcutils libsensor \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0

LOCAL_MODULE := camera.msm8974
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    frameworks/av/include

LOCAL_SRC_FILES := \
    CameraParameters.cpp \
    CameraParameters_EXT.cpp

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_MODULE := libcamera_parameters_ext
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
