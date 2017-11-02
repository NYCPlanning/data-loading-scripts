-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS cbbr_commboard_regid;
CREATE TABLE cbbr_commboard_regid (
	name text,
	regid text,
	regdate text,
	progress text,
	borough text,
	commdist text,
	datelastupdate text
);

DROP TABLE IF EXISTS cbbr_requests_main;
CREATE TABLE cbbr_requests_main (
	regid text,
	regdate text,
	progress text,
	parentregid text,
	parentfieldid text,
	description text,
	uploads text,
	need text,
	request text,
	supporters1 text,
	streetsegment text,
	streetcross1 text,
	streetcross2 text,
	supporters2 text,
	agency text,
	budgetcategory text,
	priority text,
	conornew text,
	trackingnum text,
	firstyrsubmitted text,
	site1 text,
	sitename text,
	addressnum text,
	blocknum text,
	lotnum text,
	streetname text,
	refname text,
	kill text,
	datelastupdate text
);

DROP TABLE IF EXISTS cbbr_requests_other;
CREATE TABLE cbbr_requests_other (
	regid text,
	regdate text,
	progress text,
	parentregid text,
	parentfieldid text,
	need text,
	request text,
	agency text,
	budgetcategory text,
	description text,
	streetsegment text,
	streetcross1 text,
	streetcross2 text,
	supporters1 text,
	supporters2 text,
	uploads text,
	priority text,
	conornew text,
	site1 text,
	refname text,
	firstyrsubmitted text,
	trackingnum text,
	sitename text,
	addressnum text,
	streetname text,
	blocknum text,
	lotnum text,
	kill text,
	datelastupdate text
);