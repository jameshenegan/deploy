%let path_to_file = '../data-csv/oc_ctchecklist.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ctckdne_
		1 = 'Yes'
		888 = 'Refused'
		999 = 'Technical problems'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
	;

	VALUE ctchk1a_
		1 = 'am'
		2 = 'pm'
	;

	VALUE ctchk14a_
		1 = 'am'
		2 = 'pm'
	;

	VALUE ctchk_lr_
		1 = 'Right'
		2 = 'Left'
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

	INFORMAT crf_version_ctche $8.;
	FORMAT crf_version_ctche $8.;

	INFORMAT ct_er_scan $1.;
	FORMAT ct_er_scan $1.;

	INFORMAT ctckdne BEST32.;
	FORMAT ctckdne BEST12.;

	INFORMAT ctchk1 $5.;
	FORMAT ctchk1 $5.;

	INFORMAT ctchk1a BEST32.;
	FORMAT ctchk1a BEST12.;

	INFORMAT ctchk8a BEST32.;
	FORMAT ctchk8a BEST12.;

	INFORMAT ctchk8b BEST32.;
	FORMAT ctchk8b BEST12.;

	INFORMAT ctchk8c BEST32.;
	FORMAT ctchk8c BEST12.;

	INFORMAT ctchk8d BEST32.;
	FORMAT ctchk8d BEST12.;

	INFORMAT ctchk8e BEST32.;
	FORMAT ctchk8e BEST12.;

	INFORMAT ctchk8f BEST32.;
	FORMAT ctchk8f BEST12.;

	INFORMAT ctchk8g BEST32.;
	FORMAT ctchk8g BEST12.;

	INFORMAT ctchk8h BEST32.;
	FORMAT ctchk8h BEST12.;

	INFORMAT ctchk14 $5.;
	FORMAT ctchk14 $5.;

	INFORMAT ctchk14a BEST32.;
	FORMAT ctchk14a BEST12.;

	INFORMAT ctchk_lr BEST32.;
	FORMAT ctchk_lr BEST12.;

	INFORMAT auto_id_ctche BEST32.;
	FORMAT auto_id_ctche BEST12.;

	INFORMAT testerid_ctche BEST32.;
	FORMAT testerid_ctche BEST12.;

	INFORMAT ct_er_scan_1 BEST32.;
	FORMAT ct_er_scan_1 BEST12.;

	INPUT
		id_addi
		visit
		crf_version_ctche
		ct_er_scan
		ctckdne
		ctchk1
		ctchk1a
		ctchk8a
		ctchk8b
		ctchk8c
		ctchk8d
		ctchk8e
		ctchk8f
		ctchk8g
		ctchk8h
		ctchk14
		ctchk14a
		ctchk_lr
		auto_id_ctche
		testerid_ctche
		ct_er_scan_1
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_ctche = "CRF Version"
		ct_er_scan = "ER Scanner"
		ctckdne = "CT scan done"
		ctchk1 = "Initial time"
		ctchk1a = "Initial time am pm"
		ctchk8a = "Measurement A (mm) upper limit of greater tronchanter"
		ctchk8b = "Measurement B"
		ctchk8c = "Measurement C"
		ctchk8d = "Measurement D"
		ctchk8e = "Calculate E"
		ctchk8f = "Calculate F"
		ctchk8g = "Calculate G"
		ctchk8h = "Calculate H"
		ctchk14 = "Completion of questioner final time"
		ctchk14a = "Completion Of Questioner Final Time am pm"
		ctchk_lr = "Which leg scanned"
		auto_id_ctche = "Unique Teleform Number"
		testerid_ctche = "Tester ID"
		ct_er_scan_1 = "ER Scanner : ER Scanner (Checkbox Indicator)"
	;
	FORMAT
		ctckdne ctckdne_.
		ctchk1a ctchk1a_.
		ctchk14a ctchk14a_.
		ctchk_lr ctchk_lr_.
	;
RUN;


        DATA oc_ctchecklist;
            SET WORK.IMPORT;
        RUN;
        