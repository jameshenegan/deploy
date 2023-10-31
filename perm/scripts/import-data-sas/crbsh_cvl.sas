%let path_to_file = '../data-csv/crbsh_cvl.csv';
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

	INFORMAT cvltca BEST32.;
	FORMAT cvltca BEST12.;

	INFORMAT cvlfrs BEST32.;
	FORMAT cvlfrs BEST12.;

	INFORMAT cvlfrl BEST32.;
	FORMAT cvlfrl BEST12.;

	INPUT
		id_addi
		visit
		cvltca
		cvlfrs
		cvlfrl
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLS Visit ID"
		cvltca = "CVL Total correct A"
		cvlfrs = "CVL #Corr A Short-Delay Free Recall"
		cvlfrl = "CVL #Corr A Long-Delay Free Recall"
	;
RUN;


        DATA crbsh_cvl;
            SET WORK.IMPORT;
        RUN;
        