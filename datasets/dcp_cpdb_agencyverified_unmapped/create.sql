-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS ACS_unmapped;
CREATE TABLE ACS_unmapped (
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

DROP TABLE IF EXISTS DOC_unmapped;
CREATE TABLE DOC_unmapped (
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

DROP TABLE IF EXISTS DOHMH_unmapped;
CREATE TABLE DOHMH_unmapped (
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

DROP TABLE IF EXISTS DOT_unmapped;
CREATE TABLE DOT_unmapped (
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

DROP TABLE IF EXISTS HHC_unmapped;
CREATE TABLE HHC_unmapped (
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

DROP TABLE IF EXISTS HRA_unmapped;
CREATE TABLE HRA_unmapped (
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

DROP TABLE IF EXISTS OCA_unmapped;
CREATE TABLE OCA_unmapped (
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