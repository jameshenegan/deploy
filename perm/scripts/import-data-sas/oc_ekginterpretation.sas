%let path_to_file = '../data-csv/oc_ekginterpretation.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ekg01_
		1 = 'Yes'
		0 = 'Other'
		9 = 'Technical problems'
		7 = 'Physical and cognitive'
		5 = 'Physical'
		6 = 'Cognitive'
		8 = 'Refused'
	;

	VALUE ekg02_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
	;

	VALUE ekg03_
		1 = '1'
		3 = '3'
		2 = '2'
	;

	VALUE ekg04_
		3 = '3'
		2 = '2'
		1 = '1'
		4 = '4'
	;

	VALUE ekg05_
		3 = '3'
		2 = '2'
		1 = '1'
		4 = '4'
	;

	VALUE ekg06_
		3 = '3'
		2 = '2'
		5 = '5'
		1 = '1'
		4 = '4'
	;

	VALUE ekg07_
		2 = '2'
		3 = '3'
		5 = '5'
		1 = '1'
		6 = '6'
		4 = '4'
	;

	VALUE ekg08_
		8 = '8'
		1 = '1'
		9 = '9'
		3 = '3'
		7 = '7'
		2 = '2'
		4 = '4'
		5 = '5'
		6 = '6'
	;

	VALUE ekg30_
		1 = '1'
		3 = '3'
		4 = '4'
		2 = '2'
		8 = '8'
		5 = '5'
		6 = '6'
		7 = '7'
	;

	VALUE ekg09_
		5 = '5'
		4 = '4'
		2 = '2'
		1 = '1'
		3 = '3'
		6 = '6'
		7 = '7'
	;

	VALUE ekg26_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE ekg27_
		2 = '2'
		4 = '4'
		1 = '1'
		3 = '3'
		5 = '5'
		7 = '7'
		6 = '6'
		8 = '8'
	;

	VALUE ekg28_
		1 = '1'
		2 = '2'
		3 = '3'
	;

	VALUE ekg29_
		6 = '6'
		7 = '7'
		4 = '4'
		1 = '1'
		2 = '2'
		3 = '3'
		5 = '5'
		8 = '8'
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

	INFORMAT crf_version_ekgint $7.;
	FORMAT crf_version_ekgint $7.;

	INFORMAT ekgcdrid BEST32.;
	FORMAT ekgcdrid BEST12.;

	INFORMAT ekg01 BEST32.;
	FORMAT ekg01 BEST12.;

	INFORMAT ekg02 BEST32.;
	FORMAT ekg02 BEST12.;

	INFORMAT ekg03 BEST32.;
	FORMAT ekg03 BEST12.;

	INFORMAT ekg04 BEST32.;
	FORMAT ekg04 BEST12.;

	INFORMAT ekg05 BEST32.;
	FORMAT ekg05 BEST12.;

	INFORMAT ekg06 BEST32.;
	FORMAT ekg06 BEST12.;

	INFORMAT ekg07 BEST32.;
	FORMAT ekg07 BEST12.;

	INFORMAT ekg08 BEST32.;
	FORMAT ekg08 BEST12.;

	INFORMAT ekg30 BEST32.;
	FORMAT ekg30 BEST12.;

	INFORMAT ekg09 BEST32.;
	FORMAT ekg09 BEST12.;

	INFORMAT ekg26 BEST32.;
	FORMAT ekg26 BEST12.;

	INFORMAT ekg27 BEST32.;
	FORMAT ekg27 BEST12.;

	INFORMAT ekg28 BEST32.;
	FORMAT ekg28 BEST12.;

	INFORMAT ekg29 BEST32.;
	FORMAT ekg29 BEST12.;

	INFORMAT auto_id_ekgint BEST32.;
	FORMAT auto_id_ekgint BEST12.;

	INFORMAT testerid_ekgint BEST32.;
	FORMAT testerid_ekgint BEST12.;

	INPUT
		id_addi
		visit
		crf_version_ekgint
		ekgcdrid
		ekg01
		ekg02
		ekg03
		ekg04
		ekg05
		ekg06
		ekg07
		ekg08
		ekg30
		ekg09
		ekg26
		ekg27
		ekg28
		ekg29
		auto_id_ekgint
		testerid_ekgint
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_ekgint = "CRF Version"
		ekgcdrid = "Coder ID"
		ekg01 = "EKG done"
		ekg02 = "EKG02"
		ekg03 = "EKG03"
		ekg04 = "EKG04"
		ekg05 = "EKG05"
		ekg06 = "EKG06"
		ekg07 = "EKG07"
		ekg08 = "EKG08"
		ekg30 = "EKG30"
		ekg09 = "EKG09"
		ekg26 = "EKG26"
		ekg27 = "EKG27"
		ekg28 = "EKG28"
		ekg29 = "EKG29"
		auto_id_ekgint = "Unique Teleform Number"
		testerid_ekgint = "Tester ID"
	;
	FORMAT
		ekg01 ekg01_.
		ekg02 ekg02_.
		ekg03 ekg03_.
		ekg04 ekg04_.
		ekg05 ekg05_.
		ekg06 ekg06_.
		ekg07 ekg07_.
		ekg08 ekg08_.
		ekg30 ekg30_.
		ekg09 ekg09_.
		ekg26 ekg26_.
		ekg27 ekg27_.
		ekg28 ekg28_.
		ekg29 ekg29_.
	;
RUN;


        DATA oc_ekginterpretation;
            SET WORK.IMPORT;
        RUN;
        