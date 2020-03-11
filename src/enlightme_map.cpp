#include "enlightme_map.h"

// QMapControl includes.
#include "QMapControl/src/QMapControl/LayerMapAdapter.h"
#include "QMapControl/src/QMapControl/MapAdapterOSM.h"

#include <QGridLayout>



EnlightMeMap::EnlightMeMap(QWidget* parent) : QWidget(parent)
{
    // Create a new QMapControl.
    m_map_control = new QMapControl(QSizeF(380.0, 540.0));

    // Create/add a layer with the default OSM map adapter.
    m_map_control->addLayer(std::make_shared<LayerMapAdapter>("OpenStreetMap-Layer",
                                                              std::make_shared<MapAdapterOSM>()));


    // Set the map focus and zoom to Mainz.
    m_map_control->setMapFocusPoint(PointWorldCoord(3.0, 40.0));
    m_map_control->setZoom(5);

    QGridLayout *layout = new QGridLayout;
    layout->setMargin(0);
    layout->addWidget(m_map_control);

    setLayout(layout);
}

void EnlightMeMap::resizeEvent(QResizeEvent* resize_event)
{
    // Set the new viewport size.
    m_map_control->setViewportSize(resize_event->size());
}
