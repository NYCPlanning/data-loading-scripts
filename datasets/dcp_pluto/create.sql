-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS cbbr_ombresponse;
CREATE TABLE cbbr_ombresponse (
	newtrackingno text,
	borough text,
	commdist text,
	priority text,
	requestcategory text,
	request text,
	needcode text,
	description text,
	location text,
	supporters1 text,
	supporters2 text,
	projectid1 text,
	projectid2 text,
	projectid3 text,
	budgetline1 text,
	budgetline2 text,
	budgetline3 text,
	agency text,
	agyresponsecode text,
	agyresponse text,
	agyresponsecat text,
	agyresponsecatdesc text,
	additionalcomment text
);