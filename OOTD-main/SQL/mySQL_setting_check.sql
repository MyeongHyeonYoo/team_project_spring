use spr_pro;

SELECT b.name, a.time_zone_id
FROM mysql.time_zone a, mysql.time_zone_name b
WHERE a.time_zone_id = b.time_zone_id AND b.name LIKE '%Seoul';

SELECT schema_name, default_character_set_name, DEFAULT_COLLATION_NAME FROM information_schema.SCHEMATA ;

alter database spr_pro default character set = utf8mb4;

show full columns from spr_pro;