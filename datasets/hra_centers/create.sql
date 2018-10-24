-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS hra_centers CASCADE;
CREATE TABLE hra_centers (
Borough text,
CenterName text,
CenterAddress text,
ZipCode text,
Telephone text,
Latitude double precision,
Longitude double precision,
Community_Board text,
Council_District text,
Census_Tract text,
BIN text,
BBL text,
NTA text,
Borough1 text
);