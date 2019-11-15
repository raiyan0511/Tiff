import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Page {
    id: pageChooseSummonersId

    GridLayout {
        anchors.fill: parent
        rows: 5
        columns: 2

        TextField {
            id: topSumm1Name
            Layout.row: 0
            Layout.column: 0
            onTextChanged: summonersViewModel.topSumm1Name = topSumm1Name.text
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        TextField {
            id: topSumm2Name
            Layout.row: 0
            Layout.column: 1
            onTextChanged: summonersViewModel.topSumm2Name = topSumm2Name.text
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

                TextField {
                    id: jngSumm1Name
                    Layout.row: 1
                    Layout.column: 0
                    onTextChanged: summonersViewModel.jngSumm1Name = jngSumm1Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: jngSumm2Name
                    Layout.row: 1
                    Layout.column: 1
                    onTextChanged: summonersViewModel.jngSumm2Name = jngSumm2Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: midSumm1Name
                    Layout.row: 2
                    Layout.column: 0
                    onTextChanged: summonersViewModel.midSumm1Name = midSumm1Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: midSumm2Name
                    Layout.row: 2
                    Layout.column: 1
                    onTextChanged: summonersViewModel.midSumm2Name = midSumm2Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: adcSumm1Name
                    Layout.row: 3
                    Layout.column: 0
                    onTextChanged: summonersViewModel.adcSumm1Name = adcSumm1Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: adcSumm2Name
                    Layout.row: 3
                    Layout.column: 1
                    onTextChanged: summonersViewModel.adcSumm2Name = adcSumm2Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: supSumm1Name
                    Layout.row: 4
                    Layout.column: 0
                    onTextChanged: summonersViewModel.supSumm1Name = supSumm1Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                TextField {
                    id: supSumm2Name
                    Layout.row: 4
                    Layout.column: 1
                    onTextChanged: summonersViewModel.supSumm2Name = supSumm2Name.text
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

    }
    Item {
        Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
        Layout.fillHeight: false
        Layout.fillWidth: false
        Layout.preferredHeight: parent.height / 10
        Layout.preferredWidth: parent.width / 1.5

        Button {
            id: createUserButton
            Layout.fillHeight: false
            Layout.fillWidth: false
            Layout.preferredHeight: parent.height * 0.75
            Layout.preferredWidth: parent.width / 4

            text: qsTr("Go to Interface")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked:
            {
                pageList.currentIndex = 1
            }
            Keys.onReturnPressed:
            {
            }
        }
    }
}

