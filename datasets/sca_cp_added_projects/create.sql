-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_added_projectss;
CREATE TABLE sca_cp_added_projects (
	
	District text,
	Bldg ID text,
	School text,
	Boro text,
	Program Category text
);


