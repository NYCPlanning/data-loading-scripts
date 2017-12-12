-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS hra_idnyc_locations;
CREATE TABLE hra_idnyc_locations (
	id text,
	name text,
	address1 text,
	address2 text,
	city text,
	zip text,
	hours text,
	type text,
	location text
)