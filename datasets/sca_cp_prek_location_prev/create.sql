-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_prek_location_prev;
CREATE TABLE sca_cp_prek_location_prev (
	DISTRICT text,
	SCHOOL text,
	BOROUGH	text,
	LOCATION text
);


