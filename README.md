# PkmDatabase in PostgreSQL with python

## RESUME

This repository create a pokemon database with all stats for each pokemon until 7 generation. In the data directory is stored the csv files that contains all data about pokemos, the csv files are:

1. againsts.csv
2. classfications.csv
3. pokemons.csv
4. types.csv

These csv files where created in the ***PkmDataBase.ipynb***, check the file to know how where created.

## Create the Database in postgreSQL

To create a database put the following command from the command line:

``` bash
psql -U user -h localhost -c"create database pokemondb;"
```

## Tables created in PostgreSQL

The ***createTablesPkm.sql*** create the tables in a database named pokemondb, the next imagen show the tables created in PostgresSQL. To use the file, you need to use the command line and put this:

``` bash
psql -U user -h localhost -d pokemondb -f createTablesPkm.sql
```

you need to put the password for the user and then the tables will be created in the pokemosDB database. To view the created tables use this from the command line:

```bash
psql -U user -h localhost -d pokemondb -c "\dt"
```

![tables](images/pkm_list_tables.png)

## Create&Load script

The ***create&load.sh*** is a script that automatic creates the tables in the database an then populate the tables with all csv in the data directory. *In the script were defined my user in postgreSQL, please change with your user before you use the command bellow*. To use this script put the following command from the command line:

```bash
bash create\&load.sh
```

If the command doesn't work, please add to all commands in load&create.sh `-h localhost`, the commands will look like this:

```bash
... | psql -U user -h localhost -d pokemondb
```

## Data Visualization

The ***PkmDataVisualization.ipynb*** file has many visualizations from de pokemon.csv.
