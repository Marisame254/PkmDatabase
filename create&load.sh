#! usr/bin/zsh

echo "Creating Tables"
psql -U nue -f createTablesPkm.sql

echo "Populating type's table"
psql -U nue -dbpokemondb -c"\copy types from data/types.csv"