import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Page {
    id: pageChooseSummonersId

    ColumnLayout {
        anchors.fill: parent

        Text {
            id: titleText
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Tiff")
        }

        GridLayout {
            rows: 5
            columns: 1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            CustomizeSummoner{
                roleViewModel: topViewModel
            }

            CustomizeSummoner{
                roleViewModel: jngViewModel
            }

            CustomizeSummoner{
                roleViewModel: midViewModel
            }

            CustomizeSummoner{
                roleViewModel: adcViewModel
            }

            CustomizeSummoner{
                roleViewModel: supViewModel
            }
        }

        Button {
            id: goToMainScreenButtonId
            text: qsTr("Track!")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked:
            {
                pageList.currentIndex = 1
            }
        }
    }
}
