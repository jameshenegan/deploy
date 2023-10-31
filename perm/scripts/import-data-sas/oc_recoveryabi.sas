%let path_to_file = '../data-csv/oc_recoveryabi.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE rabi01_
		1 = 'Yes both sides'
		0 = 'No'
		2 = 'Right only'
		3 = 'Left only'
	;

	VALUE rabi01a_
		0 = 'Other'
		2 = 'No tester'
		555 = 'Physical'
		1 = 'Contraindication'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
		999 = 'Technical problems'
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

	INFORMAT crf_version_recabi $7.;
	FORMAT crf_version_recabi $7.;

	INFORMAT testerid_recabi BEST32.;
	FORMAT testerid_recabi BEST12.;

	INFORMAT rabi01 BEST32.;
	FORMAT rabi01 BEST12.;

	INFORMAT rabi01a BEST32.;
	FORMAT rabi01a BEST12.;

	INPUT
		id_addi
		visit
		crf_version_recabi
		testerid_recabi
		rabi01
		rabi01a
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_recabi = "CRF Version"
		testerid_recabi = "Tester ID"
		rabi01 = "Was Recovery ABI performed"
		rabi01a = "Recovery ABI reason not done"
	;
	FORMAT
		rabi01 rabi01_.
		rabi01a rabi01a_.
	;
RUN;


        DATA oc_recoveryabi;
            SET WORK.IMPORT;
        RUN;
        