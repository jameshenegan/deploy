%let path_to_file = '../data-csv/crbsh_neurey.csv';
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

	INFORMAT reycto BEST32.;
	FORMAT reycto BEST12.;

	INFORMAT reycti BEST32.;
	FORMAT reycti BEST12.;

	INFORMAT reyito BEST32.;
	FORMAT reyito BEST12.;

	INFORMAT reyiti BEST32.;
	FORMAT reyiti BEST12.;

	INFORMAT reydto BEST32.;
	FORMAT reydto BEST12.;

	INFORMAT reydti BEST32.;
	FORMAT reydti BEST12.;

	INPUT
		id_addi
		visit
		reycto
		reycti
		reyito
		reyiti
		reydto
		reydti
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		reycto = "Rey Total copy"
		reycti = "Rey Time copy"
		reyito = "Rey Total immediate"
		reyiti = "Rey Time immediate"
		reydto = "Rey Total delayed"
		reydti = "Rey Time delayed"
	;
RUN;


        DATA crbsh_neurey;
            SET WORK.IMPORT;
        RUN;
        