%let path_to_file = '../data-csv/crbsh_cardrot.csv';
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

	INFORMAT crdrot BEST32.;
	FORMAT crdrot BEST12.;

	INPUT
		id_addi
		crdrot
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		crdrot = "Card Rotations: Total score (correct-incorrect)"
	;
RUN;


        DATA crbsh_cardrot;
            SET WORK.IMPORT;
        RUN;
        