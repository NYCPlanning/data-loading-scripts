ALTER TABLE hhs_facilities_fmscontracts ADD COLUMN hash text;
UPDATE hhs_facilities_fmscontracts SET hash = array_to_string(ARRAY_AGG(md5(CAST((hhs_facilities_fmscontracts.*) AS text))),;);
