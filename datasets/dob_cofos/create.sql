-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dob_cofos;
CREATE TABLE dob_cofos (
  Jobnum text,
  EffectiveDate text,
  BIN text,
  BoroName text,
  HouseNumber text,
  StreetName text,
  Block text,
  Lot text,
  numofDwellingUnits text,
  OccupancyClass text,
  CertificateType text,
  BuildingTypeDesc text,
  DocStatus text
);