-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_cancelled_projectss;
CREATE TABLE sca_cp_cancelled_projects (
	
	District text,
	Bld ID text,
	School text,
	Boro text,
	Program Category text,
	Reason text
);


