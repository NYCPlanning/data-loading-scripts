DROP TABLE IF EXISTS dcp_cpdb_agencyverified_unmapped;
CREATE TABLE dcp_cpdb_agencyverified_unmapped AS 
SELECT * FROM acs_unmapped
UNION ALL
SELECT * FROM doc_unmapped
UNION ALL
SELECT * FROM dohmh_unmapped
UNION ALL
SELECT * FROM dot_unmapped
UNION ALL
SELECT * FROM hhc_unmapped
UNION ALL
SELECT * FROM hra_unmapped
UNION ALL
SELECT * FROM oca_unmapped;

DROP TABLE acs_unmapped;
DROP TABLE doc_unmapped;
DROP TABLE dohmh_unmapped;
DROP TABLE dot_unmapped;
DROP TABLE hhc_unmapped;
DROP TABLE hra_unmapped;
DROP TABLE oca_unmapped;