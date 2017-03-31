-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS hash_uid_lookup;
CREATE TABLE hash_uid_lookup (
	hash text,
	uid text
  )