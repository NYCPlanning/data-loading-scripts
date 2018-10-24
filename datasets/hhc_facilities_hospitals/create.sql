-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS hhc_facilities_hospitals CASCADE;
CREATE TABLE hhc_facilities_hospitals (
  Facility_Type text,
  Borough text,
  Facility_Name text,
  Cross_Streets text,
  Phone text,
  Location_1 text,
  Postcode text,
  Latitude text,
  Longitude text,
  CommunityBoard text,
  CouncilDistrict text,
  CensusTract text,
  BIN text,
  BBL text,
  NTA text
);