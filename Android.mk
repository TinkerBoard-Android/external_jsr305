# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

# Target library.
include $(CLEAR_VARS)
LOCAL_MODULE := jsr305
LOCAL_SDK_VERSION := 8
LOCAL_SRC_FILES := $(call all-java-files-under, ri/src/main/java)
include $(BUILD_STATIC_JAVA_LIBRARY)

# Also build a host side library (Java)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under, ri/src/main/java)
LOCAL_MODULE := jsr305lib
include $(BUILD_HOST_JAVA_LIBRARY)

# Also build a host side library (Dalvik)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under, ri/src/main/java)
LOCAL_MODULE := jsr305-hostdex
include $(BUILD_HOST_DALVIK_JAVA_LIBRARY)
