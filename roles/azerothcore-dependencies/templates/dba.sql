
DROP USER IF EXISTS '{{azerothcore_db_user}}'@'localhost';

CREATE USER '{{azerothcore_db_user}}'@'localhost'
IDENTIFIED BY '{{azerothcore_db_password}}';

GRANT ALL PRIVILEGES ON `acore\_%`.*
TO '{{azerothcore_db_user}}'@'localhost'
WITH GRANT OPTION;
