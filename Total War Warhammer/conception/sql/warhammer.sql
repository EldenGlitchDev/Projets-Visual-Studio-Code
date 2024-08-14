drop database if exists warhammer;

create database warhammer;

use warhammer;


-- Table factions

create table `faction` (
`id` int auto_increment primary key,
`nom` varchar(50) not null,
`image` varchar(255) not null
);

-- INSERT INTO factions



-- Table unités des factions

create table `unite` (
`id` int auto_increment primary key,
`nom` varchar(50) not null,
`image` varchar(255) not null,
`description` text not null,
`categorie` varchar(50) not null,
`id_faction` int not null references faction(id)
);

-- INSERT INTO unités




-- Table des statistiques unités
create table `statistiques` (
`id` int auto_increment primary key,
`sante` int not null,
`commandement` int not null,
`vitesse` int not null,
`attaque_melee` int not null,
`defense_melee` int not null,
`bonus_charge` int not null,
`puissance_attaque` int not null,
`puissance_tir` int null,
`temps_rechargement` int null,
`munitions` int null,
`portee` int null
);

-- INSERT INTO statistiques