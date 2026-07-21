#!/bin/bash
# Cria os bancos usados pela Evolution API e pelo Typebot na primeira subida
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE evolution;
    CREATE DATABASE typebot;
EOSQL
