\COPY mnpluto FROM '/prod/data-loading-scripts/temp/dcp_pluto/PLUTO_for_WEB/MN_18v1.csv' CSV HEADER;
\COPY bxpluto FROM '/prod/data-loading-scripts/temp/dcp_pluto/PLUTO_for_WEB/BX_18v1.csv' CSV HEADER;
\COPY bkpluto FROM '/prod/data-loading-scripts/temp/dcp_pluto/PLUTO_for_WEB/BK_18v1.csv' CSV HEADER;
\COPY qnpluto FROM '/prod/data-loading-scripts/temp/dcp_pluto/PLUTO_for_WEB/QN_18v1.csv' CSV HEADER;
\COPY sipluto FROM '/prod/data-loading-scripts/temp/dcp_pluto/PLUTO_for_WEB/SI_18v1.csv' CSV HEADER;

DROP TABLE IF EXISTS dcp_pluto;
CREATE TABLE dcp_pluto AS 
SELECT * FROM mnpluto
UNION ALL
SELECT * FROM bxpluto
UNION ALL
SELECT * FROM qnpluto
UNION ALL
SELECT * FROM bkpluto
UNION ALL
SELECT * FROM sipluto;

DROP TABLE mnpluto;
DROP TABLE bxpluto;
DROP TABLE qnpluto;
DROP TABLE bkpluto;
DROP TABLE sipluto;