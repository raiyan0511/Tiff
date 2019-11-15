import QtQuick 2.1
import QtQuick.Layouts 1.12

StackLayout{
    id: pageList
    anchors.fill: parent
    currentIndex: 0

    Repeater{
        model: PageList {}

        Loader{
            source: model.url
        }
    }
}
