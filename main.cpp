#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>

#include "SummonerViewModel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QQuickView view;

    SummonerViewModel topViewModel("Top");
    SummonerViewModel jngViewModel("Jungle");
    SummonerViewModel midViewModel("Mid");
    SummonerViewModel adcViewModel("Adc");
    SummonerViewModel supViewModel("Support");

    view.rootContext()->setContextProperty("topViewModel", &topViewModel);
    view.rootContext()->setContextProperty("jngViewModel", &jngViewModel);
    view.rootContext()->setContextProperty("midViewModel", &midViewModel);
    view.rootContext()->setContextProperty("adcViewModel", &adcViewModel);
    view.rootContext()->setContextProperty("supViewModel", &supViewModel);

    view.setSource(url);

    return app.exec();
}

//    auto pagesMapping = MasterControllerViewModel::GetInstance().GetPageIndexMap();
