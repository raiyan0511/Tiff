import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

RowLayout
{
    property var spellChoices: SpellList {}
    property var roleViewModel

    property alias spell1CurrentSelection: spell1ChoicesId.currentIndex
    property alias spell2CurrentSelection: spell2ChoicesId.currentIndex

    Label
    {
        id: role
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        text: roleViewModel.role
    }

    ComboBox
    {
        id: spell1ChoicesId
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellChoices
        onCurrentIndexChanged: roleViewModel.summ1Name = textAt(currentIndex)
    }

    ComboBox
    {
        id: spell2ChoicesId
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellChoices
        onCurrentIndexChanged: roleViewModel.summ2Name = textAt(currentIndex)
    }
}
