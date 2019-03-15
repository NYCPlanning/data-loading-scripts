-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_programs_prev;
CREATE TABLE sca_cp_programs_prev (
	District text,
	Borough text,
	BuildingID text,
	School text,
	ProjectNum text,
	Description text,
	FY text,
	Total double precision
);


