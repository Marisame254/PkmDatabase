-- Drop the tables in case it exists

DROP TABLE IF EXISTS types CASCADE;
DROP TABLE IF EXISTS classfications CASCADE;
Drop TABLE IF EXISTS abilities CASCADE;
DROP TABLE IF EXISTS pokemons CASCADE;

-- Create the tables

CREATE TABLE types (
  typeID INTEGER PRIMARY KEY,
  type VARCHAR(15) NOT NULL
);

CREATE TABLE classfications (
  classficationID INTEGER PRIMARY KEY,
  classfication VARCHAR(55) NOT NULL
);

CREATE TABLE abilities (
  abilityID INTEGER PRIMARY KEY,
  ability VARCHAR(30) NOT NULL
);

CREATE TABLE againsts (
  againstID INTEGER PRIMARY KEY,
  against_bug REAL NOT NULL,
  against_dark REAL NOT NULL,
  against_dragon REAL NOT NULL,
  against_electric REAL NOT NULL,
  against_fairy REAL NOT NULL,
  against_figth REAL NOT NULL,
  against_fire REAL NOT NULL,
  against_flying REAL NOT NULL,
  against_ghost REAL NOT NULL,
  against_grass REAL NOT NULL,
  against_ground REAL NOT NULL,
  against_ice REAL NOT NULL,
  against_normal REAL NOT NULL,
  against_poison REAL NOT NULL,
  against_psychic REAL NOT NULL,
  against_rock REAL NOT NULL,
  against_steel REAL NOT NULL,
  against_water REAL NOT NULL,
) 

CREATE TABLE pokemons(
  generation INTEGER NOT NULL,
  pokemonID INTEGER PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  hp INTEGER NOT NULL,
  attack INTEGER NOT NULL,
  defense INTEGER NOT NULL,
  sp_attack INTEGER NOT NULL,
  sp_defense INTEGER NOT NULL,
  speed INTEGER NOT NULL,
  base_total INTEGER NOT NULL,
  type1ID INTEGER REFERENCES types(typeID),
  type2ID INTEGER REFERENCES types(typeID),
  classficationID INTEGER REFERENCES classfications(classficationID)
);

