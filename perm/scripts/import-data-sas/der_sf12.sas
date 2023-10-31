%let path_to_file = '../data-csv/der_sf12.csv';
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

	INFORMAT sf12_pcscore BEST32.;
	FORMAT sf12_pcscore BEST12.;

	INFORMAT sf12_mcscore BEST32.;
	FORMAT sf12_mcscore BEST12.;

	INFORMAT nmisssf BEST32.;
	FORMAT nmisssf BEST12.;

	INPUT
		id_addi
		visit
		sf12_pcscore
		sf12_mcscore
		nmisssf
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		sf12_pcscore = "Physical health composite score"
		sf12_mcscore = "Mental health composite score"
		nmisssf = "Number of missing components in SF12"
	;
RUN;


        DATA der_sf12;
            SET WORK.IMPORT;
        RUN;
        