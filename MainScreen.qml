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
                id: summoner1
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Top"
                spell1Name: topViewModel.summ1Name
                spell1Cooldown: topViewModel.summ1Cooldown
                spell2Name: topViewModel.summ2Name
                spell2Cooldown: topViewModel.summ2Cooldown
            }

            Summoner {
                id: summoner2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Jungle"
                spell1Name: jngViewModel.summ1Name
                spell1Cooldown: jngViewModel.summ1Cooldown
                spell2Name: jngViewModel.summ2Name
                spell2Cooldown: jngViewModel.summ2Cooldown
            }

            Summoner {
                id: summoner3
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Mid"
                spell1Name: midViewModel.summ1Name
                spell1Cooldown: midViewModel.summ1Cooldown
                spell2Name: midViewModel.summ2Name
                spell2Cooldown: midViewModel.summ2Cooldown
            }

            Summoner {
                id: summoner4
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Adc"
                spell1Name: adcViewModel.summ1Name
                spell1Cooldown: adcViewModel.summ1Cooldown
                spell2Name: adcViewModel.summ2Name
                spell2Cooldown: adcViewModel.summ2Cooldown
            }

            Summoner {
                id: summoner5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Support"
                spell1Name: supViewModel.summ1Name
                spell1Cooldown: supViewModel.summ1Cooldown
                spell2Name: supViewModel.summ2Name
                spell2Cooldown: supViewModel.summ2Cooldown
            }
        }

        Button {
            id: goToChoosingScreenButtonId
            text: qsTr("Choose Spells")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked:
            {
                pageList.currentIndex = 0
            }
        }
    }
}
