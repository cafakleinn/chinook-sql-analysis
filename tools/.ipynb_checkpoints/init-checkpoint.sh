#!/bin/bash

psql -q < ~/public/data/Chinook_PostgreSql.sql >/dev/null 2>&1 

echo "Data is loaded."


