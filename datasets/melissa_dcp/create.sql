DROP TABLE IF EXISTS melissa_raw;
CREATE TABLE melissa_raw (
Address text,Suite text,City text,ST text,ZIP text,Plus4 text,RBDI text,UpdateDate text,CRRT text
);

DROP TABLE IF EXISTS melissa_fapout;
CREATE TABLE melissa_fapout (
RecordId text, id text,WA1_HouseNumberDisplay text,WA1_STREET1_StreetName text,WA1_GRC text,WA1_ReasonCode text,WA1_WarningCode text,WA1_Message text, WA2_Latitude text,WA2_Longitude text,WA2_XCoordinate text,WA2_YCoordinate text,WA2_AP_ID text,FAP_Rerun_CorrectedBorough text,FAP_Rerun_CorrectedHN text,FAP_Rerun_CorrectedStreet text);
DROP TABLE IF EXISTS melissa_f1eout;
CREATE TABLE melissa_f1eout (
id text,WA1_HouseNumberDisplay text,WA1_STREET1_BoroughCode text,WA1_STREET1_StreetName text,WA1_ReasonCode text,WA1_WarningCode text,WA1_Message text,WA2_XCoordinate text,WA2_YCoordinate text,WA2_CommunityDistrict text,WA2_NTA text,WA2_PhysicalID text,WA2_NTAname text,WA2_Latitude text,WA2_Longitude text,WA2_BlockfaceID text,WA2_ReasonCode text,WA2_GRC text,CorrectedBorough text,CorrectedHN text,CorrectedStreet text);

DROP TABLE IF EXISTS melissa_f1aout;
CREATE TABLE melissa_f1aout (
id text,RecordId text,WA1_HouseNumberDisplay text,WA1_STREET1_StreetName text,WA1_GRC text,WA1_ReasonCode text,WA1_Message text,WA2_BBL text,WA2_BinOfInputAddress text,WA2_TPADNewBin text,WA2_ReasonCode text,WA2_GRC text,blank text,F1A_RERUN_Err_CorrectedBorough text,F1A_RERUN_Err_CorrectedHN text,F1A_RERUN_Err_CorrectedStreet text);

DROP TABLE IF EXISTS melissa_f1eerr;
CREATE TABLE melissa_f1eerr (
id text,address text,city text,st text,zip text,Street text,Researched text,OutsideofNYC text,CorrectedBorough text,CorrectedHN text,CorrectedStreet text,GRC text,ReasonCode text,BadRecordId text);
DROP TABLE IF EXISTS melissa_f1aerr;
CREATE TABLE melissa_f1aerr (
id text,address text,city text,st text,zip text,Street text,Researched text,CorrectedBorough text,CorrectedHN text,CorrectedStreet text,GRC text,ReasonCode text,BadRecordId text);
DROP TABLE IF EXISTS melissa_faperr;
CREATE TABLE melissa_faperr (
id text,address text,city text,st text,zip text,Street text,Researched text,CorrectedBorough text,CorrectedHN text,CorrectedStreet text,GRC text,ReasonCode text,BadRecordId text);
