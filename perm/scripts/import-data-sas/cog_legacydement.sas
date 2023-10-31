%let path_to_file = '../data-csv/cog_legacydement.csv';
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

	INFORMAT dx BEST32.;
	FORMAT dx BEST12.;

	INFORMAT dx_type1 BEST32.;
	FORMAT dx_type1 BEST12.;

	INFORMAT dx_type2 BEST32.;
	FORMAT dx_type2 BEST12.;

	INFORMAT donset BEST32.;
	FORMAT donset BEST12.;

	INFORMAT dodx BEST32.;
	FORMAT dodx BEST12.;

	INFORMAT nonautopsy BEST32.;
	FORMAT nonautopsy BEST12.;

	INPUT
		id_addi
		dx
		dx_type1
		dx_type2
		donset
		dodx
		nonautopsy
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		dx = "dx"
		dx_type1 = "dx_type1"
		dx_type2 = "dx_type2"
		donset = "donset"
		dodx = "dodx"
		nonautopsy = "nonautopsy"
	;
RUN;


        DATA cog_legacydement;
            SET WORK.IMPORT;
        RUN;
        