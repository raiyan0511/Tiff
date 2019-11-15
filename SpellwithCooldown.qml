import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

RowLayout {
    property alias spellName: spellNameId.text
    property alias spellCooldown: progressBarId.to

    Text {
        id: spellNameId
    }
    ProgressBar {
        id: progressBarId
        from: 0
    }
    Button{
        id: spellButtonId
        onClicked: {
            progressBarId.value = progressBarId.to
            timerId.restart()
        }
    }
    Timer {
        id: timerId
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            progressBarId.value -= 1.0
        }
    }
}
