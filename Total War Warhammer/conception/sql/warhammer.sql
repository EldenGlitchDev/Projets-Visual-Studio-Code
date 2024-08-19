DROP DATABASE IF EXISTS warhammer;

CREATE DATABASE warhammer;

USE warhammer;


-- Table factions

CREATE TABLE `faction` (
`id` int AUTO_INCREMENT PRIMARY KEY,
`nom` varchar(50) NOT NULL,
`image` varchar(255) NOT NULL
);

-- INSERT INTO factions

INSERT INTO faction (id, nom, image) VALUES
("1","Skavens","Skavens.png"),
("2","Compte Vampire","Comte_Vampire.png"),
("3","Hauts-Elfes","Hauts-Elfes.png"),
("4","Nains","Nains.png"),
("5","Bretonnie","Bretonnie.png"),
("6","Côte Vampire","Cote_Vampire.png"),
("7","Hommes-Lézards","Homme-Lezard.png"),
("8","Norsca","Norsca.png"),
("9","Chaos","Chaos.png"),
("10","Elfes Noirs","Elfes_Noirs.png"),
("11","Hommes-Bêtes","Hommes-Betes.png"),
("12","Peaux-Vertes","Peaux-Vertes.png"),
("13","Véroleurs de Nurgle","Nurgle.jpg"),
("14","Elfes Sylvains","Elfes_Sylvains.png"),
("15","L'Empire","L_Empire.png"),
("16","Rois des Tombes","Rois_des_Tombes.png");


-- Table unités des factions

CREATE TABLE `unite` (
`id` int AUTO_INCREMENT PRIMARY KEY,
`nom` varchar(50) NOT NULL,
`image` varchar(255) NOT NULL,
`description` text NOT NULL,
`categorie` varchar(50) NOT NULL,
`id_faction` int NOT NULL REFERENCES faction(id)
);

-- INSERT INTO unités
INSERT INTO unite (id, nom, image, description, categorie, id_faction) VALUES

								-- SKAVENS --

("1","Plagueclaw Catapults","Plagueclaw_Catapults.jpg","","Artillerie","1"),
("2","Warp Lightening Cannons","Warp_Lightning_Cannons.jpg","","Artillerie","1"),

("3","Wolf Rats","Wolf_Rats.jpg","","Bêtes de guerre","1"),
("4","Wolf Rats (Poison)","Wolf_Rats_(Poison).jpg","","Bêtes de guerre","1"),

("5","Clanrat Spears","Clanrat_Spears.jpg","","Corps à corps","1"),
("6","Clanrat Spears (Shield)","Clanrat_Spears_(Shield).jpg","","Corps à corps","1"),
("7","Clanrats","Clanrats.jpg","","Corps à corps","1"),
("8","Clanrats (Shield)","Clanrats_(Shield).jpg","","Corps à corps","1"),
("9","Death Runners","Death_Runners.jpg","","Corps à corps","1"),
("10","Eshin Triads","Eshin_Triads.jpg","","Corps à corps","1"),
("11","Plague Monk Censer Bearers","Plague_Monk_Censer_Bearers.jpg","","Corps à corps","1"),
("12","Plague Monks","Plague_Monks.jpg","","Corps à corps","1"),
("13","Skavenslaves Spears","Skavenslaves_Spears.jpg","","Corps à corps","1"),
("14","Skavenslaves","Skavenslaves.jpg","","Corps à corps","1"),
("15","Stormvermin (Halberds)","Stormvermin_(Halberds).jpg","","Corps à corps","1"),
("16","Stormvermin (Swords and Shields)","Stormvermin_(Swords_&_Shields).jpg","","Corps à corps","1"),
("17","Warp-Grinders","Warp-Grinders.jpg","","Corps à corps","1"),

("18","Assassin","Assassin.jpg","","Héros","1"),
("19","Chieftain","Chieftain.jpg","","Héros","1"),
("20","Eshin Sorcerer","Eshin_Sorcerer.jpg","","Héros","1"),
("21","Packmaster","Packmaster.jpg","","Héros","1"),
("22","Plague Priest","Plague_Priest.jpg","","Héros","1"),
("23","Warlock Engineer","Warlock_Engineer.jpg","","Héros","1"),

("24","Rat Ogres","Rat_Ogres.jpg","","Infanteries monstrueuses","1"),

("25","Doom-Flayers","Doomm-Flayers.jpg","","Machines de guerre","1"),
("26","Doomwheel","Doomwheel.jpg","","Machines de guerre","1"),

("27","Brood Horror","Blood_Horror.jpg","","Monstres","1"),
("28","Hell Pit Abomination","Hell_Pit_Abomination.jpg","","Monstres","1"),
("29","Mutant Rat Ogre","Mutant_Rat_Ogre.jpg","","Monstres","1"),

("30","Deathmaster_Snitch","Deathmaster Snitch.jpg","","Seigneurs Légendaires","1"),
("31","Ikit Claw","Ikit_Claw.jpg","","Seigneurs Légendaires","1"),
("32","Lord Skrolk","Lord_Skrolk.jpg","","Seigneurs Légendaires","1"),
("33","Queek Headtaker","Queek_Headtaker.jpg","","Seigneurs Légendaires","1"),
("34","Throt the Unclean","Throt_the_Unclean.jpg","","Seigneurs Légendaires","1"),
("35","Tretch Craventail","Tretch_Craventail.jpg","","Seigneurs Légendaires","1"),

("36","Death Globe Bombardiers","Death_Globe_Bombardiers.jpg","","Tireurs","1"),
("37","Gutter Runner Slingers","Gutter_Runner_Slingers.jpg","","Tireurs","1"),
("38","Gutter Runner Slingers (Poison)","Gutter_Runner_Slingers_(Poison).jpg","","Tireurs","1"),
("39","Gutter Runners","Gutter_Runners.jpg","","Tireurs","1"),
("40","Gutter Runners (Poison)","Gutter_Runners_(Poison).jpg","","Tireurs","1"),
("41","Night Runners","Night_Runners.jpg","","Tireurs","1"),
("42","Night Runners (Slings)","Night_Runners_(Slings).jpg","","Tireurs","1"),
("43","Poisoned Wind Globadiers","Poisoned_Wind_Globadiers.jpg","","Tireurs","1"),
("44","Poisoned Wind Mortars","Poisoned_Wind_Mortars.jpg","","Tireurs","1"),
("45","Ratling Guns","Ratling_Guns.jpg","","Tireurs","1"),
("46","Skavenslave Slingers","Skavenslave_Slingers.jpg","","Tireurs","1"),
("47","Warpfire Throwers","Warpfire_Throwers.jpg","","Tireurs","1"),
("48","Warplock Jezzails","Warplock_Jezzails.jpg","","Tireurs","1"),


									-- COMTE VAMPIRE --

("49","Dire Wolves","Dire_Wolves.jpg","","Bêtes de guerre","2"),
("50","Fell Bats","Fell_Bats.jpg","","Bêtes de guerre","2"),

("51","Cairn Wraiths","Cairn_Wraiths.jpg","","Corps à corps","2"),
("52","Crypt Ghouls","Crypt_Ghouls.jpg","","Corps à corps","2"),
("53","Grave Guard","Grave_Guard.jpg","","Corps à corps","2"),
("54","Grave Guard (Great Weapons)","Grave_Guard_(Great_Weapons).jpg","","Corps à corps","2"),
("55","Skeleton Spearmen","Skeleton_Spearmen.jpg","","Corps à corps","2"),
("56","Skeleton Warriors","Skeleton_Warriors.jpg","","Corps à corps","2"),
("57","Zombies","Zombies.jpg","","Corps à corps","2"),

("58","Black Knights","Black_Knights.jpg","","Cavalerie mêlée","2"),
("59","Black Knights (Lances & Barding)","Black_Knights_(Lances_&_Barding).jpg","","Cavalerie mêlée","2"),
("60","Blood Knights","Blood_Knights.jpg","","Cavalerie mêlée","2"),
("61","Hexwraiths","Hexwraiths.jpg","","Cavalerie mêlée","2"),

("62","Black Coach","Black_Coach.jpg","","Chariots","2"),
("63","Corpse Cart","Corpse_Cart.jpg","","Chariots","2"),
("64","Corpse Cart (Balefire)","Corpse_Cart_(Balefire).jpg","","Chariots","2"),
("65","Corpse Cart (Unholy Lodestone)","Corpse_Cart_(Unholy_Lodestone).jpg","","Chariots","2"),
("66","Mortis Engine","Mortis_Engine.jpg","","Chariots","2"),

("67","Banshee","Banshee.jpg","","Héros","2"),
("68","Necromancer","Necromancer.jpg","","Héros","2"),
("69","Vampire (Death)","Vampire_(Death).jpg","","Héros","2"),
("70","Vampire (Shadows)","Vampire_(Shadows).jpg","","Héros","2"),
("71","Wight King","Wight_King.jpg","","Héros","2"),

("72","Crypt Horrors","Crypt_Horrors.jpg","","Infanteries monstrueuses","2"),
("73","Mournguls","Mournguls.jpg","","Infanteries monstrueuses","2"),
("74","Vargheists","Vargheists.jpg","","Infanteries monstrueuses","2"),

("75","Terrorgheist","Terrorgheist.jpg","","Monstres","2"),
("76","Varghulf","Varghulf.jpg","","Monstres","2"),

("77","Heinrich Kemmler","Heinrich_Kemmler.jpg","","Seigneurs Légendaires","2"),
("78","Helman Ghorst","Helman_Ghorst.jpg","","Seigneurs Légendaires","2"),
("79","Isabella von Carstein","Isabella_von_Carstein.jpg","","Seigneurs Légendaires","2"),
("80","Mannfred von Carstein","Mannfred_von_Carstein.jpg","","Seigneurs Légendaires","2"),
("81","Vlad von Carstein","Vlad_von_Carstein.jpg","","Seigneurs Légendaires","2"),

("82","Sylvanian Crossbowmen","Sylvanian_Crossbowmen.jpg","","Tireurs","2"),
("83","Sylvanian Handgunners","Sylvanian_Handgunners.jpg","","Tireurs","2"),





-- Table des statistiques unités
-- CREATE TABLE `statistiques` (
-- `id` int AUTO_INCREMENT PRIMARY KEY,
-- `nom` varchar(50) NOT NULL,
-- `image` varchar(255) NOT NULL,
-- `description` text NOT NULL,
-- `sante` int NOT NULL,
-- `commandement` int NOT NULL,
-- `vitesse` int NOT NULL,
-- `attaque_melee` int NOT NULL,
-- `defense_melee` int NOT NULL,
-- `bonus_charge` int NOT NULL,
-- `puissance_attaque` int NOT NULL,
-- `puissance_tir` int,
-- `temps_rechargement` int,
-- `munitions` int,
-- `portee` int,
-- `id_faction` int NOT NULL REFERENCES unite(id)
-- );

-- INSERT INTO statistiques