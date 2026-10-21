# 1NF

## Probleme identifie
la premiere ligne de la colonne commentaire ne respecte pas la 1NF

## Correction
Creer deux lignes avec le meme post_title ,author,author_email mais une ligne avec un des deuc commentaire et l'autre ligne avec l'autre commentaire


# 2NF

## Probleme identifie
les informations de l’auteur ne devraient pas être répétées pour chaque article parce que avec la cle primaire de la table user (user_id) on devrait retrouver ces informations

## correction
CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
username text not null,
email text not null,
CREATE_at text DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts(
post_id INTEGER primary key AUTOINCREMENT,
user_id INTEGER not null,
post_title  text not null,
create_at text DEFAULT CURRENT_TIMESTAMP,
FOREIGN key (user_id) REFERENCES users(user_id)
);

# 3NF

## Probleme identifie
le nom de l'auteur de cahque commentaire ne devraient pas être répétées pour chaque article

## Correction
CREATE TABLE IF NOT EXISTS comment (
comment_id INTEGER PRIMARY key AUTOINCREMENT,
content text not null,
create_at text DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE posts(
post_id INTEGER primary key AUTOINCREMENT,
user_id INTEGER not null,
comment_id INTEGER not null,
post_title  text not null,
create_at text DEFAULT CURRENT_TIMESTAMP,
FOREIGN key (user_id) REFERENCES users(user_id),
FOREIGN key (comment_id) REFERENCES users(comment_id)
);