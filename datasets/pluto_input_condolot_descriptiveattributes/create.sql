-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS pluto_input_condolot_descriptiveattributes;
CREATE TABLE pluto_input_condolot_descriptiveattributes (
	CondNO text,Boro text,PARID text,BC text,TC text,LandSize text,Story text,YearBuilt text
 );