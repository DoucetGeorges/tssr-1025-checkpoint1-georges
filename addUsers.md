# Script de Création d'Utilisateurs

## 1. Vérification de présence d'arguments

```
SI [le nombre d'arguments = 0] ALORS
    AFFICHER "Il manque les noms d'utilisateurs en argument - Fin du script"
    ARRÊTER LE SCRIPT
FIN SI
```

## 2. Début de boucle pour traiter les utilisateurs

```
POUR chaque utilisateur (tous les arguments présentés) FAIRE
```

## 3. Vérification de l'existence de l'utilisateur

```
    SI [utilisateur existe déjà] ALORS
        AFFICHER "L'utilisateur $utilisateur existe déjà"
        // Le script continue même si l'utilisateur existe déjà
    SINON
        AFFICHER "L'utilisateur $utilisateur n'existe pas"
    FIN SI
```

## 4. Création de l'utilisateur

```
    EXÉCUTION de la commande de création d'utilisateur
```

## 5. Vérification de la réussite de la commande de création utilisateur

```
    SI [le code de retour de la commande de création est égal à 0] ALORS
        AFFICHER "L'utilisateur $utilisateur a été créé"
    SINON
        AFFICHER "Erreur à la création de l'utilisateur $utilisateur"
    FIN SI

FIN BOUCLE
```
