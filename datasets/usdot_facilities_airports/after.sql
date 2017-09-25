ALTER TABLE public.usdot_facilities_airports ADD COLUMN hash text;
UPDATE public.usdot_facilities_airports SET hash = md5(CAST((public.usdot_facilities_airports.*) AS text));
