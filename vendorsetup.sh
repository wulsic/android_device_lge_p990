#
# Copyright 2012 The Android Open Source Project
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
#

add_lunch_combo omni_p990-userdebug

echo ""
echo "Applying patches for P990"
echo ""

echo "Apply patch to frameworks/native"
echo -n "Apply patch 0002-DisplayDevice-Backwards-compatibility-with-old-EGL.patch"
(cd frameworks/native; git am ../../device/lge/p990/patches/0002-DisplayDevice-Backwards-compatibility-with-old-EGL.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
       echo "     [DONE]"
else
       (cd frameworks/native; git am --abort)
       echo "     [FAIL]"
fi

echo "Apply patch to frameworks/native"
echo -n "Apply patch 0001-Fix-layer-dump-for-tegra2.patch"
(cd frameworks/native; git am ../../device/lge/p990/patches/0001-Fix-layer-dump-for-tegra2.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
       echo "     [DONE]"
else
       (cd frameworks/native; git am --abort)
       echo "     [FAIL]"
fi

echo "Apply patch to bionic"
echo -n "Apply patch 0001-Non-Neon-Cortex-A9-bionic.patch"
(cd bionic; git am ../device/lge/p990/patches/0001-Non-Neon-Cortex-A9-bionic.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
       echo "     [DONE]"
else
       (cd bionic; git am --abort)
       echo "     [FAIL]"
fi

echo "Apply patch to frameworks/av"
echo -n "Apply patch 0001-ifdef-for-ICS-Audio-Blob-compatibility.patch"
(cd frameworks/av; git am ../../device/lge/p990/patches/0001-ifdef-for-ICS-Audio-Blob-compatibility.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd frameworks/av; git am --abort)
	echo "     [FAIL]"
fi

echo -n "Apply patch 0002-Add-missing-functions-and-signatures-for-older-OMX-v.patch"
(cd frameworks/av; git am ../../device/lge/p990/patches/0002-Add-missing-functions-and-signatures-for-older-OMX-v.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd frameworks/av; git am --abort)
	echo "     [FAIL]"
fi

echo "Apply patch to hardware/libhardware"
echo -n "Apply patch 0001-Star-audio-patch.patch"
(cd hardware/libhardware; git am ../../device/lge/p990/patches/0001-Star-audio-patch.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd hardware/libhardware; git am --abort)
	echo "     [FAIL]"
fi

echo "Apply patch to build/core"
echo -n "0001-Disable-block-based-ota.patch"
(cd build/core; git am ../../device/lge/p990/patches/0001-Disable-block-based-ota.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
       echo "     [DONE]"
else
       (cd build/core; git am --abort)
       echo "     [FAIL]"
fi
