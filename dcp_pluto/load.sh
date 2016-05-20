psql -d postgres -U postgres -f drop.sql
shp2pgsql -p -s 2263:4326 ../temp/Manhattan/MNMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
shp2pgsql -a -s 2263:4326 ../temp/Manhattan/MNMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
shp2pgsql -a -s 2263:4326 ../temp/Bronx/BXMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
shp2pgsql -a -s 2263:4326 ../temp/Brooklyn/BKMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
shp2pgsql -a -s 2263:4326 ../temp/Queens/QNMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
shp2pgsql -a -s 2263:4326 ../temp/Staten_Island/SIMapPLUTO.shp public.dcp_mappluto | psql -d postgres -U postgres 
psql -d postgres -U postgres -f updatetypes.sql