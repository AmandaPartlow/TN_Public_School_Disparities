/* Count of all the tables that contain one of the keywords (seems high)

SELECT COUNT(DISTINCT table_id)
FROM meta_field_descriptions
WHERE field_full_name ILIKE '%race%'
OR field_full_name ILIKE '%hispanic%'
OR field_full_name ILIKE '%income%'
OR field_full_name ILIKE '%poverty%'; */


/* Comparing to total count (still seems like initial number is inflated)

SELECT COUNT(DISTINCT table_id)
FROM meta_field_descriptions;*/


/* Taking a look at corresponding field names - inflated because it's including a lot of rows I dont want */

SELECT DISTINCT table_id, field_full_name
FROM meta_field_descriptions
WHERE field_full_name ILIKE 'PER CAPITA INCOME IN THE PAST 12 MONTHS%';


