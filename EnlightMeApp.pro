# Include sample configurations.
#include(Samples.pri)
QT +=                               \
    network                         \
    widgets

# Target name.
TARGET = EnlightMeApp

# Target version.
VERSION = 0.1

# Build a library.
TEMPLATE = app

# Add header files.
HEADERS +=                  \ \
    QMapControl/src/QMapControl/GPS_Position.h \
    QMapControl/src/QMapControl/Geometry.h \
    QMapControl/src/QMapControl/GeometryLineString.h \
    QMapControl/src/QMapControl/GeometryPoint.h \
    QMapControl/src/QMapControl/GeometryPointArrow.h \
    QMapControl/src/QMapControl/GeometryPointCircle.h \
    QMapControl/src/QMapControl/GeometryPointImage.h \
    QMapControl/src/QMapControl/GeometryPointImageScaled.h \
    QMapControl/src/QMapControl/GeometryPointShape.h \
    QMapControl/src/QMapControl/GeometryPointShapeScaled.h \
    QMapControl/src/QMapControl/GeometryPolygon.h \
    QMapControl/src/QMapControl/GeometryPolygonImage.h \
    QMapControl/src/QMapControl/GeometryWidget.h \
    QMapControl/src/QMapControl/ImageManager.h \
    QMapControl/src/QMapControl/Layer.h \
    QMapControl/src/QMapControl/LayerGeometry.h \
    QMapControl/src/QMapControl/LayerMapAdapter.h \
    QMapControl/src/QMapControl/MapAdapter.h \
    QMapControl/src/QMapControl/MapAdapterGoogle.h \
    QMapControl/src/QMapControl/MapAdapterOSM.h \
    QMapControl/src/QMapControl/MapAdapterTile.h \
    QMapControl/src/QMapControl/MapAdapterWMS.h \
    QMapControl/src/QMapControl/MapAdapterYahoo.h \
    QMapControl/src/QMapControl/NetworkManager.h \
    QMapControl/src/QMapControl/Point.h \
    QMapControl/src/QMapControl/Projection.h \
    QMapControl/src/QMapControl/ProjectionEquirectangular.h \
    QMapControl/src/QMapControl/ProjectionSphericalMercator.h \
    QMapControl/src/QMapControl/QMapControl.h \
    QMapControl/src/QMapControl/QProgressIndicator.h \
    QMapControl/src/QMapControl/QuadTreeContainer.h \
    QMapControl/src/QMapControl/qmapcontrol_global.h \
    src/enlightme_app.h \
    src/enlightme_map.h

# Add source files.
SOURCES +=                  \
    QMapControl/src/QMapControl/GPS_Position.cpp \
    QMapControl/src/QMapControl/Geometry.cpp \
    QMapControl/src/QMapControl/GeometryLineString.cpp \
    QMapControl/src/QMapControl/GeometryPoint.cpp \
    QMapControl/src/QMapControl/GeometryPointArrow.cpp \
    QMapControl/src/QMapControl/GeometryPointCircle.cpp \
    QMapControl/src/QMapControl/GeometryPointImage.cpp \
    QMapControl/src/QMapControl/GeometryPointImageScaled.cpp \
    QMapControl/src/QMapControl/GeometryPointShape.cpp \
    QMapControl/src/QMapControl/GeometryPointShapeScaled.cpp \
    QMapControl/src/QMapControl/GeometryPolygon.cpp \
    QMapControl/src/QMapControl/GeometryPolygonImage.cpp \
    QMapControl/src/QMapControl/GeometryWidget.cpp \
    QMapControl/src/QMapControl/ImageManager.cpp \
    QMapControl/src/QMapControl/Layer.cpp \
    QMapControl/src/QMapControl/LayerGeometry.cpp \
    QMapControl/src/QMapControl/LayerMapAdapter.cpp \
    QMapControl/src/QMapControl/MapAdapter.cpp \
    QMapControl/src/QMapControl/MapAdapterGoogle.cpp \
    QMapControl/src/QMapControl/MapAdapterOSM.cpp \
    QMapControl/src/QMapControl/MapAdapterTile.cpp \
    QMapControl/src/QMapControl/MapAdapterWMS.cpp \
    QMapControl/src/QMapControl/MapAdapterYahoo.cpp \
    QMapControl/src/QMapControl/NetworkManager.cpp \
    QMapControl/src/QMapControl/Projection.cpp \
    QMapControl/src/QMapControl/ProjectionEquirectangular.cpp \
    QMapControl/src/QMapControl/ProjectionSphericalMercator.cpp \
    QMapControl/src/QMapControl/QMapControl.cpp \
    QMapControl/src/QMapControl/QProgressIndicator.cpp \
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
    src/ressources/icons/config.png \
    translations/enlightme_ar.ts \
    translations/enlightme_fr.ts

RESOURCES += \
    enlightme.qrc \
    enlightme.qrc

SUBDIRS += \
    QMapControl/QMapControl.pro \
