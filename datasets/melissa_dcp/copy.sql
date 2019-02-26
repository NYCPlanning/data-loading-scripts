\COPY melissa_raw FROM '/prod/data-loading-scripts/temp/melissa_dcp/3251328_JR.csv' CSV HEADER;
\COPY melissa_fapout FROM '/prod/data-loading-scripts/temp/melissa_dcp/FAP_Out_Combined.csv' CSV HEADER;
\COPY melissa_f1eout FROM '/prod/data-loading-scripts/temp/melissa_dcp/F1E_Out_Combined.csv' CSV HEADER;
\COPY melissa_f1aout FROM '/prod/data-loading-scripts/temp/melissa_dcp/F1A_Out_Combined.csv' CSV HEADER;
\COPY melissa_f1eerr FROM '/prod/data-loading-scripts/temp/melissa_dcp/F1E_Err.csv' CSV HEADER;
\COPY melissa_f1aerr FROM '/prod/data-loading-scripts/temp/melissa_dcp/F1A_Err.csv' CSV HEADER;
\COPY melissa_faperr FROM '/prod/data-loading-scripts/temp/melissa_dcp/FAP_Err.csv' CSV HEADER;