-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS lpc_landmarks;
CREATE TABLE lpc_landmarks (
BIN_NUMBER text,BoroughID text,the_geom text,BBL text,BLOCK text,LOT text,LP_NUMBER text,LM_NAME text,PLUTO_ADDR text,DESIG_ADDR text,PUBLIC_HEA text,LM_TYPE text,HIST_DISTR text,OTHER_HEAR text,BOUNDARIES text,MOST_CURRE text,STATUS text,LAST_ACTIO text,COUNT_BLDG text,NON_BLDG text,VACANT_LOT text,SECND_BLDG text,DESDATE text,CALDATE text
);

