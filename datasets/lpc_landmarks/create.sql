-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS lpc_landmarks;
CREATE TABLE lpc_landmarks (
the_geom text,BIN_NUMBER text,OBJECTID text,BBL text,BoroughID text,BLOCK text,LOT text,LP_NUMBER text,RELATED_LP text,CHANGED_LP text,LM_NAME text,OTHER_NAME text,PLUTO_ADDR text,DESIG_ADDR text,DESIG_DATE text,PUBLIC_HEA text,LM_TYPE text,HIST_DISTR text,OTHER_HEAR text,BOUNDARIES text,NOTES text,MOST_CURRE text,STATUS text,LAST_ACTIO text,STATUS_NOT text,COUNT_BLDG text,NON_BLDG text,VACANT_LOT text,SECND_BLDG text,CD text,CCD text,NO_COUNT text,CALEN_DATE text
);