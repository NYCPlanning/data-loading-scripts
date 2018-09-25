-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dobdev_jobs_20180316_sub;
CREATE TABLE dobdev_jobs_20180316_sub (
  jobnumber text,
  address text,
  housenumber text,
  streetname text,
  bin text,
  bbl text,
  boro text
);