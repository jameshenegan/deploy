%let path_to_file = '../data-csv/oc_musclebiopsy.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE mub0a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mub0b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mub2a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mubi_
		1 = 'Steri Strips'
		2 = 'Self Absorbing Sutures'
	;

	VALUE mub2b_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mub2e_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mub3e_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mub4a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub5a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub6a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub7a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub8a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub9a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub10a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub11a_
		0 = 'Quantity not sufficient'
		1 = 'Sample Collected'
	;

	VALUE mub13a_
		1 = 'Sample Collected'
		0 = 'Quantity not sufficient'
	;

	VALUE mub14a_
		0 = 'Quantity not sufficient'
		1 = 'Sample Collected'
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

	INFORMAT crf_version_musbio $8.;
	FORMAT crf_version_musbio $8.;

	INFORMAT obsdate_datecompleted_musbio $1.;
	FORMAT obsdate_datecompleted_musbio $1.;

	INFORMAT mub0a BEST32.;
	FORMAT mub0a BEST12.;

	INFORMAT mub0b BEST32.;
	FORMAT mub0b BEST12.;

	INFORMAT mub1a BEST32.;
	FORMAT mub1a BEST12.;

	INFORMAT mub1c BEST32.;
	FORMAT mub1c BEST12.;

	INFORMAT mub1b BEST32.;
	FORMAT mub1b BEST12.;

	INFORMAT mub1d BEST32.;
	FORMAT mub1d BEST12.;

	INFORMAT mub1e BEST32.;
	FORMAT mub1e BEST12.;

	INFORMAT mub2a BEST32.;
	FORMAT mub2a BEST12.;

	INFORMAT mubt1 BEST32.;
	FORMAT mubt1 BEST12.;

	INFORMAT mubt2 BEST32.;
	FORMAT mubt2 BEST12.;

	INFORMAT mubt3 BEST32.;
	FORMAT mubt3 BEST12.;

	INFORMAT mubt4 BEST32.;
	FORMAT mubt4 BEST12.;

	INFORMAT muba BEST32.;
	FORMAT muba BEST12.;

	INFORMAT mubi BEST32.;
	FORMAT mubi BEST12.;

	INFORMAT mub2d BEST32.;
	FORMAT mub2d BEST12.;

	INFORMAT mub2b BEST32.;
	FORMAT mub2b BEST12.;

	INFORMAT mub2e BEST32.;
	FORMAT mub2e BEST12.;

	INFORMAT mub2f $1.;
	FORMAT mub2f $1.;

	INFORMAT mub3b BEST32.;
	FORMAT mub3b BEST12.;

	INFORMAT mub3a BEST32.;
	FORMAT mub3a BEST12.;

	INFORMAT mub3c BEST32.;
	FORMAT mub3c BEST12.;

	INFORMAT mub3d BEST32.;
	FORMAT mub3d BEST12.;

	INFORMAT mub3e BEST32.;
	FORMAT mub3e BEST12.;

	INFORMAT mub4p1 BEST32.;
	FORMAT mub4p1 BEST12.;

	INFORMAT mub4p2 BEST32.;
	FORMAT mub4p2 BEST12.;

	INFORMAT mub4p3 BEST32.;
	FORMAT mub4p3 BEST12.;

	INFORMAT mub4pt BEST32.;
	FORMAT mub4pt BEST12.;

	INFORMAT mub4a BEST32.;
	FORMAT mub4a BEST12.;

	INFORMAT mub4b BEST32.;
	FORMAT mub4b BEST12.;

	INFORMAT mub5a BEST32.;
	FORMAT mub5a BEST12.;

	INFORMAT mub5b BEST32.;
	FORMAT mub5b BEST12.;

	INFORMAT mub6a BEST32.;
	FORMAT mub6a BEST12.;

	INFORMAT mub6b BEST32.;
	FORMAT mub6b BEST12.;

	INFORMAT mub7a BEST32.;
	FORMAT mub7a BEST12.;

	INFORMAT mub7b BEST32.;
	FORMAT mub7b BEST12.;

	INFORMAT mub8a BEST32.;
	FORMAT mub8a BEST12.;

	INFORMAT mub8b BEST32.;
	FORMAT mub8b BEST12.;

	INFORMAT mub9a BEST32.;
	FORMAT mub9a BEST12.;

	INFORMAT mub9b BEST32.;
	FORMAT mub9b BEST12.;

	INFORMAT mub10a BEST32.;
	FORMAT mub10a BEST12.;

	INFORMAT mub10b BEST32.;
	FORMAT mub10b BEST12.;

	INFORMAT mub11a BEST32.;
	FORMAT mub11a BEST12.;

	INFORMAT mub11b BEST32.;
	FORMAT mub11b BEST12.;

	INFORMAT mub12b BEST32.;
	FORMAT mub12b BEST12.;

	INFORMAT mub13a BEST32.;
	FORMAT mub13a BEST12.;

	INFORMAT mub13b BEST32.;
	FORMAT mub13b BEST12.;

	INFORMAT mub14a BEST32.;
	FORMAT mub14a BEST12.;

	INFORMAT mub14b BEST32.;
	FORMAT mub14b BEST12.;

	INFORMAT testerid_musbio BEST32.;
	FORMAT testerid_musbio BEST12.;

	INFORMAT provideinformedconsent_musbio $1.;
	FORMAT provideinformedconsent_musbio $1.;

	INFORMAT nohxbleedingdisorder_musbio $1.;
	FORMAT nohxbleedingdisorder_musbio $1.;

	INFORMAT nomedsthatincrbleeding $1.;
	FORMAT nomedsthatincrbleeding $1.;

	INFORMAT nonsaids4dbefore3dafter $1.;
	FORMAT nonsaids4dbefore3dafter $1.;

	INFORMAT lessthan81mgaspirinday $1.;
	FORMAT lessthan81mgaspirinday $1.;

	INFORMAT notallergiclocanesth $1.;
	FORMAT notallergiclocanesth $1.;

	INFORMAT noinfectionaroundbxsite $1.;
	FORMAT noinfectionaroundbxsite $1.;

	INFORMAT notpregnant_musbio $1.;
	FORMAT notpregnant_musbio $1.;

	INFORMAT eligibility_musbio $1.;
	FORMAT eligibility_musbio $1.;

	INFORMAT tester_musbio $1.;
	FORMAT tester_musbio $1.;

	INFORMAT auto_id_musbio BEST32.;
	FORMAT auto_id_musbio BEST12.;

	INFORMAT testerid_1_musbio $1.;
	FORMAT testerid_1_musbio $1.;

	INPUT
		id_addi
		visit
		crf_version_musbio
		obsdate_datecompleted_musbio
		mub0a
		mub0b
		mub1a
		mub1c
		mub1b
		mub1d
		mub1e
		mub2a
		mubt1
		mubt2
		mubt3
		mubt4
		muba
		mubi
		mub2d
		mub2b
		mub2e
		mub2f
		mub3b
		mub3a
		mub3c
		mub3d
		mub3e
		mub4p1
		mub4p2
		mub4p3
		mub4pt
		mub4a
		mub4b
		mub5a
		mub5b
		mub6a
		mub6b
		mub7a
		mub7b
		mub8a
		mub8b
		mub9a
		mub9b
		mub10a
		mub10b
		mub11a
		mub11b
		mub12b
		mub13a
		mub13b
		mub14a
		mub14b
		testerid_musbio
		provideinformedconsent_musbio
		nohxbleedingdisorder_musbio
		nomedsthatincrbleeding
		nonsaids4dbefore3dafter
		lessthan81mgaspirinday
		notallergiclocanesth
		noinfectionaroundbxsite
		notpregnant_musbio
		eligibility_musbio
		tester_musbio
		auto_id_musbio
		testerid_1_musbio
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_musbio = "CRF Version"
		obsdate_datecompleted_musbio = "Date Completed"
		mub0a = "Muscle Biopsy consent reviewed"
		mub0b = "Eligibility criteria reviewed"
		mub1a = "Pre procedure body temperature"
		mub1c = "Pre procedure pulse"
		mub1b = "Pre procedure respirations"
		mub1d = "Pre procedure BP systolic"
		mub1e = "Pre procedure BP diastolic"
		mub2a = "Brief History and Physical performed by MD NP"
		mubt1 = "Anesthesia start time"
		mubt2 = "First biopsy needle inserted"
		mubt3 = "Leg pressure start"
		mubt4 = "Leg pressure stop"
		muba = "Total amount of Anesthesia given"
		mubi = "Incision closed"
		mub2d = "Biopsy tester ID"
		mub2b = "Biopsy performed"
		mub2e = "Dressing applied"
		mub2f = "Dressing comment"
		mub3b = "Post procedure pulse"
		mub3a = "Post respirations"
		mub3c = "Post procedure BP systolic"
		mub3d = "Post procedure BP diastolic"
		mub3e = "Post procedure instructions reviewed"
		mub4p1 = "Tissue pass 1"
		mub4p2 = "Tissue pass 2"
		mub4p3 = "Tissue pass 3"
		mub4pt = "Tissue Total"
		mub4a = "Oroboros respirometry"
		mub4b = "Oroboros respirometry sample wt"
		mub5a = "Extra tissue Cardiolipin"
		mub5b = "Extra tissue Cardiolipin sample wt"
		mub6a = "Electron Microscopy"
		mub6b = "Electron Microscopy sample wt"
		mub7a = "2D-PAGE & Complex I activity"
		mub7b = "2D-PAGE & Complex I activity sample wt"
		mub8a = "Cardiolipin 2"
		mub8b = "Cardiolipin 2 sample wt"
		mub9a = "Confocal sample 1"
		mub9b = "Confocal sample 1 wt"
		mub10a = "Confocal sample 2"
		mub10b = "Confocal sample 2 wt"
		mub11a = "Confocal sample 3"
		mub11b = "Confocal sample 3 wt"
		mub12b = "Confocal total wt"
		mub13a = "RNA microarray mtDNA n DNA"
		mub13b = "RNA microarray mtDNA n DNA sample wt"
		mub14a = "SubQ"
		mub14b = "SubQ sample wt"
		testerid_musbio = "Tester ID"
		provideinformedconsent_musbio = "Able to provide informed consent"
		nohxbleedingdisorder_musbio = "Does not have history of bleeding disorder"
		nomedsthatincrbleeding = "Does not take medications that will increase bleeding"
		nonsaids4dbefore3dafter = "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
		lessthan81mgaspirinday = "Does not take more than 81 mg Aspirin a day"
		notallergiclocanesth = "Is not allergic to Lidocaine or other local anesthetic"
		noinfectionaroundbxsite = "Has no active infection or chronic skin condition around biopsy site"
		notpregnant_musbio = "Is not pregnant"
		eligibility_musbio = "Eligibility"
		tester_musbio = "Tester"
		auto_id_musbio = "Unique Teleform Number"
		testerid_1_musbio = "Tester ID 1"
	;
	FORMAT
		mub0a mub0a_.
		mub0b mub0b_.
		mub2a mub2a_.
		mubi mubi_.
		mub2b mub2b_.
		mub2e mub2e_.
		mub3e mub3e_.
		mub4a mub4a_.
		mub5a mub5a_.
		mub6a mub6a_.
		mub7a mub7a_.
		mub8a mub8a_.
		mub9a mub9a_.
		mub10a mub10a_.
		mub11a mub11a_.
		mub13a mub13a_.
		mub14a mub14a_.
	;
RUN;


        DATA oc_musclebiopsy;
            SET WORK.IMPORT;
        RUN;
        