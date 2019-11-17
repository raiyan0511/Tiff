import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

RowLayout {
    property var spellChoices: SpellList {}
    property var roleViewModel

    Label {
        id: role
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        text: roleViewModel.role
    }

    ComboBox {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellChoices
        onCurrentIndexChanged: roleViewModel.summ1Name = textAt(currentIndex)
    }

    ComboBox {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellChoices
        onCurrentIndexChanged: roleViewModel.summ2Name = textAt(currentIndex)
    }
}
