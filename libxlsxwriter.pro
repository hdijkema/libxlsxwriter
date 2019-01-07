#-------------------------------------------------
#
# Project created by QtCreator 2019-01-07T02:38:33
#
#-------------------------------------------------

QT       -= core gui

TARGET = libxlsxwriter
TEMPLATE = lib
win32: CONFIG += staticlib

DEFINES += LIBXLSXWRITER_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/include

win32: INCLUDEPATH += $$PWD/../libraries/include
win32: LIBS += -L$$PWD/../libraries/64bit/lib -lzlib

#include(src/src.pri)
#include(third_party/third_party.pri)

unix {
    target.path = /usr/lib
    INSTALLS += target
}

SOURCES += \
    src/app.c \
    src/chart.c \
    src/chartsheet.c \
    src/content_types.c \
    src/core.c \
    src/custom.c \
    src/drawing.c \
    src/format.c \
    src/hash_table.c \
    src/packager.c \
    src/relationships.c \
    src/shared_strings.c \
    src/styles.c \
    src/theme.c \
    src/utility.c \
    src/workbook.c \
    src/worksheet.c \
    src/xmlwriter.c \
    third_party/minizip/ioapi.c \
    third_party/minizip/iowin32.c \
    third_party/minizip/zip.c \
    third_party/tmpfileplus/tmpfileplus.c

HEADERS += \
    third_party/minizip/ioapi.h \
    third_party/minizip/iowin32.h \
    third_party/minizip/zip.h \
    third_party/tmpfileplus/tmpfileplus.h \
    include/xlsxwriter.h \
    include/xlsxwriter/app.h \
    include/xlsxwriter/chart.h \
    include/xlsxwriter/chartsheet.h \
    include/xlsxwriter/common.h \
    include/xlsxwriter/content_types.h \
    include/xlsxwriter/core.h \
    include/xlsxwriter/custom.h \
    include/xlsxwriter/drawing.h \
    include/xlsxwriter/format.h \
    include/xlsxwriter/hash_table.h \
    include/xlsxwriter/packager.h \
    include/xlsxwriter/relationships.h \
    include/xlsxwriter/shared_strings.h \
    include/xlsxwriter/styles.h \
    include/xlsxwriter/theme.h \
    include/xlsxwriter/utility.h \
    include/xlsxwriter/workbook.h \
    include/xlsxwriter/worksheet.h \
    include/xlsxwriter/xmlwriter.h \
    include/xlsxwriter/third_party/ioapi.h \
    include/xlsxwriter/third_party/queue.h \
    include/xlsxwriter/third_party/tmpfileplus.h \
    include/xlsxwriter/third_party/tree.h \
    include/xlsxwriter/third_party/zip.h
