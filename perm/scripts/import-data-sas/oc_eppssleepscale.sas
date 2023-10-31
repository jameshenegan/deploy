%let path_to_file = '../data-csv/oc_eppssleepscale.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE epss01_
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		0 = '0-would never doze'
		3 = '3-high chance of dozing'
	;

	VALUE epss02_
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		0 = '0-would never doze'
		3 = '3-high chance of dozing'
	;

	VALUE epss03_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss04_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss05_
		3 = '3-high chance of dozing'
		2 = '2-moderate chance of dozing'
		1 = '1-slight chance of dozing'
		0 = '0-would never doze'
	;

	VALUE epss06_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss07_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
	;

	VALUE epss08_
		0 = '0-would never doze'
		1 = '1-slight chance of dozing'
		2 = '2-moderate chance of dozing'
		3 = '3-high chance of dozing'
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

	INFORMAT crf_version_eppslesca $7.;
	FORMAT crf_version_eppslesca $7.;

	INFORMAT epss01 BEST32.;
	FORMAT epss01 BEST12.;

	INFORMAT epss02 BEST32.;
	FORMAT epss02 BEST12.;

	INFORMAT epss03 BEST32.;
	FORMAT epss03 BEST12.;

	INFORMAT epss04 BEST32.;
	FORMAT epss04 BEST12.;

	INFORMAT epss05 BEST32.;
	FORMAT epss05 BEST12.;

	INFORMAT epss06 BEST32.;
	FORMAT epss06 BEST12.;

	INFORMAT epss07 BEST32.;
	FORMAT epss07 BEST12.;

	INFORMAT epss08 BEST32.;
	FORMAT epss08 BEST12.;

	INFORMAT auto_id_eppslesca BEST32.;
	FORMAT auto_id_eppslesca BEST12.;

	INFORMAT testerid_eppslesca BEST32.;
	FORMAT testerid_eppslesca BEST12.;

	INPUT
		id_addi
		visit
		crf_version_eppslesca
		epss01
		epss02
		epss03
		epss04
		epss05
		epss06
		epss07
		epss08
		auto_id_eppslesca
		testerid_eppslesca
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_eppslesca = "CRF Version"
		epss01 = "Sitting and reading"
		epss02 = "Watching tv"
		epss03 = "Sitting, inactive in a public place"
		epss04 = "Passenger in a car for an hr without a break"
		epss05 = "Lying down to rest in the afternoon"
		epss06 = "Sitting and talking to someone"
		epss07 = "Sitting quitely after a lunch without alcohol"
		epss08 = "In a car while stopped for a few minutes in traffic"
		auto_id_eppslesca = "Unique Teleform Number"
		testerid_eppslesca = "Tester ID"
	;
	FORMAT
		epss01 epss01_.
		epss02 epss02_.
		epss03 epss03_.
		epss04 epss04_.
		epss05 epss05_.
		epss06 epss06_.
		epss07 epss07_.
		epss08 epss08_.
	;
RUN;


        DATA oc_eppssleepscale;
            SET WORK.IMPORT;
        RUN;
        