%let path_to_file = '../data-csv/oc_skinbiopsyeligibility.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE provideinformedconsent_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nohxbleedingdisorder_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nomedsincrbleeding_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nonsaids_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE lessth81mgaspirin_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE noallergylocalanesthetic_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE noinfectionskincond_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE notpregnant_skibioeli_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE eligibility_skibioeli_
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

	INFORMAT crf_version_skibioeli $8.;
	FORMAT crf_version_skibioeli $8.;

	INFORMAT testerid_skibioeli BEST32.;
	FORMAT testerid_skibioeli BEST12.;

	INFORMAT provideinformedconsent_skibioeli BEST32.;
	FORMAT provideinformedconsent_skibioeli BEST12.;

	INFORMAT nohxbleedingdisorder_skibioeli BEST32.;
	FORMAT nohxbleedingdisorder_skibioeli BEST12.;

	INFORMAT nomedsincrbleeding_skibioeli BEST32.;
	FORMAT nomedsincrbleeding_skibioeli BEST12.;

	INFORMAT nonsaids_skibioeli BEST32.;
	FORMAT nonsaids_skibioeli BEST12.;

	INFORMAT lessth81mgaspirin_skibioeli BEST32.;
	FORMAT lessth81mgaspirin_skibioeli BEST12.;

	INFORMAT noallergylocalanesthetic BEST32.;
	FORMAT noallergylocalanesthetic BEST12.;

	INFORMAT noinfectionskincond_skibioeli BEST32.;
	FORMAT noinfectionskincond_skibioeli BEST12.;

	INFORMAT notpregnant_skibioeli BEST32.;
	FORMAT notpregnant_skibioeli BEST12.;

	INFORMAT eligibility_skibioeli BEST32.;
	FORMAT eligibility_skibioeli BEST12.;

	INPUT
		id_addi
		visit
		crf_version_skibioeli
		testerid_skibioeli
		provideinformedconsent_skibioeli
		nohxbleedingdisorder_skibioeli
		nomedsincrbleeding_skibioeli
		nonsaids_skibioeli
		lessth81mgaspirin_skibioeli
		noallergylocalanesthetic
		noinfectionskincond_skibioeli
		notpregnant_skibioeli
		eligibility_skibioeli
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_skibioeli = "CRF Version"
		testerid_skibioeli = "Tester ID"
		provideinformedconsent_skibioeli = "Able to provide informed consent"
		nohxbleedingdisorder_skibioeli = "Does not have history of bleeding disorder"
		nomedsincrbleeding_skibioeli = "Does not take medications that will increase bleeding"
		nonsaids_skibioeli = "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
		lessth81mgaspirin_skibioeli = "Does not take more than 81 mg Aspirin a day"
		noallergylocalanesthetic = "Is not allergic to Lidocaine or other local anesthetic"
		noinfectionskincond_skibioeli = "Has no active infection or chronic skin condition around biopsy site"
		notpregnant_skibioeli = "Is not pregnant"
		eligibility_skibioeli = "Eligibility"
	;
	FORMAT
		provideinformedconsent_skibioeli provideinformedconsent_skibioeli_.
		nohxbleedingdisorder_skibioeli nohxbleedingdisorder_skibioeli_.
		nomedsincrbleeding_skibioeli nomedsincrbleeding_skibioeli_.
		nonsaids_skibioeli nonsaids_skibioeli_.
		lessth81mgaspirin_skibioeli lessth81mgaspirin_skibioeli_.
		noallergylocalanesthetic noallergylocalanesthetic_.
		noinfectionskincond_skibioeli noinfectionskincond_skibioeli_.
		notpregnant_skibioeli notpregnant_skibioeli_.
		eligibility_skibioeli eligibility_skibioeli_.
	;
RUN;


        DATA oc_skinbiopsyeligibility;
            SET WORK.IMPORT;
        RUN;
        