-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS acs_facilities_daycareheadstart;
CREATE TABLE acs_facilities_daycareheadstart (
	ContractorName text,
	ProgramName text,
	ProgramAddress text,
	Boro text,
	ZIP text,
	CD text,
	INF text,
	TOD text,
	PS text,
	TOTAL text,
	INF1 text,
	TOD1 text,
	PS1 text,
	SCH text,
	TOTAL1 text,
	PerofEnrol text
 );
