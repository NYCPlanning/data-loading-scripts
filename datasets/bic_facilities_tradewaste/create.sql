-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS bic_facilities_tradewaste;
CREATE TABLE bic_facilities_tradewaste (
  CREATED text,
  BICNUMBER text,
  BUS_NAME text,
  TRADENAME text,
  MAILING_OFFICE text,
  MAIL_CITY text,
  STATE text,
  Postcode text,
  COMP_PHONE text,
  EMAIL text,
  TYPE text,
  DISPOSITIONDATE text,
  EFFECTIVEDATE text,
  EXPIRATIONDATE text,
  EXPORTDATE text,
  Latitude text,
  Longitude text,
  Community_Board text,
  Council_District text,
  Census_Tract text,
  BIN text,
  BBL text,
  NTA text,
  Borough text
);