%let path_to_file = '../data-csv/oc_intestinalpermeability.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE timeampm_
		2 = 'Pm'
		1 = 'Am'
	;

	VALUE done_intper_
		1 = 'Done'
		0 = 'Not Done'
	;

	VALUE reasonnd_
		2 = 'Not Eligible'
		1 = 'Refused'
		3 = 'Technical'
	;

RUN;

    
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

	INFORMAT crf_version_intper $7.;
	FORMAT crf_version_intper $7.;

	INFORMAT testerid_intper BEST32.;
	FORMAT testerid_intper BEST12.;

	INFORMAT amount BEST32.;
	FORMAT amount BEST12.;

	INFORMAT timedispensed $5.;
	FORMAT timedispensed $5.;

	INFORMAT timeampm BEST32.;
	FORMAT timeampm BEST12.;

	INFORMAT done_intper BEST32.;
	FORMAT done_intper BEST12.;

	INFORMAT reasonnd BEST32.;
	FORMAT reasonnd BEST12.;

	INFORMAT ua_volume BEST32.;
	FORMAT ua_volume BEST12.;

	INPUT
		id_addi
		visit
		crf_version_intper
		testerid_intper
		amount
		timedispensed
		timeampm
		done_intper
		reasonnd
		ua_volume
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_intper = "CRF Version"
		testerid_intper = "Tester ID"
		amount = "Amount of PEG given"
		timedispensed = "Time dispensed"
		timeampm = "Time ampm"
		done_intper = "Done not done"
		reasonnd = "Reason not done"
		ua_volume = "UA 24 hr Volume"
	;
	FORMAT
		timeampm timeampm_.
		done_intper done_intper_.
		reasonnd reasonnd_.
	;
RUN;


        DATA oc_intestinalpermeability;
            SET WORK.IMPORT;
        RUN;
        