%let path_to_file = '../data-csv/oc_nervesensitivity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE nrvs02_
		0 = 'Right'
		1 = 'Left'
	;

	VALUE nrvs02a_
		9 = 'Other please specify'
		3 = 'Trauma or surgery (including knee replacement)'
		1 = 'Amputation'
		2 = 'Ulcer'
	;

	VALUE nrvsdon_
		1 = 'Yes'
		9 = 'Technical problems'
		5 = 'Physical problems'
		6 = 'Cognitive problems'
		7 = 'Refused'
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

	INFORMAT crf_version_nersen $7.;
	FORMAT crf_version_nersen $7.;

	INFORMAT nrvs01a BEST32.;
	FORMAT nrvs01a BEST12.;

	INFORMAT nrvs01b BEST32.;
	FORMAT nrvs01b BEST12.;

	INFORMAT nrvs01c BEST32.;
	FORMAT nrvs01c BEST12.;

	INFORMAT nrvs02 BEST32.;
	FORMAT nrvs02 BEST12.;

	INFORMAT nrvs02a BEST32.;
	FORMAT nrvs02a BEST12.;

	INFORMAT nrvsdon BEST32.;
	FORMAT nrvsdon BEST12.;

	INFORMAT testerid_nersen BEST32.;
	FORMAT testerid_nersen BEST12.;

	INPUT
		id_addi
		visit
		crf_version_nersen
		nrvs01a
		nrvs01b
		nrvs01c
		nrvs02
		nrvs02a
		nrvsdon
		testerid_nersen
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_nersen = "CRF Version"
		nrvs01a = "Foot temperature at start of study"
		nrvs01b = "Foot temperature following heating:"
		nrvs01c = "Foot temperature at end of tests:"
		nrvs02 = "Which leg was tested"
		nrvs02a = "Why wasn't right let tested"
		nrvsdon = "Was test done"
		testerid_nersen = "Tester ID"
	;
	FORMAT
		nrvs02 nrvs02_.
		nrvs02a nrvs02a_.
		nrvsdon nrvsdon_.
	;
RUN;


        DATA oc_nervesensitivity;
            SET WORK.IMPORT;
        RUN;
        