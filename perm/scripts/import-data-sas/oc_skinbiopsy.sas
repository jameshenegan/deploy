%let path_to_file = '../data-csv/oc_skinbiopsy.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sb01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sb02_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sb07_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sb11_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sb12_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sb13_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sbneedle_
		1 = '6mm'
	;

	VALUE sbsamples_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE provideinformedconsent_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nohxbleedingdisorder_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nomedsincrbleeding_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nonsaids_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lessth81mgaspirin_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE noallergylocanesthetic_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE noinfectionskincond_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE notpregnant_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE eligibility_skibio_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ampm1_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ampm2_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE ampm3_
		1 = 'Am'
		2 = 'Pm'
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

	INFORMAT crf_version_skibio $8.;
	FORMAT crf_version_skibio $8.;

	INFORMAT sb01 BEST32.;
	FORMAT sb01 BEST12.;

	INFORMAT sb02 BEST32.;
	FORMAT sb02 BEST12.;

	INFORMAT sb03 BEST32.;
	FORMAT sb03 BEST12.;

	INFORMAT sb04 BEST32.;
	FORMAT sb04 BEST12.;

	INFORMAT sb05 BEST32.;
	FORMAT sb05 BEST12.;

	INFORMAT sb06s BEST32.;
	FORMAT sb06s BEST12.;

	INFORMAT sb06d BEST32.;
	FORMAT sb06d BEST12.;

	INFORMAT sb07 BEST32.;
	FORMAT sb07 BEST12.;

	INFORMAT sb09 BEST32.;
	FORMAT sb09 BEST12.;

	INFORMAT sb11 BEST32.;
	FORMAT sb11 BEST12.;

	INFORMAT sb12 BEST32.;
	FORMAT sb12 BEST12.;

	INFORMAT sb13 BEST32.;
	FORMAT sb13 BEST12.;

	INFORMAT sbneedle BEST32.;
	FORMAT sbneedle BEST12.;

	INFORMAT sbpostpulse BEST32.;
	FORMAT sbpostpulse BEST12.;

	INFORMAT sbpostresp BEST32.;
	FORMAT sbpostresp BEST12.;

	INFORMAT sbpostsystolic BEST32.;
	FORMAT sbpostsystolic BEST12.;

	INFORMAT sbpostdiastolic BEST32.;
	FORMAT sbpostdiastolic BEST12.;

	INFORMAT sbsamples BEST32.;
	FORMAT sbsamples BEST12.;

	INFORMAT testerid_skibio BEST32.;
	FORMAT testerid_skibio BEST12.;

	INFORMAT provideinformedconsent_skibio BEST32.;
	FORMAT provideinformedconsent_skibio BEST12.;

	INFORMAT nohxbleedingdisorder_skibio BEST32.;
	FORMAT nohxbleedingdisorder_skibio BEST12.;

	INFORMAT nomedsincrbleeding_skibio BEST32.;
	FORMAT nomedsincrbleeding_skibio BEST12.;

	INFORMAT nonsaids_skibio BEST32.;
	FORMAT nonsaids_skibio BEST12.;

	INFORMAT lessth81mgaspirin_skibio BEST32.;
	FORMAT lessth81mgaspirin_skibio BEST12.;

	INFORMAT noallergylocanesthetic BEST32.;
	FORMAT noallergylocanesthetic BEST12.;

	INFORMAT noinfectionskincond_skibio BEST32.;
	FORMAT noinfectionskincond_skibio BEST12.;

	INFORMAT notpregnant_skibio BEST32.;
	FORMAT notpregnant_skibio BEST12.;

	INFORMAT eligibility_skibio BEST32.;
	FORMAT eligibility_skibio BEST12.;

	INFORMAT anesthesiastart $5.;
	FORMAT anesthesiastart $5.;

	INFORMAT ampm1 BEST32.;
	FORMAT ampm1 BEST12.;

	INFORMAT biopsystart $5.;
	FORMAT biopsystart $5.;

	INFORMAT ampm2 BEST32.;
	FORMAT ampm2 BEST12.;

	INFORMAT biopsycomplete $8.;
	FORMAT biopsycomplete $8.;

	INFORMAT ampm3 BEST32.;
	FORMAT ampm3 BEST12.;

	INFORMAT sbtid1 BEST32.;
	FORMAT sbtid1 BEST12.;

	INFORMAT sbfatobtained BEST32.;
	FORMAT sbfatobtained BEST12.;

	INFORMAT sbtestid BEST32.;
	FORMAT sbtestid BEST12.;

	INFORMAT sb08 $5.;
	FORMAT sb08 $5.;

	INFORMAT sb10s $5.;
	FORMAT sb10s $5.;

	INFORMAT sb10c $5.;
	FORMAT sb10c $5.;

	INFORMAT sbtesterid BEST32.;
	FORMAT sbtesterid BEST12.;

	INFORMAT auto_id_skibio BEST32.;
	FORMAT auto_id_skibio BEST12.;

	INFORMAT testerid_1_skibio BEST32.;
	FORMAT testerid_1_skibio BEST12.;

	INPUT
		id_addi
		visit
		crf_version_skibio
		sb01
		sb02
		sb03
		sb04
		sb05
		sb06s
		sb06d
		sb07
		sb09
		sb11
		sb12
		sb13
		sbneedle
		sbpostpulse
		sbpostresp
		sbpostsystolic
		sbpostdiastolic
		sbsamples
		testerid_skibio
		provideinformedconsent_skibio
		nohxbleedingdisorder_skibio
		nomedsincrbleeding_skibio
		nonsaids_skibio
		lessth81mgaspirin_skibio
		noallergylocanesthetic
		noinfectionskincond_skibio
		notpregnant_skibio
		eligibility_skibio
		anesthesiastart
		ampm1
		biopsystart
		ampm2
		biopsycomplete
		ampm3
		sbtid1
		sbfatobtained
		sbtestid
		sb08
		sb10s
		sb10c
		sbtesterid
		auto_id_skibio
		testerid_1_skibio
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_skibio = "CRF Version"
		sb01 = "Skin Biopsy consent reviewed"
		sb02 = "Eligibility criteria reviewed"
		sb03 = "Pre procedure body temperature"
		sb04 = "Pre procedure pulse"
		sb05 = "Pre procedure respirations"
		sb06s = "Pre procedure BP systolic"
		sb06d = "Pre procedure BP diastolic"
		sb07 = "Brief History and Physical performed"
		sb09 = "Total amount of Anesthesia given"
		sb11 = "Biopsy performed"
		sb12 = "Dressing applied"
		sb13 = "Post procedure instructions reviewed"
		sbneedle = "Skin Biopsy needle size"
		sbpostpulse = "Post procedure pulse"
		sbpostresp = "Post procedure respirations"
		sbpostsystolic = "Post procedure BP systolic"
		sbpostdiastolic = "Post procedure BP diastolic"
		sbsamples = "All samples collected"
		testerid_skibio = "Tester ID"
		provideinformedconsent_skibio = "Able to provide informed consent"
		nohxbleedingdisorder_skibio = "Does not have history of bleeding disorder"
		nomedsincrbleeding_skibio = "Does not take medications that will increase bleeding"
		nonsaids_skibio = "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
		lessth81mgaspirin_skibio = "Does not take more than 81 mg Aspirin a day"
		noallergylocanesthetic = "Is not allergic to Lidocaine or other local anesthetic"
		noinfectionskincond_skibio = "Has no active infection or chronic skin condition around biopsy site"
		notpregnant_skibio = "Is not pregnant"
		eligibility_skibio = "Eligibility"
		anesthesiastart = "Anesthesia start time"
		ampm1 = "Anesthesia start time AmPm"
		biopsystart = "Biopsy started"
		ampm2 = "Biopsy started AmPm"
		biopsycomplete = "Biopsy completed"
		ampm3 = "Biopsy completed AmPm"
		sbtid1 = "Biopsy tester ID"
		sbfatobtained = "total amount of fat obtained"
		sbtestid = "Biopsy tester ID"
		sb08 = "Anesthesia start time"
		sb10s = "Biopsy started"
		sb10c = "Biopsy completed"
		sbtesterid = "Biopsy tester ID"
		auto_id_skibio = "Unique Teleform Number"
		testerid_1_skibio = "Tester ID 1"
	;
	FORMAT
		sb01 sb01_.
		sb02 sb02_.
		sb07 sb07_.
		sb11 sb11_.
		sb12 sb12_.
		sb13 sb13_.
		sbneedle sbneedle_.
		sbsamples sbsamples_.
		provideinformedconsent_skibio provideinformedconsent_skibio_.
		nohxbleedingdisorder_skibio nohxbleedingdisorder_skibio_.
		nomedsincrbleeding_skibio nomedsincrbleeding_skibio_.
		nonsaids_skibio nonsaids_skibio_.
		lessth81mgaspirin_skibio lessth81mgaspirin_skibio_.
		noallergylocanesthetic noallergylocanesthetic_.
		noinfectionskincond_skibio noinfectionskincond_skibio_.
		notpregnant_skibio notpregnant_skibio_.
		eligibility_skibio eligibility_skibio_.
		ampm1 ampm1_.
		ampm2 ampm2_.
		ampm3 ampm3_.
	;
RUN;


        DATA oc_skinbiopsy;
            SET WORK.IMPORT;
        RUN;
        