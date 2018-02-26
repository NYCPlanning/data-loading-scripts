-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS dcp_melissa_september2017;
CREATE TABLE dcp_melissa_september2017 (
	address text,
	suite text,
	city text,
	st text,
	zip text,
	plus4 text,
	rbdi text,
	updatedate text,
	crrt text
);