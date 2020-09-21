#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE TABLE PRODUCTS(PRICE FLOAT, NAME TEXT);
    INSERT INTO PRODUCTS VALUES('18.95', 'widget');
    INSERT INTO PRODUCTS VALUES('1.45', 'sprocket');
EOSQL