%let path_to_file = '../data-csv/oc_tmstressblood.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE tmsb_done_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tmsb_rnd_
		2 = 'Unable'
		1 = 'Refused'
		3 = 'Not Scheduled'
		4 = 'Other'
	;

	VALUE tmsb_samples_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE tmsb_rnc_
		1 = 'IV access'
		2 = 'Refused'
		3 = 'Other'
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

	INFORMAT crf_version_tmstrblo $8.;
	FORMAT crf_version_tmstrblo $8.;

	INFORMAT tmsb_done BEST32.;
	FORMAT tmsb_done BEST12.;

	INFORMAT tmsb_rnd BEST32.;
	FORMAT tmsb_rnd BEST12.;

	INFORMAT tmsb_samples BEST32.;
	FORMAT tmsb_samples BEST12.;

	INFORMAT tmsb_rnc BEST32.;
	FORMAT tmsb_rnc BEST12.;

	INPUT
		id_addi
		visit
		crf_version_tmstrblo
		tmsb_done
		tmsb_rnd
		tmsb_samples
		tmsb_rnc
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_tmstrblo = "CRF Version"
		tmsb_done = "Treadmill stress blood completed"
		tmsb_rnd = "TMSB reason not done"
		tmsb_samples = "Were all blood draws completed"
		tmsb_rnc = "Reason not completed"
	;
	FORMAT
		tmsb_done tmsb_done_.
		tmsb_rnd tmsb_rnd_.
		tmsb_samples tmsb_samples_.
		tmsb_rnc tmsb_rnc_.
	;
RUN;


        DATA oc_tmstressblood;
            SET WORK.IMPORT;
        RUN;
        