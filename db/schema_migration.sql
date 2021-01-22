-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.

-- schema_migration.sql
--   creates pokemon table
--   has an autoincrementing id column
--   has a name column
--   has a type column

CREATE TABLE pokemon (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    type TEXT
);