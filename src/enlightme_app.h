#pragma once

// Qt includes.
#include <QtWidgets/QMainWindow>
#include <QStackedLayout>

#include "enlightme_map.h"


class EnlightMeMainWindow : public QMainWindow
{
    Q_OBJECT

public:
    /*!
     * This is used to construct a MainWindow QWidget.
     * @param parent QWidget parent ownership.
     */
    EnlightMeMainWindow(QWidget* parent = 0);

    //! Destructor.
    ~EnlightMeMainWindow() {} /// = default; @todo re-add once MSVC supports default/delete syntax.

private slots:
   void handleSwapButton();

private:
    /// The main map control.
    EnlightMeMap* m_map_control;

    QPushButton *m_button;
    QStackedLayout *stackedLayout;

    /// Indicates if we are in note adding mode.
    int m_stack_index;

};
