%let path_to_file = '../data-csv/oc_swallowingquestionnaire.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE swaq01_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq02_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq03_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
	;

	VALUE swaq04_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Always'
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

	INFORMAT crf_version_swaque $7.;
	FORMAT crf_version_swaque $7.;

	INFORMAT swaq01 BEST32.;
	FORMAT swaq01 BEST12.;

	INFORMAT swaq02 BEST32.;
	FORMAT swaq02 BEST12.;

	INFORMAT swaq03 BEST32.;
	FORMAT swaq03 BEST12.;

	INFORMAT swaq04 BEST32.;
	FORMAT swaq04 BEST12.;

	INFORMAT auto_id_swaque BEST32.;
	FORMAT auto_id_swaque BEST12.;

	INFORMAT testerid_swaque BEST32.;
	FORMAT testerid_swaque BEST12.;

	INPUT
		id_addi
		visit
		crf_version_swaque
		swaq01
		swaq02
		swaq03
		swaq04
		auto_id_swaque
		testerid_swaque
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_swaque = "CRF Version"
		swaq01 = "Cough when drink liquids"
		swaq02 = "Cough when eat solild food"
		swaq03 = "Need to drink fluids to wash food down"
		swaq04 = "I choke when I take my medication"
		auto_id_swaque = "Unique Teleform Number"
		testerid_swaque = "Tester ID"
	;
	FORMAT
		swaq01 swaq01_.
		swaq02 swaq02_.
		swaq03 swaq03_.
		swaq04 swaq04_.
	;
RUN;


        DATA oc_swallowingquestionnaire;
            SET WORK.IMPORT;
        RUN;
        