#pragma once

#ifndef SUMMONERSVIEWMODEL_H
#define SUMMONERSVIEWMODEL_H

#include <QObject>

class SummonersViewModel: public QObject
{
    Q_OBJECT

    //summoner spell names
    Q_PROPERTY(QString topSumm1Name READ GetTopSumm1Name WRITE SetTopSumm1Name NOTIFY topSumm1NameChanged)
    Q_PROPERTY(QString topSumm2Name READ GetTopSumm2Name WRITE SetTopSumm2Name NOTIFY topSumm2NameChanged)

    Q_PROPERTY(QString jngSumm1Name READ GetJngSumm1Name WRITE SetJngSumm1Name NOTIFY jngSumm1NameChanged)
    Q_PROPERTY(QString jngSumm2Name READ GetJngSumm2Name WRITE SetJngSumm2Name NOTIFY jngSumm2NameChanged)

    Q_PROPERTY(QString midSumm1Name READ GetMidSumm1Name WRITE SetMidSumm1Name NOTIFY midSumm1NameChanged)
    Q_PROPERTY(QString midSumm2Name READ GetMidSumm2Name WRITE SetMidSumm2Name NOTIFY midSumm2NameChanged)

    Q_PROPERTY(QString adcSumm1Name READ GetAdcSumm1Name WRITE SetAdcSumm1Name NOTIFY adcSumm1NameChanged)
    Q_PROPERTY(QString adcSumm2Name READ GetAdcSumm2Name WRITE SetAdcSumm2Name NOTIFY adcSumm2NameChanged)

    Q_PROPERTY(QString supSumm1Name READ GetSupSumm1Name WRITE SetSupSumm1Name NOTIFY supSumm1NameChanged)
    Q_PROPERTY(QString supSumm2Name READ GetSupSumm2Name WRITE SetSupSumm2Name NOTIFY supSumm2NameChanged)

    //summoner spell cooldowns
    Q_PROPERTY(int topSumm1Cooldown READ GetTopSumm1Cooldown WRITE SetTopSumm1Cooldown NOTIFY topSumm1CooldownChanged)
    Q_PROPERTY(int topSumm2Cooldown READ GetTopSumm2Cooldown WRITE SetTopSumm2Cooldown NOTIFY topSumm2CooldownChanged)

    Q_PROPERTY(int jngSumm1Cooldown READ GetJngSumm1Cooldown WRITE SetJngSumm1Cooldown NOTIFY jngSumm1CooldownChanged)
    Q_PROPERTY(int jngSumm2Cooldown READ GetJngSumm2Cooldown WRITE SetJngSumm2Cooldown NOTIFY jngSumm2CooldownChanged)

    Q_PROPERTY(int midSumm1Cooldown READ GetMidSumm1Cooldown WRITE SetMidSumm1Cooldown NOTIFY midSumm1CooldownChanged)
    Q_PROPERTY(int midSumm2Cooldown READ GetMidSumm2Cooldown WRITE SetMidSumm2Cooldown NOTIFY midSumm2CooldownChanged)

    Q_PROPERTY(int adcSumm1Cooldown READ GetAdcSumm1Cooldown WRITE SetAdcSumm1Cooldown NOTIFY adcSumm1CooldownChanged)
    Q_PROPERTY(int adcSumm2Cooldown READ GetAdcSumm2Cooldown WRITE SetAdcSumm2Cooldown NOTIFY adcSumm2CooldownChanged)

    Q_PROPERTY(int supSumm1Cooldown READ GetSupSumm1Cooldown WRITE SetSupSumm1Cooldown NOTIFY supSumm1CooldownChanged)
    Q_PROPERTY(int supSumm2Cooldown READ GetSupSumm2Cooldown WRITE SetSupSumm2Cooldown NOTIFY supSumm2CooldownChanged)

public:
    SummonersViewModel();

    QString GetTopSumm1Name() const;
    QString GetTopSumm2Name() const;
    QString GetJngSumm1Name() const;
    QString GetJngSumm2Name() const;
    QString GetMidSumm1Name() const;
    QString GetMidSumm2Name() const;
    QString GetAdcSumm1Name() const;
    QString GetAdcSumm2Name() const;
    QString GetSupSumm1Name() const;
    QString GetSupSumm2Name() const;

    void SetTopSumm1Name(QString summName);
    void SetTopSumm2Name(QString summName);
    void SetJngSumm1Name(QString summName);
    void SetJngSumm2Name(QString summName);
    void SetMidSumm1Name(QString summName);
    void SetMidSumm2Name(QString summName);
    void SetAdcSumm1Name(QString summName);
    void SetAdcSumm2Name(QString summName);
    void SetSupSumm1Name(QString summName);
    void SetSupSumm2Name(QString summName);

    int GetTopSumm1Cooldown() const;
    int GetTopSumm2Cooldown() const;
    int GetJngSumm1Cooldown() const;
    int GetJngSumm2Cooldown() const;
    int GetMidSumm1Cooldown() const;
    int GetMidSumm2Cooldown() const;
    int GetAdcSumm1Cooldown() const;
    int GetAdcSumm2Cooldown() const;
    int GetSupSumm1Cooldown() const;
    int GetSupSumm2Cooldown() const;

    void SetTopSumm1Cooldown(int summCooldown);
    void SetTopSumm2Cooldown(int summCooldown);
    void SetJngSumm1Cooldown(int summCooldown);
    void SetJngSumm2Cooldown(int summCooldown);
    void SetMidSumm1Cooldown(int summCooldown);
    void SetMidSumm2Cooldown(int summCooldown);
    void SetAdcSumm1Cooldown(int summCooldown);
    void SetAdcSumm2Cooldown(int summCooldown);
    void SetSupSumm1Cooldown(int summCooldown);
    void SetSupSumm2Cooldown(int summCooldown);

    void Reset();

public slots:
    void reset() {Reset();}

signals:
    void topSumm1NameChanged();
    void topSumm2NameChanged();
    void jngSumm1NameChanged();
    void jngSumm2NameChanged();
    void midSumm1NameChanged();
    void midSumm2NameChanged();
    void adcSumm1NameChanged();
    void adcSumm2NameChanged();
    void supSumm1NameChanged();
    void supSumm2NameChanged();

    void topSumm1CooldownChanged();
    void topSumm2CooldownChanged();
    void jngSumm1CooldownChanged();
    void jngSumm2CooldownChanged();
    void midSumm1CooldownChanged();
    void midSumm2CooldownChanged();
    void adcSumm1CooldownChanged();
    void adcSumm2CooldownChanged();
    void supSumm1CooldownChanged();
    void supSumm2CooldownChanged();

private:
    QString m_TopSumm1Name;
    QString m_TopSumm2Name;
    QString m_JngSumm1Name;
    QString m_JngSumm2Name;
    QString m_MidSumm1Name;
    QString m_MidSumm2Name;
    QString m_AdcSumm1Name;
    QString m_AdcSumm2Name;
    QString m_SupSumm1Name;
    QString m_SupSumm2Name;

    int m_TopSumm1Cooldown;
    int m_TopSumm2Cooldown;
    int m_JngSumm1Cooldown;
    int m_JngSumm2Cooldown;
    int m_MidSumm1Cooldown;
    int m_MidSumm2Cooldown;
    int m_AdcSumm1Cooldown;
    int m_AdcSumm2Cooldown;
    int m_SupSumm1Cooldown;
    int m_SupSumm2Cooldown;

    std::map<QString, int> m_SpellCooldownMap = \
    {{"Barrier", 180}, {"Cleanse",180}, \
     {"Exhaust", 180}, {"Flash",300}, \
     {"Ghost", 180}, {"Heal", 240}, \
     {"Ignite", 180}, {"Smite", 20}, \
     {"Teleport", 300}};
};

#endif // SUMMONERSVIEWMODEL_H
