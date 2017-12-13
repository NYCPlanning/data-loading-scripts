-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS nysdoh_cacfp;
CREATE TABLE nysdoh_cacfp (
	county text,
	sitename text,
	addressomitted text,
	street1 text,
	street2 date,
	city text,
	state text,
	zipcode text,
	programtype text,
	licensetype text,
	sitetype text,
	breastfeedingcertified text,
	eatwellplayhardccsparticipant text,
	lastewphccs text,
	eatwellplayharddhcparticipant text,
	lastewphdch text,
	location text
)