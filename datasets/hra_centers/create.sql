-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS hra_centers;
CREATE TABLE hra_centers (
Borough text,
Center_Name text,
Center_Address text,
Zip_Code text,
Telephone text,
Latitude double precision,
Longitude double precision,
Community_Board INT,
Council_District INT,
Census_Tract INT,
BIN INT,
BBL INT,
NTA text,
Borough text
)
