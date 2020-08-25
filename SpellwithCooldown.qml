import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

RowLayout
{
    property alias spellName: spellName.text
    property alias spellCooldown: spellCooldown.to

    Label
    {
        id: spellName
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    }

    ProgressBar
    {
        id: spellCooldown
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        from: 0
    }

    Button
    {
        id: button
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked:
        {
            spellCooldown.value = spellCooldown.to
            timer.restart()
        }
    }

    Timer
    {
        id: timer
        interval: 1000
        repeat: true
        running: true
        onTriggered:
        {
            spellCooldown.value -= 1.0
        }
    }
}
