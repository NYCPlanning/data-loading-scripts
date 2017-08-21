-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS dcp_cpdb_agencyverified_unmapped;
CREATE TABLE dcp_cpdb_agencyverified_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text
)