#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "msdialog.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<MsDialog>("MsDialog", 1, 0, "MsDialog");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

