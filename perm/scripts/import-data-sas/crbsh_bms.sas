%let path_to_file = '../data-csv/crbsh_bms.csv';
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

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT bmstot BEST32.;
	FORMAT bmstot BEST12.;

	INPUT
		id_addi
		visit
		bmstot
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		bmstot = "BMS Total errors"
	;
RUN;


        DATA crbsh_bms;
            SET WORK.IMPORT;
        RUN;
        