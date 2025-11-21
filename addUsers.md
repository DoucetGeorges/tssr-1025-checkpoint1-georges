#!/bin/bash

if [ "$#" -eq 0 ]; then

    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi


if [ -f "$1"  ]; then
    echo "L'utilisateur "$1" existe déjà"
else 
    sudo useradd "$1"
fi

if [ -f "$2"  ]; then
    echo "L'utilisateur "$2" existe déjà" 
else
    sudo useradd "$2"
fi

if [ -f "$3"  ]; then
    echo "L'utilisateur "$3" existe déjà" 
else
    sudo useradd "$3"
fi

if [ -f "$1"  ]; then
    echo "L'utilisateur $1 a été crée"
else
    echo "Erreur à la création de l'utilisateur $1"
fi

if [ -f "$2"  ]; then
    echo "L'utilisateur $2 a été crée"
else
    echo "Erreur à la création de l'utilisateur $2"
fi


if [ -f "$3"  ]; then
    echo "L'utilisateur $3 a été crée"
else
    echo "Erreur à la création de l'utilisateur $3"
fi

