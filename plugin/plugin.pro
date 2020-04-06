# Copyright (c) 2012-2020 LG Electronics, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

TEMPLATE = lib
CONFIG += plugin c++11
QT += qml
TARGET = webosserviceplugin

MOC_DIR = .moc
OBJECTS_DIR = .obj

config_session {
    DEFINES += USE_LUNA_SERVICE2_SESSION_API
}

# Input
HEADERS += \
    webosserviceplugin.h \
    applicationmanagerservice.h \
    systemservice.h \
    notificationservice.h \
    settingsservice.h \
    service.h \
    lunaservicemgr.h \
    servicemodel.h

SOURCES += \
    webosserviceplugin.cpp \
    applicationmanagerservice.cpp \
    systemservice.cpp \
    notificationservice.cpp \
    settingsservice.cpp \
    service.cpp \
    lunaservicemgr.cpp \
    servicemodel.cpp

CONFIG += link_pkgconfig
PKGCONFIG = glib-2.0 luna-service2

OTHER_FILES += qmldir \
               webosserviceplugindescription.json

other_files.files = qmldir \
                    webosserviceplugindescription.json
other_files.path = $$WEBOS_INSTALL_QML/WebOSServices

target.path = $$WEBOS_INSTALL_QML/WebOSServices

INSTALLS += target other_files
