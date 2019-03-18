-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS dof_dtm_changes;
CREATE TABLE dof_dtm_changes (
BBLE text,Mail_Sequence text,Mail_Recipient_Type text,Borough text,Block text,Lot text,Easement text,Tax_Class text,Building_Class text,Owner_Name_1 text,Owner_Name_2 text,Prop_Housenum text,Prop_Street text,Prop_Unit text,Prop_City text,Prop_State text,Prop_Zip text,Prop_Chg_Date text,Mortgage_Service_Co text,Govt_Owned text,Mail_Recipient_Name text,Mail_CareOf text,Mail_Address_1 text,Mail_Address_2 text,Mail_City text,Mail_State text,Mail_Zip text,Mail_Country text,Mail_Country_CD text,Recip_Chg_Date text,Mail_Chg_Date text,Own_Chg_Date text,Own2_Chg_Date text,Phone text,Email text,USPS_Verified text,Returned_Mail text,USPS_Address text
);