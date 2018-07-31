-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dcp_zoning_maxfar;
CREATE TABLE dcp_zoning_maxfar (
	zonedist text,
	Contextual text,
	zoningdistricttype text,
	residfar text,
	facilfar text,
	commfar text,
	mnffar text,
	Column1 text,
	verified text,
	extra text
);