#include "SummonerViewModel.h"

SummonerViewModel::SummonerViewModel(QString role):
    m_Role(role),
    m_Summ1Name(""),
    m_Summ2Name(""),
    m_Summ1Cooldown(0),
    m_Summ2Cooldown(0)
{
}

void SummonerViewModel::Reset()
{
    SetSumm1Name("");
    SetSumm2Name("");
    SetSumm1Cooldown(0);
    SetSumm2Cooldown(0);

    emit choicesReset();
}

void SummonerViewModel::SetSumm1Name(QString summName)
{
    m_Summ1Name = summName;
    SetSumm1Cooldown(m_SpellCooldownMap[summName]);
    emit summ1NameChanged();
}

void SummonerViewModel::SetSumm2Name(QString summName)
{
    m_Summ2Name = summName;
    SetSumm2Cooldown(m_SpellCooldownMap[summName]);
    emit summ2NameChanged();
}

void SummonerViewModel::SetSumm1Cooldown(int summCooldown)
{
    m_Summ1Cooldown = summCooldown;
    emit summ1CooldownChanged();
}

void SummonerViewModel::SetSumm2Cooldown(int summCooldown)
{
    m_Summ2Cooldown = summCooldown;
    emit summ2CooldownChanged();
}

QString SummonerViewModel::GetSumm1Name() const
{
    return m_Summ1Name;
}

QString SummonerViewModel::GetSumm2Name() const
{
    return m_Summ2Name;
}

int SummonerViewModel::GetSumm1Cooldown() const
{
    return m_Summ1Cooldown;
}

int SummonerViewModel::GetSumm2Cooldown() const
{
    return m_Summ2Cooldown;
}

QString SummonerViewModel::GetRole() const
{
    return m_Role;
}
