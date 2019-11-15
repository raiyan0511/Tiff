#include "SummonersViewModel.h"

SummonersViewModel::SummonersViewModel():
    m_TopSumm1Name(""),
    m_TopSumm2Name(""),
    m_JngSumm1Name(""),
    m_JngSumm2Name(""),
    m_MidSumm1Name(""),
    m_MidSumm2Name(""),
    m_AdcSumm1Name(""),
    m_AdcSumm2Name(""),
    m_SupSumm1Name(""),
    m_SupSumm2Name(""),
    m_TopSumm1Cooldown(0),
    m_TopSumm2Cooldown(0),
    m_JngSumm1Cooldown(0),
    m_JngSumm2Cooldown(0),
    m_MidSumm1Cooldown(0),
    m_MidSumm2Cooldown(0),
    m_AdcSumm1Cooldown(0),
    m_AdcSumm2Cooldown(0),
    m_SupSumm1Cooldown(0),
    m_SupSumm2Cooldown(0)
{
}

void SummonersViewModel::Reset()
{
    SetTopSumm1Name("");
    SetTopSumm2Name("");
    SetJngSumm1Name("");
    SetJngSumm2Name("");
    SetMidSumm1Name("");
    SetMidSumm2Name("");
    SetAdcSumm1Name("");
    SetAdcSumm2Name("");
    SetSupSumm1Name("");
    SetSupSumm2Name("");

    SetTopSumm1Cooldown(0);
    SetTopSumm2Cooldown(0);
    SetJngSumm1Cooldown(0);
    SetJngSumm2Cooldown(0);
    SetMidSumm1Cooldown(0);
    SetMidSumm2Cooldown(0);
    SetAdcSumm1Cooldown(0);
    SetAdcSumm2Cooldown(0);
    SetSupSumm1Cooldown(0);
    SetSupSumm2Cooldown(0);
}

//name getters
QString SummonersViewModel::GetTopSumm1Name() const
{
    return m_TopSumm1Name;
}

QString SummonersViewModel::GetTopSumm2Name() const
{
    return m_TopSumm2Name;
}

QString SummonersViewModel::GetJngSumm1Name() const
{
    return m_JngSumm1Name;
}

QString SummonersViewModel::GetJngSumm2Name() const
{
    return m_JngSumm2Name;
}

QString SummonersViewModel::GetMidSumm1Name() const
{
    return m_MidSumm1Name;
}

QString SummonersViewModel::GetMidSumm2Name() const
{
    return m_MidSumm2Name;
}

QString SummonersViewModel::GetAdcSumm1Name() const
{
    return m_AdcSumm1Name;
}

QString SummonersViewModel::GetAdcSumm2Name() const
{
    return m_AdcSumm2Name;
}

QString SummonersViewModel::GetSupSumm1Name() const
{
    return m_SupSumm1Name;
}

QString SummonersViewModel::GetSupSumm2Name() const
{
    return m_SupSumm2Name;
}


//cooldown getters
int SummonersViewModel::GetTopSumm1Cooldown() const
{
    return m_TopSumm1Cooldown;
}

int SummonersViewModel::GetTopSumm2Cooldown() const
{
    return m_TopSumm2Cooldown;
}

int SummonersViewModel::GetJngSumm1Cooldown() const
{
    return m_JngSumm1Cooldown;
}

int SummonersViewModel::GetJngSumm2Cooldown() const
{
    return m_JngSumm2Cooldown;
}

int SummonersViewModel::GetMidSumm1Cooldown() const
{
    return m_MidSumm1Cooldown;
}

int SummonersViewModel::GetMidSumm2Cooldown() const
{
    return m_MidSumm2Cooldown;
}

int SummonersViewModel::GetAdcSumm1Cooldown() const
{
    return m_AdcSumm1Cooldown;
}

int SummonersViewModel::GetAdcSumm2Cooldown() const
{
    return m_AdcSumm2Cooldown;
}

int SummonersViewModel::GetSupSumm1Cooldown() const
{
    return m_SupSumm1Cooldown;
}

int SummonersViewModel::GetSupSumm2Cooldown() const
{
    return m_SupSumm2Cooldown;
}


//name setters
void SummonersViewModel::SetTopSumm1Name(QString summName)
{
    m_TopSumm1Name = summName;
    emit topSumm1NameChanged();
}

void SummonersViewModel::SetTopSumm2Name(QString summName)
{
    m_TopSumm2Name = summName;
    emit topSumm2NameChanged();
}

void SummonersViewModel::SetJngSumm1Name(QString summName)
{
    m_JngSumm1Name = summName;
    emit jngSumm1NameChanged();
}

void SummonersViewModel::SetJngSumm2Name(QString summName)
{
    m_JngSumm2Name = summName;
    emit jngSumm2NameChanged();
}

void SummonersViewModel::SetMidSumm1Name(QString summName)
{
    m_MidSumm1Name = summName;
    emit midSumm1NameChanged();
}

void SummonersViewModel::SetMidSumm2Name(QString summName)
{
    m_MidSumm2Name = summName;
    emit midSumm2NameChanged();
}

void SummonersViewModel::SetAdcSumm1Name(QString summName)
{
    m_AdcSumm1Name = summName;
    emit adcSumm1NameChanged();
}

void SummonersViewModel::SetAdcSumm2Name(QString summName)
{
    m_AdcSumm2Name = summName;
    emit adcSumm2NameChanged();
}

void SummonersViewModel::SetSupSumm1Name(QString summName)
{
    m_SupSumm1Name = summName;
    emit supSumm1NameChanged();
}

void SummonersViewModel::SetSupSumm2Name(QString summName)
{
    m_SupSumm2Name = summName;
    emit supSumm2NameChanged();
}


//cooldown setters
void SummonersViewModel::SetTopSumm1Cooldown(int summCooldown)
{
    m_TopSumm1Cooldown = summCooldown;
    emit topSumm1CooldownChanged();
}

void SummonersViewModel::SetTopSumm2Cooldown(int summCooldown)
{
    m_TopSumm2Cooldown = summCooldown;
    emit topSumm2CooldownChanged();
}

void SummonersViewModel::SetJngSumm1Cooldown(int summCooldown)
{
    m_JngSumm1Cooldown = summCooldown;
    emit jngSumm1CooldownChanged();
}

void SummonersViewModel::SetJngSumm2Cooldown(int summCooldown)
{
    m_JngSumm2Cooldown = summCooldown;
    emit jngSumm2CooldownChanged();
}

void SummonersViewModel::SetMidSumm1Cooldown(int summCooldown)
{
    m_MidSumm1Cooldown = summCooldown;
    emit midSumm1CooldownChanged();
}

void SummonersViewModel::SetMidSumm2Cooldown(int summCooldown)
{
    m_MidSumm2Cooldown = summCooldown;
    emit midSumm2CooldownChanged();
}

void SummonersViewModel::SetAdcSumm1Cooldown(int summCooldown)
{
    m_AdcSumm1Cooldown = summCooldown;
    emit adcSumm1CooldownChanged();
}

void SummonersViewModel::SetAdcSumm2Cooldown(int summCooldown)
{
    m_AdcSumm2Cooldown = summCooldown;
    emit adcSumm2CooldownChanged();
}

void SummonersViewModel::SetSupSumm1Cooldown(int summCooldown)
{
    m_SupSumm1Cooldown = summCooldown;
    emit supSumm1CooldownChanged();
}

void SummonersViewModel::SetSupSumm2Cooldown(int summCooldown)
{
    m_SupSumm2Cooldown = summCooldown;
    emit supSumm2CooldownChanged();
}

