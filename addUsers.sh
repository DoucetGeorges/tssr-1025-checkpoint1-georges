#!/bin/bash


#Vérification de présence d'arguments
if [ $# = 0 ];then
    echo " Il manque les noms d'utilisateurs en argument - Fin du script "
    exit 1
fi

#début de boucle pour traiter tout les utilisateurs
for utilisateur in "$@"
do

#Vérification de l'existence des utilisateurs et affichage d'un message en conséquence
    if [ "$utilisateur" > /dev/null 2>&1 ];then
    echo "l'utilisateur  $utilisateur existe déjà"

    else 
    echo "l'utilisateur $utilisateur n'existe pas"
    fi
#Création des utilisateurs
    useradd "$utilisateur"
#Affichage du résultats
    if [ $? -eq 0 ];then
    echo " l'utilisateur $utilisateur a bien été crée "

    else
    echo "Erreur à la création de l'utilisateur $utilisateur"
   fi
#fin de boucle
done



