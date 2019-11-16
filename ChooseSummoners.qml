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
            columns: 3
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                text: "Top"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.topSumm1Name = textAt(currentIndex)
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.topSumm2Name = textAt(currentIndex)
            }

            Label {
                text: "Jungle"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.jngSumm1Name = textAt(currentIndex)
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.jngSumm2Name = textAt(currentIndex)
            }

            Label {
                text: "Mid"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.midSumm1Name = textAt(currentIndex)
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.midSumm2Name = textAt(currentIndex)
            }

            Label {
                text: "Adc"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.adcSumm1Name = textAt(currentIndex)
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.adcSumm2Name = textAt(currentIndex)
            }

            Label {
                text: "Support"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.supSumm1Name = textAt(currentIndex)
            }

            ComboBox {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model: SpellList {}
                onCurrentIndexChanged: summonersViewModel.supSumm2Name = textAt(currentIndex)
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
