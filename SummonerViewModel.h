#ifndef SUMMONERVIEWMODEL_H
#define SUMMONERVIEWMODEL_H

#include <QObject>

class SummonerViewModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString summ1Name READ GetSumm1Name WRITE SetSumm1Name NOTIFY summ1NameChanged)
    Q_PROPERTY(QString summ2Name READ GetSumm2Name WRITE SetSumm2Name NOTIFY summ2NameChanged)

    Q_PROPERTY(int summ1Cooldown READ GetSumm1Cooldown WRITE SetSumm1Cooldown NOTIFY summ1CooldownChanged)
    Q_PROPERTY(int summ2Cooldown READ GetSumm2Cooldown WRITE SetSumm2Cooldown NOTIFY summ2CooldownChanged)

    Q_PROPERTY(QString role READ GetRole CONSTANT)

public:
    SummonerViewModel(QString role);

    void SetSumm1Name(QString summName);
    void SetSumm2Name(QString summName);

    void SetSumm1Cooldown(int summCooldown);
    void SetSumm2Cooldown(int summCooldown);

    QString GetSumm1Name() const;
    QString GetSumm2Name() const;

    int GetSumm1Cooldown() const;
    int GetSumm2Cooldown() const;

    QString GetRole() const;

    void Reset();

signals:
    void summ1NameChanged();
    void summ2NameChanged();

    void summ1CooldownChanged();
    void summ2CooldownChanged();

public slots:
    void reset(){Reset();}

private:
    QString m_Role;

    QString m_Summ1Name;
    QString m_Summ2Name;

    int m_Summ1Cooldown;
    int m_Summ2Cooldown;

    std::map<QString, int> m_SpellCooldownMap = \
    {{"Barrier", 180}, {"Cleanse",180}, \
     {"Exhaust", 180}, {"Flash",300}, \
     {"Ghost", 180}, {"Heal", 240}, \
     {"Ignite", 180}, {"Smite", 20}, \
     {"Teleport", 300}};
};

#endif // SUMMONERVIEWMODEL_H
