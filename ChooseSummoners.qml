import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Page
{
    id: pageChooseSummonersId

    ColumnLayout
    {
        anchors.fill: parent

        Text
        {
            id: titleText
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Tiff")
        }

        GridLayout
        {
            rows: 5
            columns: 1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            CustomizeSummoner
            {
                id: topId
                roleViewModel: topViewModel
            }

            CustomizeSummoner
            {
                id: jngId
                roleViewModel: jngViewModel
            }

            CustomizeSummoner
            {
                id: midId
                roleViewModel: midViewModel
            }

            CustomizeSummoner
            {
                id: adcId
                roleViewModel: adcViewModel
            }

            CustomizeSummoner
            {
                id: supId
                roleViewModel: supViewModel
            }
        }

        Button
        {
            id: goToMainScreenButtonId
            text: qsTr("Track!")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            onClicked:
            {
                pageList.currentIndex = 1
            }
        }
    }

    Connections
    {
        target: topViewModel
        onChoicesReset:
        {
            topId.spell1CurrentSelection = 0
            topId.spell2CurrentSelection = 0
        }
    }

    Connections
    {
        target: jngViewModel
        onChoicesReset:
        {
            jngId.spell1CurrentSelection = 0
            jngId.spell2CurrentSelection = 0
        }
    }

    Connections
    {
        target: midViewModel
        onChoicesReset:
        {
            midId.spell1CurrentSelection = 0
            midId.spell2CurrentSelection = 0
        }
    }

    Connections
    {
        target: adcViewModel
        onChoicesReset:
        {
            adcId.spell1CurrentSelection = 0
            adcId.spell2CurrentSelection = 0
        }
    }

    Connections
    {
        target: supViewModel
        onChoicesReset:
        {
            supId.spell1CurrentSelection = 0
            supId.spell2CurrentSelection = 0
        }
    }
}
