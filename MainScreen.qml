import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    GridLayout {
        anchors.fill: parent
        rows: 5
        columns: 1

        Summoner {
            id: summoner1
            Layout.row: 0
            spell1Name: summonersViewModel.topSumm1Name
            spell1Cooldown: summonersViewModel.topSumm1Cooldown
            spell2Name: summonersViewModel.topSumm2Name
            spell2Cooldown: summonersViewModel.topSumm2Cooldown
        }

        Summoner {
            id: summoner2
            Layout.row: 1
            spell1Name: summonersViewModel.jngSumm1Name
            spell1Cooldown: summonersViewModel.jngSumm1Cooldown
            spell2Name: summonersViewModel.jngSumm2Name
            spell2Cooldown: summonersViewModel.jngSumm2Cooldown
        }

        Summoner {
            id: summoner3
            Layout.row: 2
            spell1Name: summonersViewModel.midSumm1Name
            spell1Cooldown: summonersViewModel.midSumm1Cooldown
            spell2Name: summonersViewModel.midSumm2Name
            spell2Cooldown: summonersViewModel.midSumm2Cooldown
        }

        Summoner {
            id: summoner4
            Layout.row: 3
            spell1Name: summonersViewModel.adcSumm1Name
            spell1Cooldown: summonersViewModel.adcSumm1Cooldown
            spell2Name: summonersViewModel.adcSumm2Name
            spell2Cooldown: summonersViewModel.adcSumm2Cooldown
        }

        Summoner {
            id: summoner5
            Layout.row: 4
            spell1Name: summonersViewModel.supSumm1Name
            spell1Cooldown: summonersViewModel.supSumm1Cooldown
            spell2Name: summonersViewModel.supSumm2Name
            spell2Cooldown: summonersViewModel.supSumm2Cooldown
        }
    }
}
