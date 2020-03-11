#pragma once

// Qt includes.
#include <QtWidgets/QWidget>
#include <QAction>

// QMapControl includes.
#include <QMapControl/QMapControl.h>

using namespace qmapcontrol;

class EnlightMeMap : public QWidget
{
    Q_OBJECT

public:
    //! Mapviewer constructor
    /*!
     * This is used to construct a Mapviewer QWidget.
     * @param parent QWidget parent ownership.
     */
    EnlightMeMap(QWidget* parent = nullptr);

    //! Destructor.
    ~EnlightMeMap() {} /// = default; @todo re-add once MSVC supports default/delete syntax.

private:
    /**
     * Handles QWidget resizing.
     * @param resize_event The QResizeEvent that occured.
     */
    void resizeEvent(QResizeEvent* resize_event);

private:
    /// The main map control.
    QMapControl* m_map_control;

};
