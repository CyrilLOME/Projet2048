#include "grille.h"
#include <iostream>
#include <iomanip>
#include <math.h>
using namespace std;

//Grille::Grille(int i, int j, QObject *parent) : QObject(parent)
Grille::Grille(QObject *parent) : QObject(parent)
{
    int i = 4;
    int j = 4;
    if((i>0) && (j>0)){
        ni = i;
        nj = j;
    }
    else {ni = 10; nj = 10;}

    T = new int*[ni];
    for(int l=0; l<ni; l++)
    {
        T[l] = new int[nj];
    }

    for(int k=0; k<ni; k++)
    {
        for(int p=0; p<nj; p++)
        {
            T[k][p] = 0;
        }
    }
    T[0][0] = 1;

    CaseChanged();
}

Grille::~Grille()
{
    if(T != NULL)
    {
        for(int k=0; k<ni; k++)
        {
              delete [] T[k];
         }
        delete [] T;
        T = NULL;
    }
}

Grille::Grille(const Grille &G, QObject *parent) : QObject(parent)
{
    ni = G.ni;
    nj = G.nj;
    T = new int*[ni];
    for(int l=0; l<ni; l++)
    {
        T[l] = new int[nj];
    }

    for(int k=0; k<ni; k++)
    {
        for(int p=0; p<nj; p++)
        {
            T[k][p] = G.T[k][p];
        }
    }
    CaseChanged();
}

Grille& Grille::operator=(const Grille &G)
{
    if (this != &G)
    {
        for(int k=0; k<ni; k++)
        {
              delete [] T[k];
         }
        delete [] T;

        ni = G.ni;
        nj = G.nj;
        T = new int*[ni];
        for(int l=0; l<ni; l++)
        {
            T[l] = new int[nj];
        }

        for(int k=0; k<ni; k++)
        {
            for(int p=0; p<nj; p++)
            {
                T[k][p] = G.T[k][p];
            }
        }
    }
    return *this;
}

void Grille::Set(int i, int j, int a)
{
    T[i][j] = a;
}

void Grille::Print()
{
    for(int i=0; i<ni; i++)
    {
        for(int j=0; j<nj; j++)
        {
            if(T[i][j] == 0)
                cout<<setw(6)<<0;
            else

                cout<<setw(6)<<pow(2, T[i][j]);
        }
        cout<<endl;
    }
    cout<<endl;
}

// Mise à jour de l'interface

QList<QList<QString>> Grille::readCases() { //Attention ! case (1,1) correspond à T[0][0] car les indices commencent à 0 dans la grille

    //QList<QList<QString>> Cases = QList<>();
    QList<QList<QString>> Cases;
    for (int i=0; i<ni; i++)
    {
        QList<QString> Ligne;// = QList<>();
        for (int j=0; j<nj; j++)
        {
            if(this->T[i][j] == 0)
            {
                Ligne.append(" ");
            }
            else
            {
                int num = 1;
                for(int k=0; k<T[i][j]; k++)
                {
                    num = num*2;
                }
                QString text = QString::number(num);
                Ligne.append(text);
            }
        }
        Cases.append(Ligne);
    }
    return Cases;
}

QList<QList<QString>> Grille::readCasesColor() { //Attention ! case (1,1) correspond à T[0][0] car les indices commencent à 0 dans la grille
    QList<QList<QString>> CasesColor;
    for (int i=0; i<ni; i++)
    {
        QList<QString> LigneColor;
        for (int j=0; j<nj; j++)
        {
            QString color;
            switch(this->T[i][j])
            {
                case 0 : color = "#f27b7b";
                case 1 : color = "#FF5E4D";
                case 2 : color = "#E9383F";
                case 3 : color = "#C72C48";
                case 4 : color = "#FE1B00";
                case 5 : color = "#ED0000";
                case 6 : color = "#D90115";
                case 7 : color = "#A91101";
                case 8 : color = "#FD3F92";
                case 9 : color = "#C71585";
                case 10 : color = "#6E0B14";
            };
            LigneColor.append(color);
        }
        CasesColor.append(LigneColor);
    }
    return CasesColor;
}

void Grille::IterationBas()
{
    for(int j=0; j<nj; j++)
    {
        //cout<<j<<endl;
    // Traitement des cas où il y a une addition possible

    // Traitement des cas où il n'y a pas d'addition
        for(int i=ni-2; i>=0; i--) //Traitement de la case à la ligne i, en commençant par la fin (ici, comme on descend, ce sera par le bas) MAIS on ne traite pas la dernière case qui ne pourra pas être additionnée avec une case plus bas
        {
            //cout<<i<<" "<<j<<endl;
            //cout<<"boucle sur i en partant du bas, rang "<<i<<endl;
            if(T[i][j] !=0)
            {

                for(int k=i+1; k<ni; k++)
                {
                    //cout<<"boucle sur k en partant de i, rang "<<k<<endl;
                    if(T[k][j] == T[i][j])
                    {
                        //addition
                        //cout<<"Il faut additioner la case "<<i<<" avec la case "<<k<<endl;
                        T[k][j]++;
                        T[i][j] = 0;
                        break;
                    }
                    else if(T[k][j]>0 && T[k][j] != T[i][j])
                    {
                        //pas d'addition
                        //cout<<"Il n'y a pas d'addition possible, il faut donc descendre la case "<<i<<" jusqu'à la case "<<k-1<<endl;
                        int K = k-1;
                        if(K != i)
                        {
                            T[K][j] = T[i][j];
                            T[i][j] = 0;
                        }
                        break;
                    }
                    else if(k == ni-1 && T[k][j] != T[i][j])
                    {
                        //cout<<"Il n'y a pas d'élément dans la suite : il faut échanger la case "<<i<<" avec la dernière case"<<endl;
                        T[k][j] = T[i][j];
                        T[i][j] = 0;
                    }
                    //this->Print();
                }
            }
        }
    }
    // Ajout d'une nouvelle case de manière aléatoire (mais d'abord sur la case (0,0)


    // Fin de l'itération : on raffraîchit l'affichage
    this->Print();
    CaseChanged();
}

void Grille::IterationHaut()
{
    for(int j=0; j<nj; j++)
    {
        //cout<<j<<endl;
    // Traitement des cas où il y a une addition possible

    // Traitement des cas où il n'y a pas d'addition
        for(int i=1; i<ni; i++) //Traitement de la case à la ligne i, en commençant par la fin (ici, comme on descend, ce sera par le bas) MAIS on ne traite pas la dernière case qui ne pourra pas être additionnée avec une case plus bas
        {
            //cout<<i<<" "<<j<<endl;
            //cout<<"boucle sur i en partant du bas, rang "<<i<<endl;
            if(T[i][j] !=0)
            {

                for(int k=i-1; k>=0; k--)
                {
                    //cout<<"boucle sur k en partant de i, rang "<<k<<endl;
                    if(T[k][j] == T[i][j])
                    {
                        //addition
                        //cout<<"Il faut additioner la case "<<i<<" avec la case "<<k<<endl;
                        T[k][j]++;
                        T[i][j] = 0;
                        break;
                    }
                    else if(T[k][j]>0 && T[k][j] != T[i][j])
                    {
                        //pas d'addition
                        //cout<<"Il n'y a pas d'addition possible, il faut donc descendre la case "<<i<<" jusqu'à la case "<<k-1<<endl;
                        int K = k+1;
                        if(K != i)
                        {
                            T[K][j] = T[i][j];
                            T[i][j] = 0;
                        }
                        break;
                    }
                    else if(k == 0 && T[k][j] != T[i][j])
                    {
                        //cout<<"Il n'y a pas d'élément dans la suite : il faut échanger la case "<<i<<" avec la dernière case"<<endl;
                        T[k][j] = T[i][j];
                        T[i][j] = 0;
                    }
                    //this->Print();
                }
            }
        }
    }
    // Ajout d'une nouvelle case de manière aléatoire (mais d'abord sur la case (0,0)


    // Fin de l'itération : on raffraîchit l'affichage
    this->Print();
    CaseChanged();
}

void Grille::IterationDroite()
{
    for(int i=0; i<ni; i++)
    {
        //cout<<i<<endl;
    // Traitement des cas où il y a une addition possible

    // Traitement des cas où il n'y a pas d'addition
        for(int j=nj-2; j>=0; j--) //Traitement de la case à la ligne i, en commençant par la fin (ici, comme on descend, ce sera par le bas) MAIS on ne traite pas la dernière case qui ne pourra pas être additionnée avec une case plus bas
        {
            //cout<<i<<" "<<j<<endl;
            //cout<<"boucle sur i en partant du bas, rang "<<i<<endl;
            if(T[i][j] !=0)
            {

                for(int k=j+1; k<nj; k++)
                {
                    //cout<<"boucle sur k en partant de j, rang "<<k<<endl;
                    if(T[i][k] == T[i][j])
                    {
                        //addition
                        //cout<<"Il faut additioner la case "<<j<<" avec la case "<<k<<endl;
                        T[i][k]++;
                        T[i][j] = 0;
                        break;
                    }
                    else if(T[i][k]>0 && T[i][k] != T[i][j])
                    {
                        //pas d'addition
                        //cout<<"Il n'y a pas d'addition possible, il faut donc descendre la case "<<i<<" jusqu'à la case "<<k-1<<endl;
                        int K = k-1;
                        if(K != j)
                        {
                            T[i][K] = T[i][j];
                            T[i][j] = 0;
                        }
                        break;
                    }
                    else if(k == nj-1 && T[i][k] != T[i][j])
                    {
                        //cout<<"Il n'y a pas d'élément dans la suite : il faut échanger la case "<<i<<" avec la dernière case"<<endl;
                        T[i][k] = T[i][j];
                        T[i][j] = 0;
                    }
                    //this->Print();
                }
            }
        }
    }
    // Ajout d'une nouvelle case de manière aléatoire (mais d'abord sur la case (0,0)


    // Fin de l'itération : on raffraîchit l'affichage
    this->Print();
    CaseChanged();
}

void Grille::IterationGauche()
{
    for(int i=0; i<ni; i++)
    {
        //cout<<i<<endl;
    // Traitement des cas où il y a une addition possible

    // Traitement des cas où il n'y a pas d'addition
        for(int j=1; j<nj; j++) //Traitement de la case à la ligne i, en commençant par la fin (ici, comme on descend, ce sera par le bas) MAIS on ne traite pas la dernière case qui ne pourra pas être additionnée avec une case plus bas
        {
            //cout<<i<<" "<<j<<endl;
            //cout<<"boucle sur i en partant du bas, rang "<<i<<endl;
            if(T[i][j] !=0)
            {

                for(int k=j-1; k>=0; k--)
                {
                    //cout<<"boucle sur k en partant de j, rang "<<k<<endl;
                    if(T[i][k] == T[i][j])
                    {
                        //addition
                        //cout<<"Il faut additioner la case "<<j<<" avec la case "<<k<<endl;
                        T[i][k]++;
                        T[i][j] = 0;
                        break;
                    }
                    else if(T[i][k]>0 && T[i][k] != T[i][j])
                    {
                        //pas d'addition
                        //cout<<"Il n'y a pas d'addition possible, il faut donc descendre la case "<<i<<" jusqu'à la case "<<k-1<<endl;
                        int K = k+1;
                        if(K != j)
                        {
                            T[i][K] = T[i][j];
                            T[i][j] = 0;
                        }
                        break;
                    }
                    else if(k == 0 && T[i][k] != T[i][j])
                    {
                        //cout<<"Il n'y a pas d'élément dans la suite : il faut échanger la case "<<i<<" avec la dernière case"<<endl;
                        T[i][k] = T[i][j];
                        T[i][j] = 0;
                    }
                    //this->Print();
                }
            }
        }
    }
    // Ajout d'une nouvelle case de manière aléatoire (mais d'abord sur la case (0,0)


    // Fin de l'itération : on raffraîchit l'affichage
    this->Print();
    CaseChanged();
}

void Grille::AjoutCase()
{
    int randI = rand() % ni; // nombre aléatoire entre 0 et ni-1
    int randJ = rand() % nj; // nombre aléatoire entre 0 et nj-1
    if(T[randI][randJ] ==0)
    {
        T[randI][randJ] = 1;
    }
    else
    {
        cout<<"Case déjà occupée"<<endl;
    }
    CaseChanged();
}



















