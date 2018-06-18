LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES += \
src/iperf_sctp.c \
src/iperf_locale.c \
src/timer.c \
src/units.c \
src/dscp.c \
src/cjson.c \
src/iperf_udp.c\
src/tcp_info.c\
src/iperf_api.c\
src/iperf_server_api.c\
src/iperf_auth.c\
src/iperf_util.c\
src/net.c\
src/main.c\
src/iperf_error.c\
src/iperf_client_api.c\
src/iperf_tcp.c \
../boringssl/src/decrepit/bio/base64_bio.c
         
LOCAL_C_INCLUDES +=       \
         $(LOCAL_PATH)         \
            $(LOCAL_PATH)/include \
            $(LOCAL_PATH)/src \
            external/boringssl/src/include
         
LOCAL_CFLAGS  +=  -O2
      
LOCAL_SHARED_LIBRARIES := libcrypto 
        
LOCAL_MODULE := iperf
         
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
         
include $(BUILD_EXECUTABLE)
