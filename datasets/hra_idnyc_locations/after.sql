ALTER TABLE hra_idnyc_locations ADD COLUMN hash text;
UPDATE hra_idnyc_locations SET hash = md5(CAST((hra_idnyc_locations.*) AS text));
