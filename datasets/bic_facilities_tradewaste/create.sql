-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS bic_facilities_tradewaste;
CREATE TABLE bic_facilities_tradewaste (
  TYPE text,
  BUS_NAME text,
  MAILING_OFFICE text,
  MAIL_CITY text,
  MSTAT text,
  Postcode text,
  COMP_PHONE text,
  Borough text,
  Latitude text,
  Longitude text,
  Community_Board text,
  Council_District text,
  Census_Tract text,
  BIN text,
  BBL text,
  NTA text,
  Location_1 text
)