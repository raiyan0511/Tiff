import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

RowLayout {
    property var roleViewModel

    Label {
        id: role
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        text: roleViewModel.role
    }

    SpellwithCooldown {
        id: spell1
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        spellName: roleViewModel.summ1Name
        spellCooldown: roleViewModel.summ1Cooldown
    }

    SpellwithCooldown {
        id: spell2
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        spellName: roleViewModel.summ2Name
        spellCooldown: roleViewModel.summ2Cooldown
    }
}
