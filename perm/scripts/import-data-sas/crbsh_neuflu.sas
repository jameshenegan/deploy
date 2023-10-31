%let path_to_file = '../data-csv/crbsh_neuflu.csv';
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

	INFORMAT flucat BEST32.;
	FORMAT flucat BEST12.;

	INFORMAT flulet BEST32.;
	FORMAT flulet BEST12.;

	INPUT
		id_addi
		flucat
		flulet
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		flucat = "CategFluency - mean(fruit, animal, veg)"
		flulet = "LettrFluency - mean(F, A, S)"
	;
RUN;


        DATA crbsh_neuflu;
            SET WORK.IMPORT;
        RUN;
        