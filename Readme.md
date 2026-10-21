# Semaine 9 - Jour 2 - Conception et normalisation

# MATSINKOU TAKOUDJOU MEGANE KASSANDRA

## Question de compréhension

La relation entre User et Post est une relation un-à-plusieurs (1:N) parce qu’un utilisateur peut publier plusieurs articles (Post), tandis qu’un article appartient à un seul utilisateur. La clé étrangère user_id dans la table posts permet d’identifier l’utilisateur qui a publié chaque article.

## Définition d'une clé étrangère

Une clé étrangère est un champ qui référence la clé primaire d'une autre table afin de créer une relation entre les tables et de garantir la cohérence des données.

## Les types de relations

- **1:1 (un à un)** : une ligne d'une table est liée à une seule ligne d'une autre table.
- **1:N (un à plusieurs)** : une ligne d'une table peut être liée à plusieurs lignes d'une autre table.
- **N:N (plusieurs à plusieurs)** : plusieurs lignes d'une table peuvent être liées à plusieurs lignes d'une autre table, généralement grâce à une table intermédiaire.

## Rôle de la normalisation

La normalisation permet d'organiser les données dans plusieurs tables afin de réduire les répétitions et d'éviter les incohérences dans la base de données.

## Les trois livrables réalisés

1. ex1_blog_er_diagram.png
2. ex2_blog_schema.sql
3. ex3_normalisation.md

