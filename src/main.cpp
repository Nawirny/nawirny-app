// Qt includes.
#include <QApplication>

#include <QTranslator>
#include <QLibraryInfo>
#include <QDebug>

// Local includes.
#include "enlightme_app.h"

int main(int argc, char* argv[])
{
    // Create a QApplication.
    QApplication app(argc, argv);

    QTranslator qtTranslator;
    qtTranslator.load("qt_" + QLocale::system().name(),
                      QLibraryInfo::location(QLibraryInfo::TranslationsPath));
    app.installTranslator(&qtTranslator);

    QTranslator nawirnyTranslator;
    nawirnyTranslator.load("nawirny_" + QLocale::system().name());
    app.installTranslator(&nawirnyTranslator);

//    qInfo()<<QLocale::system().name();

    // Create a Multidemo widget.
    EnlightMeMainWindow enlightMeWindow;
    enlightMeWindow.resize(380, 565);
    enlightMeWindow.setWindowTitle("Enlight.me");  // qsTr("Enlight.me Application")

    // Show the widget.
    enlightMeWindow.show();

    // Execute the application.
    return app.exec();
}
