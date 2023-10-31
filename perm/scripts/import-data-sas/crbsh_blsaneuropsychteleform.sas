%let path_to_file = '../data-csv/crbsh_blsaneuropsychteleform.csv';
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

	INFORMAT cog02 BEST32.;
	FORMAT cog02 BEST12.;

	INFORMAT cog04 BEST32.;
	FORMAT cog04 BEST12.;

	INFORMAT cog07 BEST32.;
	FORMAT cog07 BEST12.;

	INFORMAT cog09 BEST32.;
	FORMAT cog09 BEST12.;

	INFORMAT cog10 BEST32.;
	FORMAT cog10 BEST12.;

	INFORMAT cog11 BEST32.;
	FORMAT cog11 BEST12.;

	INFORMAT cog12 BEST32.;
	FORMAT cog12 BEST12.;

	INFORMAT cog13 BEST32.;
	FORMAT cog13 BEST12.;

	INFORMAT cog14 BEST32.;
	FORMAT cog14 BEST12.;

	INFORMAT cog15 BEST32.;
	FORMAT cog15 BEST12.;

	INFORMAT cog16 BEST32.;
	FORMAT cog16 BEST12.;

	INFORMAT cog17 BEST32.;
	FORMAT cog17 BEST12.;

	INFORMAT cog18 BEST32.;
	FORMAT cog18 BEST12.;

	INPUT
		id_addi
		cog02
		cog04
		cog07
		cog09
		cog10
		cog11
		cog12
		cog13
		cog14
		cog15
		cog16
		cog17
		cog18
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		cog02 = "PMA vocabulary"
		cog04 = "California Verbal Learning - Part 1"
		cog07 = "Purdue Pegboard"
		cog09 = "California Verbal Learning - Part 2"
		cog10 = "Verbal Fluency - Letter F"
		cog11 = "Verbal Fluency - Letter A"
		cog12 = "Verbal Fluency - Letter S"
		cog13 = "Verbal Fluency - Fruit"
		cog14 = "Verbal Fluency - Animals"
		cog15 = "Verbal Fluency - Vegetables"
		cog16 = "WAIS Digit Symbol Substitution"
		cog17 = "WRAT"
		cog18 = "WAIS-R Similarities"
	;
RUN;


        DATA crbsh_blsaneuropsychteleform;
            SET WORK.IMPORT;
        RUN;
        