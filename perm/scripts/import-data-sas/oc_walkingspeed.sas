%let path_to_file = '../data-csv/oc_walkingspeed.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE wsup10_
		1 = 'Completes without walking aid'
		0 = 'Not attempted unable to walk unaided'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsup100_
		1 = 'Completes without walking aid'
		0 = 'Not attempted unable to walk unaided'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsfp10_
		1 = 'Completes without walking aid'
		0 = 'Not attempted unable to walk unaided'
		7 = 'Participant refused (includes not time/no tester'
	;

	VALUE wsfp100_
		1 = 'Completes without walking aid'
		0 = 'Not attempted unable to walk unaided'
		7 = 'Participant refused (includes not time/no tester'
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

	INFORMAT crf_version_walspe $7.;
	FORMAT crf_version_walspe $7.;

	INFORMAT wsup10 BEST32.;
	FORMAT wsup10 BEST12.;

	INFORMAT wsup10t BEST32.;
	FORMAT wsup10t BEST12.;

	INFORMAT wsup100 BEST32.;
	FORMAT wsup100 BEST12.;

	INFORMAT wsup100t BEST32.;
	FORMAT wsup100t BEST12.;

	INFORMAT wsfp10 BEST32.;
	FORMAT wsfp10 BEST12.;

	INFORMAT wsfp10t BEST32.;
	FORMAT wsfp10t BEST12.;

	INFORMAT wsfp100 BEST32.;
	FORMAT wsfp100 BEST12.;

	INFORMAT wsfp100t BEST32.;
	FORMAT wsfp100t BEST12.;

	INFORMAT auto_id_walspe BEST32.;
	FORMAT auto_id_walspe BEST12.;

	INFORMAT testerid_walspe BEST32.;
	FORMAT testerid_walspe BEST12.;

	INPUT
		id_addi
		visit
		crf_version_walspe
		wsup10
		wsup10t
		wsup100
		wsup100t
		wsfp10
		wsfp10t
		wsfp100
		wsfp100t
		auto_id_walspe
		testerid_walspe
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_walspe = "CRF Version"
		wsup10 = "Usual Pace 10ft"
		wsup10t = "Usual Pace 10ft time"
		wsup100 = "Usual Pace 100ft"
		wsup100t = "Usual Pace 100ft time"
		wsfp10 = "Fast Pace 10ft"
		wsfp10t = "Fast Pace 10ft time"
		wsfp100 = "Fast Pace 100ft"
		wsfp100t = "Fast Pace 100ft time"
		auto_id_walspe = "Unique Teleform Number"
		testerid_walspe = "Tester ID"
	;
	FORMAT
		wsup10 wsup10_.
		wsup100 wsup100_.
		wsfp10 wsfp10_.
		wsfp100 wsfp100_.
	;
RUN;


        DATA oc_walkingspeed;
            SET WORK.IMPORT;
        RUN;
        