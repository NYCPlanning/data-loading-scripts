-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS sca_cp_prek_location;
CREATE TABLE sca_cp_prek_location (
	DISTRICT text,
	SCHOOL text,
	BOROUGH	text,
	LOCATION text,
	Postcode text,
	Latitude text,
	Longitude text,
	Community Board text,
	Council District text, 	
	Census Tract text,	
	BIN	text,
	BBL	text,
	NTA text
);


