# get latest building permits data from NYC open data portal
curl -o ../temp/dob_projects.csv https://data.cityofnewyork.us/api/views/ipu4-2q9a/rows.csv?accessType=DOWNLOAD

# create table
psql -d postgres -U postgres -f create.sql 

# copy data from csv
psql -d postgres -U postgres -f copy.sql

# perform lookup on borough field, concatenate with block and lot to form bbl
psql -d postgres -U postgres -f addbbl.sql