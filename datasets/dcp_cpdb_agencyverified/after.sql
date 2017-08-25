DROP TABLE IF EXISTS dcp_cpdb_agencyverified;
CREATE TABLE dcp_cpdb_agencyverified AS 
SELECT * FROM acs_unmapped
UNION ALL
SELECT * FROM doc_mapped
UNION ALL
SELECT * FROM doc_unmapped
UNION ALL
SELECT * FROM dohmh_mapped
UNION ALL
SELECT * FROM dohmh_unmapped
UNION ALL
SELECT * FROM dot_mapped
UNION ALL
SELECT * FROM dot_unmapped
UNION ALL
SELECT * FROM hhc_mapped
UNION ALL
SELECT * FROM hhc_unmapped
UNION ALL
SELECT * FROM hra_mapped
UNION ALL
SELECT * FROM hra_unmapped
UNION ALL
SELECT * FROM oca_mapped
UNION ALL
SELECT * FROM oca_unmapped;

DROP TABLE acs_unmapped;
DROP TABLE doc_mapped;
DROP TABLE doc_unmapped;
DROP TABLE dohmh_mapped;
DROP TABLE dohmh_unmapped;
DROP TABLE dot_mapped;
DROP TABLE dot_unmapped;
DROP TABLE hhc_mapped;
DROP TABLE hhc_unmapped;
DROP TABLE hra_mapped;
DROP TABLE hra_unmapped;
DROP TABLE oca_mapped;
DROP TABLE oca_unmapped;