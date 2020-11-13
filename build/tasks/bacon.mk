# Copyright (C) 2017 Unlegacy-Android
#           (C) 2017 The LineageOS Project
#           (C) 2020 The exTHmUI Project
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

# -----------------------------------------------------------------
# exTHm OTA update package

EXTHM_TARGET_PACKAGE := $(PRODUCT_OUT)/exthm-$(EXTHM_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(EXTHM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(EXTHM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(EXTHM_TARGET_PACKAGE).md5sum
	@echo ${CL_CYN}"  "${CL_RST}
	@echo -e ${CL_CYN}"===========-Package Build Complete-==========="${CL_RST}
	@echo -e ${CL_CYN}"Package File: $(EXTHM_TARGET_PACKAGE)" >&2 ${CL_RST}
	@echo -e ${CL_CYN}"MD5: "${CL_MAG}" `cat $(EXTHM_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_CYN}"Size:"${CL_MAG}" `ls -lah $(EXTHM_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ${CL_CYN}"exTHmUI -- Based on LineageOS(P/Q) / AOSP(R)"${CL_RST}
	@echo -e ${CL_CYN}"Visit our website https://exthmui.cn or our  "${CL_RST}
	@echo -e ${CL_CYN}"source repo https://github.com/exthmui for "${CL_RST}
	@echo -e ${CL_CYN}"more information.  "${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}
	@echo -e ${CL_CYN}"Special Thanks:cjybyjk, Color-yourself, KevinZonda, "${CL_RST}
	@echo -e ${CL_CYN}"kmou424, GoogleChinaCEO, ISNing, and all the other "${CL_RST}
	@echo -e ${CL_CYN}"individuals and organizations that contribute!"${CL_RST}
	@echo -e ${CL_CYN}"==============================================="${CL_RST}

