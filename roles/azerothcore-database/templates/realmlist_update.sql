-- This is for specifically update the realmlist in the database
-- in the event the IP changes

UPDATE realmlist
SET name="{{ azerothcore_realmlist_name }}",
    localAddress="{{ azerothcore_realmlist_local_ip }}",
    address="{{ azerothcore_realmlist_ip }}"
WHERE id="{{ azerothcore_realmlist_id }}";
