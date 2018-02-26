-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS dcp_melissa_september2016;
CREATE TABLE dcp_melissa_september2016 (
	objectid text,
	address text,
	suite text,
	city text,
	st text,
	zip text,
	plus4 text,
	crrt text,
	nycemid text,
	rbid text,
	updated text,
	hsngis text,
	stngis text,
	scgis text,
	bingis text,
	zipgis text,
	bblgis text,
	blockgis text,
	lotgis text,
	ctgis text,
	ctgisn text,
	cbgis text,
	boro text
);