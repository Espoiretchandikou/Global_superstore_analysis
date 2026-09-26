Global Superstore -- Sales & Profitability Analysis

Présentation

Ce projet consiste à analyser les performances commerciales et la rentabilité des ventes du dataset Global Superstore.
L’objectif est de transformer des données commerciales brutes en informations exploitables à travers plusieurs étapes à savoir:exploration, nettoyage, analyse et visualisation.
Plusieurs outils sont utilisés dans le cadre de ce projet notamment Excel, PostgreSQL, SQL et Power BI afin de reproduire une démarche complète d’analyse de données.


Objectifs du projet

* Analyser le chiffre d’affaires et le profit.

* Étudier la rentabilité des produits et sous-catégories.

* Identifier les catégories et segments clients les plus performants.

* Analyser l’impact des remises sur la rentabilité.

* Segmenter les clients selon leur catégorie.

* Construire un dashboard interactif permettant d’explorer les résultats.

Technologies utilisées

* Excel: Exploration initiale et contrôle des données

* PostgreSQL: Stockage, nettoyage et transformation des données

* SQL: Analyse exploratoire et calcul des indicateurs

* Power BI: Visualisation et création du Dashboard

* DAX: Création des mesures et KPI


Méthodologie

Données brutes =>Excel(Exploration initiale)=> PostgreSQL(Import, nettoyage, Analyse et calcul des indicateurs)=>
Table propre =>Power BI (Modélisation, DAX et visualisation)=>Dashboard interactif=> Business Insights.


1. Exploration avec Excel

Dans cette première étape, nous avons explorer les données avec Excel afin de comprendre la structure du dataset et d’identifier les principales variables disponibles.

Cette étape a notamment permis d’examiner les informations relatives :

* aux ventes
  
* aux commandes
  
* aux clients
  
* aux produits
  
* aux catégories
  
* aux remises
  
* aux coûts d’expédition
  
* aux profits.

2. Nettoyage et préparation avec PostgreSQL
   
Les données ont ensuite été importées dans PostgreSQL.

Deux tables ont été utilisées :
* table brute : conservation des données originales
* table propre : données nettoyées et préparées pour l’analyse.
  
Les opérations réalisées comprennent notamment :
* contrôle des doublons
* vérification des valeurs manquantes
* contrôle des formats
* correction des données incohérentes
* préparation des variables nécessaires à l’analyse.

La table propre constitue ensuite la source utilisée pour le travail dans Power BI.

3. Analyse avec SQL
   
Plusieurs analyses ont été réalisées avec SQL afin d’étudier :
* le chiffre d’affaires
* le profit
* la marge
* les performances par catégorie
* les performances par sous-catégorie
* l’impact des remises
* la performance des segments clients
* la contribution des clients
Les résultats obtenus avec SQL servent de base à l’analyse et à la construction du dashboard Power BI.

4. Dashboard Power BI
   
Le dashboard a été construit à partir de la table propre.Il est organisé en trois pages.

Page 1--Vue d’ensemble
Analyse de la performance commerciale globale :
* chiffre d’affaires
* profit
* marge
* commandes
* clients
* quantité vendue
* évolution du CA et du profit
* performance par catégorie
* performance par segment client.

Page 2--Produits & Rentabilité
Analyse de la rentabilité des produits :
* profit par sous-catégorie
* marge par sous-catégorie
* CA et profit par catégorie
* relation entre remise et profit
* filtres par catégorie, région et période.
  
Page 3--Analyse des clients

Analyse de la clientèle :
* segmentation Consumer / Corporate / Home Office 
* CA par segment
* profit par segment
* nombre de clients par segment
* CA moyen par client
* Top 10 clients par CA
* tableau de performance des clients.

5. Mesures DAX
   
Les principaux indicateurs du dashboard ont été créés avec DAX :
* CA
* Profit
* Marge %
* Nombre de commandes
* Nombre de clients
* Quantité vendue
* CA moyen par client

6. Business Insights
