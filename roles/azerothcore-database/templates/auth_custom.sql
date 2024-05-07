-- Changes to this file will be overwritten, make changes in ./group_vars/all
UPDATE realmlist
SET name="{{ azerothcore_realmlist_name }}",
    localAddress="{{ azerothcore_realmlist_local_ip }}",
    address="{{ azerothcore_realmlist_ip }}"
WHERE id="{{ azerothcore_realmlist_id }}";
