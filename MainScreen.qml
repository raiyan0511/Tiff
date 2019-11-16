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
                spell1Name: summonersViewModel.topSumm1Name
                spell1Cooldown: summonersViewModel.topSumm1Cooldown
                spell2Name: summonersViewModel.topSumm2Name
                spell2Cooldown: summonersViewModel.topSumm2Cooldown
            }

            Summoner {
                id: summoner2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Jungle"
                spell1Name: summonersViewModel.jngSumm1Name
                spell1Cooldown: summonersViewModel.jngSumm1Cooldown
                spell2Name: summonersViewModel.jngSumm2Name
                spell2Cooldown: summonersViewModel.jngSumm2Cooldown
            }

            Summoner {
                id: summoner3
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Mid"
                spell1Name: summonersViewModel.midSumm1Name
                spell1Cooldown: summonersViewModel.midSumm1Cooldown
                spell2Name: summonersViewModel.midSumm2Name
                spell2Cooldown: summonersViewModel.midSumm2Cooldown
            }

            Summoner {
                id: summoner4
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Adc"
                spell1Name: summonersViewModel.adcSumm1Name
                spell1Cooldown: summonersViewModel.adcSumm1Cooldown
                spell2Name: summonersViewModel.adcSumm2Name
                spell2Cooldown: summonersViewModel.adcSumm2Cooldown
            }

            Summoner {
                id: summoner5
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                role: "Support"
                spell1Name: summonersViewModel.supSumm1Name
                spell1Cooldown: summonersViewModel.supSumm1Cooldown
                spell2Name: summonersViewModel.supSumm2Name
                spell2Cooldown: summonersViewModel.supSumm2Cooldown
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
