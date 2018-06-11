-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_added_projects;
CREATE TABLE sca_cp_added_projects (
	
	District text,
	BldgID text,
	School text,
	Boro text,
	ProgramCategory text
);


