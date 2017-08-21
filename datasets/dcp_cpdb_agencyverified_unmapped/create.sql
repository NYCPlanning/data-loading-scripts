-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS acs_unmapped;
CREATE TABLE acs_unmapped (
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
);

DROP TABLE IF EXISTS doc_unmapped;
CREATE TABLE doc_unmapped (
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
);

DROP TABLE IF EXISTS dohmh_unmapped;
CREATE TABLE dohmh_unmapped (
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
);

DROP TABLE IF EXISTS dot_unmapped;
CREATE TABLE dot_unmapped (
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
);

DROP TABLE IF EXISTS hhc_unmapped;
CREATE TABLE hhc_unmapped (
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
);

DROP TABLE IF EXISTS hra_unmapped;
CREATE TABLE hra_unmapped (
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
);

DROP TABLE IF EXISTS oca_unmapped;
CREATE TABLE oca_unmapped (
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
);