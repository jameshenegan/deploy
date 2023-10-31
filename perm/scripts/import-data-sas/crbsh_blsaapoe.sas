%let path_to_file = '../data-csv/crbsh_blsaapoe.csv';
OPTIONS nofmterr;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT apoe4 BEST32.;
	FORMAT apoe4 BEST12.;

	INPUT
		id_addi
		apoe4
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		apoe4 = ""
	;
RUN;


        DATA crbsh_blsaapoe;
            SET WORK.IMPORT;
        RUN;
        