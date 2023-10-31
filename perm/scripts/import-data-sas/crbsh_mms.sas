%let path_to_file = '../data-csv/crbsh_mms.csv';
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

	INFORMAT mmstot BEST32.;
	FORMAT mmstot BEST12.;

	INFORMAT mmstotp BEST32.;
	FORMAT mmstotp BEST12.;

	INPUT
		id_addi
		visit
		mmstot
		mmstotp
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		mmstot = "MMS Total score"
		mmstotp = "MMSE Pro-rated"
	;
RUN;


        DATA crbsh_mms;
            SET WORK.IMPORT;
        RUN;
        