%let path_to_file = '../data-csv/der_cohort_id.csv';
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

	INFORMAT v1todeathdays BEST32.;
	FORMAT v1todeathdays BEST12.;

	INPUT
		id_addi
		visit
		v1todeathdays
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		v1todeathdays = "Days from Visit 1 to Death (if known death)"
	;
RUN;


        DATA der_cohort_id;
            SET WORK.IMPORT;
        RUN;
        