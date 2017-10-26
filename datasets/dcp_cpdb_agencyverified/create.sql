-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS acs_mapped;
CREATE TABLE acs_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

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
	agency text,
	origin text
);

DROP TABLE IF EXISTS bpl_mapped;
CREATE TABLE bpl_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS bpl_unmapped;
CREATE TABLE bpl_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS dhs_mapped;
CREATE TABLE dhs_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS dhs_unmapped;
CREATE TABLE dhs_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS doc_mapped;
CREATE TABLE doc_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);

DROP TABLE IF EXISTS dohmh_mapped;
CREATE TABLE dohmh_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);

DROP TABLE IF EXISTS dot_mapped;
CREATE TABLE dot_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);

DROP TABLE IF EXISTS dpr_mapped;
CREATE TABLE dpr_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS fdny_mapped;
CREATE TABLE fdny_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS fdny_unmapped;
CREATE TABLE fdny_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS hhc_mapped;
CREATE TABLE hhc_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);

DROP TABLE IF EXISTS hra_mapped;
CREATE TABLE hra_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);

DROP TABLE IF EXISTS nycha_mapped;
CREATE TABLE nycha_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS nycha_unmapped;
CREATE TABLE nycha_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS nypd_mapped;
CREATE TABLE nypd_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS nypd_unmapped;
CREATE TABLE nypd_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS nypl_mapped;
CREATE TABLE nypl_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS nypl_unmapped;
CREATE TABLE nypl_unmapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
);

DROP TABLE IF EXISTS oca_mapped;
CREATE TABLE oca_mapped (
	maprojid text,
	description text,
	category text,
	mappable text,
	address text,
	borough text,
	zipcode text,
	bbl text,
	bin text,
	agency text,
	origin text
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
	agency text,
	origin text
);