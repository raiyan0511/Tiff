#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>

#include "SummonersViewModel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QQuickView view;

    SummonersViewModel summonersViewModel;
    view.rootContext()->setContextProperty("summonersViewModel", &summonersViewModel);

    view.setSource(url);

    return app.exec();
}
