#! usr/bin/zsh

echo "Creating Tables"
psql -U nue -d pokemondb -f createTablesPkm.sql


echo "Populating types table"
echo "\COPY types FROM 'data/types.csv' DELIMITERS ',' \
            CSV HEADER;" | psql -U nue -d pokemondb 


echo "Populating classfications table"
echo "\COPY classfications FROM 'data/classfications.csv' DELIMITERS ',' \
            CSV HEADER;" | psql -U nue -d pokemondb


echo "Populating abilities table"
echo "\COPY abilities FROM 'data/abilities.csv' DELIMITERS ',' \
            CSV HEADER;" | psql -U nue -d pokemondb


echo "Populating againsts table"
echo "\COPY againsts FROM 'data/againsts.csv' DELIMITERS ',' \
            CSV HEADER;" | psql -U nue -d pokemondb 


echo "Populating pokemoms table"
echo "\COPY pokemons FROM 'data/pokemons.csv' DELIMITERS ',' \
            CSV HEADER;" | psql -U nue -d pokemondb 

echo "Populating finished"
