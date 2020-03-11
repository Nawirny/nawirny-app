#include "enlightme_app.h"

#include <QtGui>
#include <QWidget>
#include <QStackedLayout>
#include <QGridLayout>
#include <QLabel>
#include <QTableWidget>

const int STACK_INDEX_MAP = 0;
const int STACK_INDEX_DATA = 1;

EnlightMeMainWindow::EnlightMeMainWindow(QWidget* parent)
    : QMainWindow(parent),
      m_stack_index(STACK_INDEX_MAP)
{

    // Create a new QMapControl.
    m_map_control = new EnlightMeMap();

    // Table for data
    QTableWidget *tableWidget = new QTableWidget(12, 3, this);

    // Stack to switch between map and data
    stackedLayout = new QStackedLayout;
    stackedLayout->addWidget(m_map_control);
    stackedLayout->addWidget(tableWidget);
    stackedLayout->setCurrentIndex(m_stack_index);


    // Label for the application title
    QLabel *titleLabel = new QLabel(this);
    titleLabel->setFrameStyle(QFrame::NoFrame | QFrame::Plain);
    titleLabel->setText("Enlight.me - Location Enabled Insights");     // qsTr
    titleLabel->setAlignment(Qt::AlignCenter | Qt::AlignLeft);
    titleLabel->setMinimumHeight(40);


    m_button = new QPushButton;
    m_button->setMaximumSize(40,40);
    m_button->setIcon(QIcon(":/src/ressources/icons/config.png"));
    m_button->setIconSize(QSize(38, 38));
    connect(m_button, SIGNAL (released()), this, SLOT (handleSwapButton()));


    // Widget for stacked view
    QWidget *stackWidget = new QWidget();
    stackWidget->setLayout(stackedLayout);

    // GridLayout for the main Window
    QGridLayout *gridLayout = new QGridLayout;
    gridLayout->setMargin(0);
    gridLayout->addWidget(titleLabel,0,0);
    gridLayout->addWidget(m_button,0,1);
    gridLayout->addWidget(stackWidget,1,0,-1,2);

    // Set layout in QWidget
    QWidget *mainWindow = new QWidget();
    mainWindow->setLayout(gridLayout);

    // Show QMapControl in QMainWindow.
    setCentralWidget(mainWindow);
}


void EnlightMeMainWindow::handleSwapButton()
{
   m_stack_index = (m_stack_index == STACK_INDEX_MAP) ?  STACK_INDEX_DATA : STACK_INDEX_MAP ;
   stackedLayout->setCurrentIndex(m_stack_index);
}

