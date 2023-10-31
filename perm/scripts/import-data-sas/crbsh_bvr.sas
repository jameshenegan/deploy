%let path_to_file = '../data-csv/crbsh_bvr.csv';
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

	INFORMAT bvrtot BEST32.;
	FORMAT bvrtot BEST12.;

	INPUT
		id_addi
		bvrtot
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		bvrtot = "BVR Total errors"
	;
RUN;


        DATA crbsh_bvr;
            SET WORK.IMPORT;
        RUN;
        