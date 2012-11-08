greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG  += qt
CONFIG  -= debug_and_release
QT      += core gui

DESTDIR      = $$OUT_PWD/out
OBJECTS_DIR  = $$OUT_PWD/obj
RCC_DIR      = $$OUT_PWD/rcc
UI_DIR       = $$OUT_PWD/ui
ROOT         = $$PWD/..
SRC_ROOT     = $$PWD              # root of src/ folder
OUTPUT_ROOT  = $$OUT_PWD/..       # root of output folder (usually target/debug or target/release)

message(PWD:          $$PWD)
message(ROOT:         $$ROOT)
message(DESTDIR:      $$DESTDIR)
message(OUT_PWD:      $$OUT_PWD)
message(OBJECTS_DIR:  $$OBJECTS_DIR)
message(RCC_DIR:      $$RCC_DIR)
message(UI_DIR:       $$UI_DIR)
message(SRC_ROOT:     $$SRC_ROOT)
message(OUTPUT_ROOT:  $$OUTPUT_ROOT)

# libs paths:
LIBS += -L$$OUTPUT_ROOT/gui/out

# include paths:
INCLUDEPATH += $$ROOT/libs/qjson/include
LIBS += -L$$ROOT/libs/qjson \
        -lqjson
