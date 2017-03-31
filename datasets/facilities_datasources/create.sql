-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS facilities_datasources;
CREATE TABLE facilities_datasources (
	using_01 text,
	pgtable text,
	datasource text,
	datasourcefull text,
	dataname text,
	confidence text,
	notes text,
	uniqueID text,
	datatype text,
	refreshmeans text,
	refreshfrequency text,
	datadate text,
	dataurl text,
	linkdownload text
  )