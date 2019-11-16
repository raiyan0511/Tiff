import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

RowLayout {
    property alias role: role.text

    property alias spell1Name: spell1.spellName
    property alias spell1Cooldown: spell1.spellCooldown

    property alias spell2Name: spell2.spellName
    property alias spell2Cooldown: spell2.spellCooldown

    Label {
        id: role
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

    SpellwithCooldown {
        id: spell1
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

    SpellwithCooldown {
        id: spell2
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }
}
