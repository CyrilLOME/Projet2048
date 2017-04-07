#ifndef TESTGRILLE_H
#define TESTGRILLE_H

#include <iostream>
using namespace std;

class TestGrille
{
public:
    TestGrille(int i, int j);
    ~TestGrille();
    TestGrille(const TestGrille &G);
    TestGrille& operator=(const TestGrille &G);
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

#endif // TESTGRILLE_H
