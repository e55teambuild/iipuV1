#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "fileio.h"
#include <QtQml>

int main(int argc, char *argv[])
{
    //system("xdotool key Num_Lock");
    QGuiApplication app(argc, argv);
    qmlRegisterType<FileIO, 1>("Rikardo_Milos", 1, 0, "SuperStar");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    system("dmesg >dmesg.txt");
    //system("cat /proc/devices > devices.txt");
    return app.exec();
}

