ALTER TABLE em_hurricaneevacuationcenters ADD COLUMN hash text;
UPDATE em_hurricaneevacuationcenters SET hash = md5(CAST((em_hurricaneevacuationcenters.*) AS text));
