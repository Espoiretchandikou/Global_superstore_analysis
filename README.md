# Global Superstore -- Sales & Profitability Analysis

## Présentation du projet

Ce projet consiste à analyser les performances commerciales d'une entreprise à partir du dataset Global Superstore.

L'objectif est d'identifier les principaux facteurs de performance commerciale, d'analyser la rentabilité des produits et des clients, et de mettre en évidence les opportunités d'amélioration.

## Problématique

Comment évolue la performance commerciale de l'entreprise, quels clients et produits génèrent le plus de valeur, et où se trouvent les principales opportunités d'amélioration ?

## Technologies utilisées

* Excel
* PostgreSQL
* SQL
* Power BI

## Méthodologie

Le projet suit le workflow suivant :

**Excel → PostgreSQL → SQL → Power BI**

### 1. Exploration et nettoyage

- Contrôle de la qualité des données
- Analyse des valeurs manquantes
- Vérification des doublons
- Contrôle des dates
- Vérification des valeurs aberrantes
- Nettoyage des données

### 2. Analyse SQL

Analyse des :

- KPI commerciaux
- performances annuelles
- catégories et sous-catégories
- clients
- segments clients
- produits
- rentabilité
- remises et marges

### 3. Data Visualisation

Création d'un dashboard interactif avec Power BI afin de suivre :

- Chiffre d'affaires
- Profit
- Marge
- Commandes
- Clients
- Performance des catégories
- Performance des clients
- Performance des produits

## Principaux indicateurs

- **Chiffre d'affaires :** 12,64 M€
- **Profit :** 1,47 M€
- **Commandes :** 25 034
- **Clients :** 1 590
- **Quantités vendues :** 178 280
- **Marge globale :** 11,61 %

## Premiers insights

### Performance commerciale

Le chiffre d'affaires et le profit progressent chaque année entre 2011 et 2014.

### Rentabilité des produits

La sous-catégorie **Tables** génère 757 K€ de chiffre d'affaires mais affiche un profit négatif de 64 K€.

Les remises supérieures ou égales à 20 % sont associées à des résultats négatifs pour cette sous-catégorie.

### Analyse clients

Le segment **Consumer** représente le plus gros volume d'activité, tandis que les marges des trois segments restent relativement proches.

L'analyse des clients montre également que certains clients peuvent générer un chiffre d'affaires important tout en restant peu ou pas rentables.

## Structure du projet

```text
global_superstore_analysis/
│
├── README.md
│
├── data/
│   └── README.md
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_data_cleaning.sql
│   └── 03_data_analysis.sql
│
├── powerbi/
│   └── Global_Superstore_Dashboard.pbix
│
├── screenshots/
│
└── docs/
    └── insights.md

```
## Auteur
**Nom : TCHANDIKOU
**Prénoms: G. Espoire
