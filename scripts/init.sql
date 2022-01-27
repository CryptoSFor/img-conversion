SELECT 'CREATE DATABASE img_conversion'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'img_conversion');
\gexec
\c img_conversion

CREATE TABLE users
(
    id integer primary key,
    login varchar(50) not null,
    password varchar(50) not null,
    created timestamp default current_timestamp not null
);

