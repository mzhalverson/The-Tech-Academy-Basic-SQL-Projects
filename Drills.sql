

SELECT * FROM tbl_habitat;

SELECT species_name FROM tbl_species WHERE species_order = 3;

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;

SELECT species_name FROM tbl_species WHERE species_nutrition BETWEEN 2202 AND 2206;

SELECT 
	a1.species_name AS 'Species Name:', a2.nutrition_type AS 'Nutrition Type:' 
	FROM tbl_species a1
	INNER JOIN tbl_nutrition a2 ON a2.nutrition_id = a1.species_nutrition
;

SELECT 
	specialist_fname, specialist_lname, specialist_contact 
	FROM tbl_specialist 
	WHERE specialist_id = 
	(SELECT care_specialist FROM tbl_care 
		WHERE care_id = 
		(SELECT species_care FROM tbl_species WHERE species_name = 'penguin'))
;


