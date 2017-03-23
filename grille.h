#ifndef GRILLE_H
#define GRILLE_H

#include <iostream>
using namespace std;

#include <QObject>

class Grille : public QObject
{
    Q_OBJECT
public:
    //explicit Grille(int i, int j, QObject *parent = 0);
    explicit Grille(QObject *parent = 0);
    ~Grille();
    explicit Grille(const Grille &G, QObject *parent = 0);
    Grille& operator=(const Grille &G);
    void Set(int i, int j, int a);
    void Print();
    Q_INVOKABLE void IterationBas();
    Q_INVOKABLE void IterationHaut();
    Q_INVOKABLE void IterationDroite();
    Q_INVOKABLE void IterationGauche();
    Q_INVOKABLE void AjoutCase();

    Q_PROPERTY(QString Case11 READ readCase11 NOTIFY CaseChanged);

    QString readCase11();

signals:
    void CaseChanged();

private:
    int ni;
    int nj;
    int** T;
};

#endif // GRILLE_H
