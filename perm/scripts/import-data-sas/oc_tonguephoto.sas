%let path_to_file = '../data-csv/oc_tonguephoto.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE tph01_
		1 = 'Yes'
		9 = 'Not scheduled'
		6 = 'Technical'
		0 = 'Other'
		7 = 'No tester'
		4 = 'Refused'
	;

	VALUE tph02a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tph02b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tph02c_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tph02d_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tph03a_
		6 = 'Technical'
		0 = 'Other'
		4 = 'Refused'
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

	INFORMAT crf_version_tonpho $8.;
	FORMAT crf_version_tonpho $8.;

	INFORMAT tph01 BEST32.;
	FORMAT tph01 BEST12.;

	INFORMAT tph02a BEST32.;
	FORMAT tph02a BEST12.;

	INFORMAT tph02b BEST32.;
	FORMAT tph02b BEST12.;

	INFORMAT tph02c BEST32.;
	FORMAT tph02c BEST12.;

	INFORMAT tph02d BEST32.;
	FORMAT tph02d BEST12.;

	INFORMAT tph03a BEST32.;
	FORMAT tph03a BEST12.;

	INFORMAT auto_id_tonpho BEST32.;
	FORMAT auto_id_tonpho BEST12.;

	INFORMAT testerid_tonpho BEST32.;
	FORMAT testerid_tonpho BEST12.;

	INPUT
		id_addi
		visit
		crf_version_tonpho
		tph01
		tph02a
		tph02b
		tph02c
		tph02d
		tph03a
		auto_id_tonpho
		testerid_tonpho
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_tonpho = "CRF Version"
		tph01 = "Were Tongue photos taken"
		tph02a = "Photo taken without food coloring Left"
		tph02b = "Photo taken without food coloring Right"
		tph02c = "Photo taken with food coloring Left"
		tph02d = "Photo taken with food coloring Right"
		tph03a = "Reason all photos not collected"
		auto_id_tonpho = "Unique Teleform Number"
		testerid_tonpho = "Tester ID"
	;
	FORMAT
		tph01 tph01_.
		tph02a tph02a_.
		tph02b tph02b_.
		tph02c tph02c_.
		tph02d tph02d_.
		tph03a tph03a_.
	;
RUN;


        DATA oc_tonguephoto;
            SET WORK.IMPORT;
        RUN;
        