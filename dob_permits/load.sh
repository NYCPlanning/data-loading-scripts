# create table
psql -d postgres -U postgres -f create.sql 

# copy data from csv
psql -d postgres -U postgres -f copy.sql

# perform lookup on borough field, concatenate with block and lot to form bbl
psql -d postgres -U postgres -f addbbl.sql

psql -d postgres -U postgres -f addgeom.sql