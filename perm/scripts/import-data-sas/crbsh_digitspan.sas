%let path_to_file = '../data-csv/crbsh_digitspan.csv';
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

	INFORMAT digfor BEST32.;
	FORMAT digfor BEST12.;

	INFORMAT digformax BEST32.;
	FORMAT digformax BEST12.;

	INFORMAT digbac BEST32.;
	FORMAT digbac BEST12.;

	INFORMAT digbacmax BEST32.;
	FORMAT digbacmax BEST12.;

	INPUT
		id_addi
		digfor
		digformax
		digbac
		digbacmax
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		digfor = "WAIS-R Digits Forward Traditional score"
		digformax = "WAIS-R Digits Forward Maximum score"
		digbac = "WAIS-R Digits Backward Traditional score"
		digbacmax = "WAIS-R Digits Backward Maximum score"
	;
RUN;


        DATA crbsh_digitspan;
            SET WORK.IMPORT;
        RUN;
        