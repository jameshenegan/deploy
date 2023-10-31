%let path_to_file = '../data-csv/diagnoses_blsadx.csv';
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

	INFORMAT category BEST32.;
	FORMAT category BEST12.;

	INFORMAT certainty BEST32.;
	FORMAT certainty BEST12.;

	INFORMAT dx_index BEST32.;
	FORMAT dx_index BEST12.;

	INFORMAT icd9_1 $6.;
	FORMAT icd9_1 $6.;

	INFORMAT icd9_2 $6.;
	FORMAT icd9_2 $6.;

	INFORMAT icd9_3 $6.;
	FORMAT icd9_3 $6.;

	INFORMAT source BEST32.;
	FORMAT source BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT year_1st_act BEST32.;
	FORMAT year_1st_act BEST12.;

	INFORMAT year_last_act BEST32.;
	FORMAT year_last_act BEST12.;

	INPUT
		id_addi
		category
		certainty
		dx_index
		icd9_1
		icd9_2
		icd9_3
		source
		visit
		year_1st_act
		year_last_act
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		category = "Category"
		certainty = "Certainty"
		dx_index = "Diagnosis Index"
		icd9_1 = "ICD9 Code 1"
		icd9_2 = "ICD9 Code 2"
		icd9_3 = "ICD9 Code 3"
		source = "Source"
		visit = "Visit"
		year_1st_act = "Year First"
		year_last_act = "Year Last"
	;
RUN;


        DATA diagnoses_blsadx;
            SET WORK.IMPORT;
        RUN;
        