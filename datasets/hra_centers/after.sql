ALTER TABLE hra_centers ADD COLUMN hash text;
UPDATE hra_centers SET hash = md5(CAST((hra_centers.*) AS text));
