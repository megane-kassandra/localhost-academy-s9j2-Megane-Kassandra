BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS comment (
id INTEGER PRIMARY key AUTOINCREMENT,
user_id INTEGER not NULL,
post_id INTEGER not null,
content text not null,
create_at text DEFAULT CURRENT_TIMESTAMP,
FOREIGN key(user_id) REFERENCES users(id),
FOREIGN key(post_id) REFERENCES post(id)
);
CREATE TABLE IF NOT EXISTS posts(
id INTEGER primary key AUTOINCREMENT,
user_id INTEGER not null,
title text not null,
content text not null,
create_at text DEFAULT CURRENT_TIMESTAMP,
FOREIGN key (user_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS users(
id INTEGER PRIMARY KEY AUTOINCREMENT,
username text not null,
email text not null,
CREATE_at text DEFAULT CURRENT_TIMESTAMP
);
COMMIT;



-- 1. Que se passerait-il si un post.user_id désignait un utilisateur inexistant ?

-- Cela provoquerait une erreur de clé
-- étrangère car la valeur de user_id ne correspondrait à aucun identifiant
-- existant dans la table users et le SGBD refuserait l'insertion ou la modification de cet article

-- 2. Pourquoi les clés étrangères protègent-elles la cohérence des données ?

-- Les clés étrangères garantissent que les références entre les tables
-- sont valides. Elles empêchent qu'un article référence un utilisateur
-- inexistant ou qu'un commentaire référence un article ou un utilisateur
-- inexistant. Elles assurent ainsi l'intégrité référentielle de la base
-- de données.