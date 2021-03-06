#-------------------------------------------------
#
# Project created by QtCreator 2018-11-19T19:03:22
#
#-------------------------------------------------

!AB_NOT_STANDALONE {
    message(appbase standalone)
    QT += core gui widgets
    TARGET = main
    TEMPLATE = app
    SOURCES += main.cpp

    # https://bugreports.qt.io/browse/QTBUG-27018
    equals(QMAKE_CXX, "clang++")|equals(QMAKE_CXX, "g++") {
        TARGET = bin/appbase
    }
}

#DEFINES += QT_DEPRECATED_WARNINGS
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

macx {
    # osx
    CONFIG += c++14
    DEFINES += PAJLADA_SETTINGS_BOOST_OPTIONAL
} else {
    CONFIG += c++17
    win32-msvc* {
        # win32 msvc
        QMAKE_CXXFLAGS += /std:c++17
    } else {
        # clang/gcc on linux or win32
        QMAKE_CXXFLAGS += -std=c++17
    }
}

include(../warnings.pri)
include(../lib/winsdk.pri)
include(../lib/fmt.pri)
include(../lib/boost.pri)
include(../lib/rapidjson.pri)
include(../lib/serialize.pri)
include(../lib/signals.pri)
include(../lib/settings.pri)

debug {
    DEFINES += QT_DEBUG
}

linux {
    LIBS += -lrt
    QMAKE_LFLAGS += -lrt
}

macx {
    INCLUDEPATH += /usr/local/include
    INCLUDEPATH += /usr/local/opt/openssl/include
    LIBS += -L/usr/local/opt/openssl/lib
}

SOURCES += \
    $$PWD/BaseSettings.cpp \
    $$PWD/BaseTheme.cpp \
    $$PWD/common/ChatterinoSetting.cpp \
    $$PWD/debug/Benchmark.cpp \
    $$PWD/singletons/Fonts.cpp \
    $$PWD/util/FunctionEventFilter.cpp \
    $$PWD/util/FuzzyConvert.cpp \
    $$PWD/util/WindowsHelper.cpp \
    $$PWD/widgets/BaseWidget.cpp \
    $$PWD/widgets/BaseWindow.cpp \
    $$PWD/widgets/Label.cpp \
    $$PWD/widgets/TooltipWidget.cpp \
    $$PWD/widgets/helper/Button.cpp \
    $$PWD/widgets/helper/EffectLabel.cpp \
    $$PWD/widgets/helper/SignalLabel.cpp \
    $$PWD/widgets/helper/TitlebarButton.cpp \

HEADERS += \
    $$PWD/BaseSettings.hpp \
    $$PWD/BaseTheme.hpp \
    $$PWD/common/ChatterinoSetting.hpp \
    $$PWD/common/FlagsEnum.hpp \
    $$PWD/common/Outcome.hpp \
    $$PWD/common/Singleton.hpp \
    $$PWD/debug/AssertInGuiThread.hpp \
    $$PWD/debug/Benchmark.hpp \
    $$PWD/debug/Log.hpp \
    $$PWD/singletons/Fonts.hpp \
    $$PWD/util/Clamp.hpp \
    $$PWD/util/CombinePath.hpp \
    $$PWD/util/DistanceBetweenPoints.hpp \
    $$PWD/util/FunctionEventFilter.hpp \
    $$PWD/util/FuzzyConvert.hpp \
    $$PWD/util/Helpers.hpp \
    $$PWD/util/LayoutHelper.hpp \
    $$PWD/util/PostToThread.hpp \
    $$PWD/util/RapidJsonSerializeQString.hpp \
    $$PWD/util/Shortcut.hpp \
    $$PWD/util/WindowsHelper.hpp \
    $$PWD/widgets/BaseWidget.hpp \
    $$PWD/widgets/BaseWindow.hpp \
    $$PWD/widgets/Label.hpp \
    $$PWD/widgets/TooltipWidget.hpp \
    $$PWD/widgets/helper/Button.hpp \
    $$PWD/widgets/helper/EffectLabel.hpp \
    $$PWD/widgets/helper/SignalLabel.hpp \
    $$PWD/widgets/helper/TitlebarButton.hpp \
