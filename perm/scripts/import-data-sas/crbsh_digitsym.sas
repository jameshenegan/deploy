%let path_to_file = '../data-csv/crbsh_digitsym.csv';
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

	INFORMAT dsstot BEST32.;
	FORMAT dsstot BEST12.;

	INPUT
		id_addi
		dsstot
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		dsstot = "DigitSym total score"
	;
RUN;


        DATA crbsh_digitsym;
            SET WORK.IMPORT;
        RUN;
        