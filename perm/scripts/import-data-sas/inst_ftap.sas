%let path_to_file = '../data-csv/inst_ftap.csv';
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

	INFORMAT dom_hand BEST32.;
	FORMAT dom_hand BEST12.;

	INFORMAT error BEST32.;
	FORMAT error BEST12.;

	INFORMAT hand $12.;
	FORMAT hand $12.;

	INFORMAT loc $62.;
	FORMAT loc $62.;

	INFORMAT mn_cnt BEST32.;
	FORMAT mn_cnt BEST12.;

	INFORMAT mn_time BEST32.;
	FORMAT mn_time BEST12.;

	INFORMAT ntrial BEST32.;
	FORMAT ntrial BEST12.;

	INFORMAT sd_time BEST32.;
	FORMAT sd_time BEST12.;

	INFORMAT type $7.;
	FORMAT type $7.;

	INPUT
		id_addi
		visit
		dom_hand
		error
		hand
		loc
		mn_cnt
		mn_time
		ntrial
		sd_time
		type
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		dom_hand = "Dominant Hand"
		error = "Error Field"
		hand = "Hand"
		loc = ""
		mn_cnt = "Mean Count"
		mn_time = "Mean Time"
		ntrial = "Number of Trials"
		sd_time = "Standared Deviation of Time"
		type = ""
	;
RUN;


        DATA inst_ftap;
            SET WORK.IMPORT;
        RUN;
        