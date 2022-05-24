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

create TABLE abilities (
  abilityID INTEGER PRIMARY KEY,
  ability VARCHAR(30) NOT NULL
);

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
  type INTEGER REFERENCES types(typeID),
  classfication INTEGER REFERENCES classfications(classficationID)
);

