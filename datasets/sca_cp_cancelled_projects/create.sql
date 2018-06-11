-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_cancelled_projects;
CREATE TABLE sca_cp_cancelled_projects (
	
	District text,
	BldID text,
	School text,
	Boro text,
	ProgramCategory text,
	Reason text
);


