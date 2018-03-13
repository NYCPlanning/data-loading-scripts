-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dcp_pad_bobaadr;
CREATE TABLE dcp_pad_bobaadr (
	boro text,
	block text,
	lot text,
	bin text,
	lhnd text,
	lhns text,
	lcontpar text,
	lsos text,
	hhnd text,
	hhns text,
	hcontpar text,
	hsos text,
	scboro text,
	sc5 text,
	sclgc text,
	stname text,
	addrtype text,
	realb7sc text,
	validlgcs text,
	dapsflag text,
	naubflag text,
	parity text,
	b10sc text,
	segid text,
	zipcode text,
	physical_id text
);

DROP TABLE IF EXISTS dcp_pad_bobabbl;
CREATE TABLE dcp_pad_bobabbl (
	loboro text,
	loblock text,
	lolot text,
	lobblscc text,
	hiboro text,
	hiblock text,
	hilot text,
	hibblscc text,
	boro text,
	block text,
	lot text,
	bblscc text,
	billboro text,
	billblock text,
	billlot text,
	billbblscc text,
	condoflag text,
	condonum text,
	coopnum text,
	numbf text,
	numaddr text,
	vacant text,
	interior text
);




