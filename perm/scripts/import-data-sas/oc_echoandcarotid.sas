%let path_to_file = '../data-csv/oc_echoandcarotid.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE echo01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE echo01a_
		999 = 'Technical problems'
		0 = 'Other'
		888 = 'Refused'
		555 = 'Physical problems'
		777 = 'Physical and cognitive'
		666 = 'Cognitive'
	;

	VALUE ct01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ct01a_
		999 = 'Technical problems'
		1 = 'Other'
		888 = 'Refused'
		555 = 'Physical problems'
		777 = 'Physical and cognitive'
		666 = 'Cognitive'
	;

	VALUE bp001_
		1 = 'Yes'
		0 = 'No'
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

	INFORMAT crf_version_echandcar $8.;
	FORMAT crf_version_echandcar $8.;

	INFORMAT echo01 BEST32.;
	FORMAT echo01 BEST12.;

	INFORMAT echo01a BEST32.;
	FORMAT echo01a BEST12.;

	INFORMAT ct01 BEST32.;
	FORMAT ct01 BEST12.;

	INFORMAT ct01a BEST32.;
	FORMAT ct01a BEST12.;

	INFORMAT bp001 BEST32.;
	FORMAT bp001 BEST12.;

	INFORMAT bpsbp BEST32.;
	FORMAT bpsbp BEST12.;

	INFORMAT bpdbp BEST32.;
	FORMAT bpdbp BEST12.;

	INFORMAT bpmap BEST32.;
	FORMAT bpmap BEST12.;

	INFORMAT auto_id_echandcar BEST32.;
	FORMAT auto_id_echandcar BEST12.;

	INFORMAT testerid_echandcar BEST32.;
	FORMAT testerid_echandcar BEST12.;

	INPUT
		id_addi
		visit
		crf_version_echandcar
		echo01
		echo01a
		ct01
		ct01a
		bp001
		bpsbp
		bpdbp
		bpmap
		auto_id_echandcar
		testerid_echandcar
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_echandcar = "CRF Version"
		echo01 = "Echo done"
		echo01a = "Echo reason not done"
		ct01 = "Carotid done"
		ct01a = "Carotid reason not done"
		bp001 = "Blood pressure measured"
		bpsbp = "Systolic"
		bpdbp = "Diastolic"
		bpmap = "MAP"
		auto_id_echandcar = "Unique Teleform Number"
		testerid_echandcar = "Tester ID"
	;
	FORMAT
		echo01 echo01_.
		echo01a echo01a_.
		ct01 ct01_.
		ct01a ct01a_.
		bp001 bp001_.
	;
RUN;


        DATA oc_echoandcarotid;
            SET WORK.IMPORT;
        RUN;
        