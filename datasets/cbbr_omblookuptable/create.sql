-- create table to load csv from the nyc open data portal text
DROP TABLE IF EXISTS cbbr_omblookuptable;
CREATE TABLE cbbr_omblookuptable (
	regid text,
	newtrackingno text
);