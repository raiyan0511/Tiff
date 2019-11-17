import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Page {
    id: pageMainScreenId

    ColumnLayout {
        anchors.fill: parent

        Text {
            id: titleText
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Tiff")
        }

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            rows: 5
            columns: 1

            Summoner {
                id: top
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roleViewModel: topViewModel
            }

            Summoner {
                id: jng
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roleViewModel: jngViewModel
            }

            Summoner {
                id: mid
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roleViewModel: midViewModel
            }

            Summoner {
                id: adc
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roleViewModel: adcViewModel
            }

            Summoner {
                id: sup
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                roleViewModel: supViewModel
            }
        }

        Button {
            id: goToChoosingScreenButtonId
            text: qsTr("Choose Spells")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked:
            {
                topViewModel.reset()
                jngViewModel.reset()
                midViewModel.reset()
                adcViewModel.reset()
                supViewModel.reset()

                pageList.currentIndex = 0
            }
        }
    }
}
