# Include sample configurations.
include(Samples.pri)

# Target name.
TARGET = EnlightMeApp

# Target version.
VERSION = 0.1

# Build a library.
TEMPLATE = app

# Add header files.
HEADERS +=                  \ \
    src/enlightme_app.h \
    src/enlightme_map.h

# Add source files.
SOURCES +=                  \
    src/enlightme_app.cpp \
    src/enlightme_map.cpp \
    src/main.cpp            \

lupdate_only{
SOURCES = *.ccp \
          *.h \
          src/*.cpp \
          src/*.h \
}

TRANSLATIONS    = translations/enlightme_fr.ts \
                  translations/enlightme_ar.ts

DISTFILES += \
    LICENSE \
    README.md \
    translations/enlightme_ar.ts \
    translations/enlightme_fr.ts

RESOURCES += \
    enlightme.qrc
