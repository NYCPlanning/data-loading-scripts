-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS facilities_uid_key;
CREATE TABLE facilities_uid_key (
	hash text,
	uid text
  )