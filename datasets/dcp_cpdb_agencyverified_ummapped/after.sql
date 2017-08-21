DROP TABLE IF EXISTS dcp_cpdb_agencyverified_ummapped;
CREATE TABLE dcp_cpdb_agencyverified_ummapped AS 
SELECT * FROM acsunmapped
UNION ALL
SELECT * FROM docunmapped
UNION ALL
SELECT * FROM dohmhunmapped
UNION ALL
SELECT * FROM dotunmapped
UNION ALL
SELECT * FROM hhcunmapped
UNION ALL
SELECT * FROM hraunmapped
UNION ALL
SELECT * FROM ocaunmapped;

DROP TABLE acsunmapped;
DROP TABLE docunmapped;
DROP TABLE dohmhunmapped;
DROP TABLE dotunmapped;
DROP TABLE hhcunmapped;
DROP TABLE hraunmapped;
DROP TABLE ocaunmapped;