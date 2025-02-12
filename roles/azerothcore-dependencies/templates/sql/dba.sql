
-- TODO: we will eventually loop over all the databases needed for all the servers in the event someone wants
-- multiple world servers
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_world }} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_characters }}  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS {{ azerothcore_db_auth }} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


DROP USER IF EXISTS '{{azerothcore_db_user}}'@'localhost';

CREATE USER '{{azerothcore_db_user}}'@'localhost'
IDENTIFIED BY '{{azerothcore_db_password}}';

-- azerothcore_db_characters: "acore_characters"
-- azerothcore_db_auth: "acore_auth"
-- azerothcore_db_world: "acore_world"
GRANT ALL PRIVILEGES ON `{{azerothcore_db_characters}}`.*
TO '{{azerothcore_db_user}}'@'localhost'
WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `{{azerothcore_db_auth}}`.*
TO '{{azerothcore_db_user}}'@'localhost'
WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `{{azerothcore_db_world}}`.*
TO '{{azerothcore_db_user}}'@'localhost'
WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `acore_playerbots`.*
TO '{{azerothcore_db_user}}'@'localhost'
WITH GRANT OPTION;

-- GRANT ALL PRIVILEGES ON `acore\_%`.*
-- TO '{{azerothcore_db_user}}'@'localhost'
-- WITH GRANT OPTION;
