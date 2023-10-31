%let path_to_file = '../data-csv/crbsh_neubos.csv';
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

	INFORMAT boscor BEST32.;
	FORMAT boscor BEST12.;

	INPUT
		id_addi
		boscor
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		boscor = "BostonNaming - # correct of 60"
	;
RUN;


        DATA crbsh_neubos;
            SET WORK.IMPORT;
        RUN;
        