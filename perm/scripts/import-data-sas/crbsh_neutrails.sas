%let path_to_file = '../data-csv/crbsh_neutrails.csv';
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

	INFORMAT trats BEST32.;
	FORMAT trats BEST12.;

	INFORMAT trate BEST32.;
	FORMAT trate BEST12.;

	INFORMAT trbts BEST32.;
	FORMAT trbts BEST12.;

	INFORMAT trbte BEST32.;
	FORMAT trbte BEST12.;

	INPUT
		id_addi
		visit
		trats
		trate
		trbts
		trbte
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		trats = "Trails - A test (seconds)"
		trate = "Trails - A test (errors)"
		trbts = "Trails - B test (seconds)"
		trbte = "Trails - B test (errors)"
	;
RUN;


        DATA crbsh_neutrails;
            SET WORK.IMPORT;
        RUN;
        