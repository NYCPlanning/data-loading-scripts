-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS lpc_historic_districts;
CREATE TABLE lpc_historic_districts (
BIN text,the_geom text,BBL text,OBJECTID text,Borough text,Block text,Lot text,Des_Addres text,Circa text,Date_Low text,Date_High text,Date_Combo text,Alt_Date_1 text,Alt_Date_2 text,Arch_Build text,Own_Devel text,Alt_Arch_1 text,Alt_Arch_2 text,Style_Prim text,Style_Sec text,Style_Oth text,Mat_Prim text,Mat_Sec text,Mat_Third text,Mat_Four text,Mat_Other text,Use_Orig text,Use_Other text,Build_Type text,Build_Oth text,Build_Nme text,Notes text,Hist_Dist text,LM_Orig text,LM_New text,Shape_Leng text,Shape_Area text
);

