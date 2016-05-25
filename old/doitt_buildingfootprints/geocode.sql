ALTER TABLE dob_permits ADD "geom" geometry;
UPDATE dob_permits SET geom = CASE WHEN exists(SELECT 1 FROM dcp_mappluto b WHERE (a.bbl = b.bbl)) 
    THEN  (SELECT ST_CENTROID(geom) FROM dcp_mappluto b WHERE (a.bbl = b.bbl))
    WHEN exists(SELECT 1 FROM doitt_buildingfootprints b WHERE (a.bbl = b.bbl))
    THEN  (SELECT ST_CENTROID(geom) FROM doitt_buildingfootprints b WHERE (a.bbl = b.bbl))
    ELSE null
  END 
FROM dob_permits a 


