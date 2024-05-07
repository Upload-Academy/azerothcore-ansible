-- https://github.com/azerothcore/azerothcore-wotlk/blob/master/data/sql/create/create_mysql.sql
-- GRANT ALL PRIVILEGES ON *.* TO '{{ azerothcore_db_user|quote }}'@'{{ azerothcore_db_server|quote }}' WITH GRANT OPTION;

-- TODO: we will eventually loop over all the databases needed for all the servers in the event someone wants
-- multiple world servers
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_world }} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_characters }}  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_auth }} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- DROP USER IF EXISTS '{{ azerothcore_db_user|quote }}'@'{{ azerothcore_db_server|quote }}';
-- CREATE USER '{{ azerothcore_db_user|quote }}'@'{{ azerothcore_db_server|quote }}'
-- IDENTIFIED BY '{{ azerothcore_db_password|quote }}'
-- WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0;

-- GRANT ALL PRIVILEGES ON `{{ azerothcore_db_world }}` . * TO '{{ azerothcore_db_user }}'@'{{ azerothcore_db_server }}' WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `{{ azerothcore_db_characters }}` . * TO '{{ azerothcore_db_user }}'@'{{ azerothcore_db_server }}' WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `{{ azerothcore_db_auth }}` . * TO '{{ azerothcore_db_user }}'@'{{ azerothcore_db_server }}' WITH GRANT OPTION;

-- FLUSH PRIVILEGES;
