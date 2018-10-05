ALTER TABLE dot_parkingfacilities ADD COLUMN hash text;
UPDATE dot_parkingfacilities SET hash = md5(CAST((dot_parkingfacilities.*) AS text));
