%let path_to_file = '../data-csv/crbsh_pegbrd.csv';
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

	INFORMAT dommean BEST32.;
	FORMAT dommean BEST12.;

	INFORMAT ndommean BEST32.;
	FORMAT ndommean BEST12.;

	INPUT
		id_addi
		visit
		dommean
		ndommean
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		dommean = "Pegboard Dominant"
		ndommean = "Pegboard Non-Dominant"
	;
RUN;


        DATA crbsh_pegbrd;
            SET WORK.IMPORT;
        RUN;
        