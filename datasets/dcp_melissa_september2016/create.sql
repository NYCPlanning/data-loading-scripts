-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS dcp_melissa_september2016;
CREATE TABLE dcp_melissa_september2016 (
	rbdi text,
	title text,
	address text,
	city text,
	state text,
	zip text,
	plus4 text,
	walkseq text,
	crrt text,
	endorse text,
	city_rural text,
	dpb text,
	dpbc text,
	prename text,
	firstname text,
	initial text,
	lastname text,
	postname text,
	nameslug text,
	updated text,
	vacant text
);