-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS cbbr_commboard_regid;
CREATE TABLE cbbr_commboard_regid (
	regid text,
	name text,
	borough text,
	commdist text
);

DROP TABLE IF EXISTS cbbr_requests_main;
CREATE TABLE cbbr_requests_main (
	regid text,
	regdate text,
	progress text,
	priority text,
	refname text,
	need text,
	request text,
	agency text,
	budgetcategory text,
	description text,
	parentregid text,
	parentfieldid text,
	site1 text,
	conornew text,
	sitename text,
	addressnum text,
	streetname text,
	blocknum text,
	lotnum text,
	streetsegment text,
	streetcross1 text,
	streetcross2 text,
	supporters1 text,
	supporters2 text,
	uploads text,
	trackingnum text,
	firstyrsubmitted text,
	kill text
);

DROP TABLE IF EXISTS cbbr_requests_other;
CREATE TABLE cbbr_requests_other (
	regid text,
	regdate text,
	progress text,
	priority text,
	refname text,
	need text,
	request text,
	agency text,
	budgetcategory text,
	description text,
	parentregid text,
	parentfieldid text,
	site1 text,
	conornew text,
	sitename text,
	addressnum text,
	streetname text,
	blocknum text,
	lotnum text,
	streetsegment text,
	streetcross1 text,
	streetcross2 text,
	supporters1 text,
	supporters2 text,
	uploads text,
	trackingnum text,
	firstyrsubmitted text,
	kill text
);