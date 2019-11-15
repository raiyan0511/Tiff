import QtQuick 2.0
import QtQuick.Layouts 1.0

RowLayout {
    property alias spell1Name: summonerSpell1.spellName
    property alias spell1Cooldown: summonerSpell1.spellCooldown
    property alias spell2Name: summonerSpell2.spellName
    property alias spell2Cooldown: summonerSpell2.spellCooldown

    width: parent.width

    SpellwithCooldown {
        id: summonerSpell1
    }
    SpellwithCooldown {
        id: summonerSpell2
    }
}
