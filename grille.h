#ifndef GRILLE_H
#define GRILLE_H

#include <iostream>
using namespace std;

class Grille
{
public:
    Grille(int i, int j);
    ~Grille();
    Grille(const Grille &G);
    Grille& operator=(const Grille &G);
    void Set(int i, int j, int a);
    void Print();
    void IterationBas();
    void IterationHaut();
    void IterationDroite();
    void IterationGauche();
    void AjoutCase();



private:
    int ni;
    int nj;
    int** T;
};

#endif // GRILLE_H
