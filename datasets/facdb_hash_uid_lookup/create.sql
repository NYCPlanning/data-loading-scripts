-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS facdb_hash_uid_lookup;
CREATE TABLE facdb_hash_uid_lookup (
	hash text,
	uid text
  )