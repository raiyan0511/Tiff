import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Page {
    id: pageChooseSummonersId

    property var spellChoices: SpellList {}

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
                role: "Top"
                roleViewModel: topViewModel
                spellListModel: spellChoices
            }

            CustomizeSummoner{
                role: "Jungle"
                roleViewModel: jngViewModel
                spellListModel: spellChoices
            }

            CustomizeSummoner{
                role: "Mid"
                roleViewModel: midViewModel
                spellListModel: spellChoices
            }

            CustomizeSummoner{
                role: "Adc"
                roleViewModel: adcViewModel
                spellListModel: spellChoices
            }

            CustomizeSummoner{
                role: "Support"
                roleViewModel: supViewModel
                spellListModel: spellChoices
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
