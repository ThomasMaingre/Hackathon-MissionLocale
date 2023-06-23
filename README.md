# Hackathon-MissionLocale 🎮

## Introduction

Ce projet met en avant ma participation à un hackathon, où j’ai contribué à la création d’un site vitrine pour la Mission Locale du Pays d’Aix, ainsi qu’à la mise en place d’une section e-sport en utilisant le framework Laravel. Ce projet alliait la promotion des services de la Mission Locale à la passion pour le jeu vidéo.

## Installation

1. Clonez ce dépôt sur votre machine locale.
2. Assurez-vous d'avoir [Composer](https://getcomposer.org/) installé.
3. Dans le répertoire du projet, exécutez la commande suivante pour installer les dépendances nécessaires :

```php
composer install
```
## Configuration de la base de données

1. Récuperez le fichier nommé "hackaton.sql" et importez le dans votre base de donnée.
2. Pour configurer la connexion à la base de données, ouvrez le fichier `.env` à la racine du projet.
3. Modifiez les valeurs des variables `DB_HOST`, `DB_PORT`, `DB_DATABASE`, `DB_USERNAME` et `DB_PASSWORD` pour correspondre à votre configuration de base de données.
4. Sauvegardez les modifications apportées au fichier `.env`.

## Lancement

Après avoir installé les dépendances, exécutez la commande suivante pour lancer le serveur PHP intégré :

```php
php artisan serve
```

## Présentation du projet

L’objectif principal de ce projet était de développer un site vitrine pour la Mission Locale du Pays d’Aix afin de promouvoir leurs services et de faciliter l’accès à l’information pour les jeunes en recherche d’emploi. En plus de cela, nous avons intégré une section e-sport pour attirer les jeunes amateurs de jeux vidéo et créer une communauté dynamique. Nous avons travaillé sur la conception d’une interface attrayante, la création de contenus informatifs et engageants, ainsi que sur la mise en place de fonctionnalités liées à l’e-sport et leur plateforme de live sur Twitch.

- Page d'accueil avec des articles au choix selon l'administrateur.
- Page e-sport (GHINS) avec des articles au choix selon l'administrateur.
- Page gouvernance avec des articles au choix selon l'administrateur.
- Page contact
- Un lien vers leur page Twitch 'labonid'
- Un lien vers le RGPD
 
## Accès administrateur

Pour avoir la possibilités d'ajouter, modifier ou supprimer des articles, vous devez vous connecter en tant qu'administrateur. Veuillez suivre les étapes ci-dessous:

1. Accédez à la page de connexion de l'application en ajoutant à l'url du site:
   ```php
   /admin/login
   ```
2. Entrez l'adresse mail:
   ```php
   admin@admin.com
   ```
3. Entrez le mot de passe:
   ```php
   123
   ```
   
4. Une fois connecté en tant qu'administrateur, vous aurez accès à toutes les fonctionnalités de modification et de gestion de l'application.

