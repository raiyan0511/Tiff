import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

RowLayout {
    property alias role: role.text
    property var spellListModel
    property var roleViewModel

    Label {
        id: role
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

    ComboBox {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellListModel
        onCurrentIndexChanged: roleViewModel.summ1Name = textAt(currentIndex)
    }

    ComboBox {
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        model: spellListModel
        onCurrentIndexChanged: roleViewModel.summ2Name = textAt(currentIndex)
    }
}
