-- create table to load csv from the nyc open data portal
DROP TABLE IF EXISTS lpc_historic_districts;
CREATE TABLE lpc_historic_districts (
BIN text,OBJECTID text,the_geom text,BBL text,DOITT_ID text,HEIGHT_ROO text,GROUND_ELE text,Borough text,Block text,Lot text,ZipCode text,Address text,OwnerName text,NumFloors text,YearBuilt text,YearAlter1 text,YearAlter2 text,Des_Addres text,Circa text,Date_Low text,Date_High text,Date_Combo text,Alt_Date_1 text,Arch_Build text,Alt_Date_2 text,Own_Devel text,Alt_Arch_1 text,Alt_Arch_2 text,Altered text,Style_Prim text,Style_Sec text,Style_Oth text,NonContrib text,Mat_Prim text,Mat_Sec text,Mat_Third text,Mat_Four text,Mat_Other text,Use_Orig text,Use_Other text,Build_Type text,Build_Oth text,Build_Nme text,Notes text,NewConst text,Hist_Dist text,ERA text,LM_Orig text,LM_New text,HD_FLAG text,IL_FLAG text,Shape_Leng text,Shape_Area text,BBL_2 text
);

