%let path_to_file = '../data-csv/oc_pulsewavevelocity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pwv01_pulwavvel_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE pwv01a_pulwavvel_
		999 = 'Technical problems'
		0 = 'Other'
		555 = 'Physical'
		888 = 'Refused'
		1 = 'Contraindication'
		777 = 'Physical and Cognitive'
		666 = 'Cognitive'
	;

	VALUE pwv01b_pulwavvel_
		2 = 'Bilateral carotid bruits'
		3 = 'Hardware on neck precluding access to carotid pulse'
		1 = 'TIA or CVA within past 6 months'
	;

	VALUE agi01_pulwavvel_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE agi01a_pulwavvel_
		999 = 'Technical problems'
		0 = 'Other'
		555 = 'Physical'
		888 = 'Refused'
		1 = 'Contraindication'
		777 = 'Physical and Cognitive'
		666 = 'Cognitive'
	;

	VALUE agi01b_pulwavvel_
		3 = 'Hardware on neck precluding access to carotid pulse'
		2 = 'Bilateral carotid bruits'
		1 = 'TIA or CVA within past 6 months'
	;

	VALUE abi01_pulwavvel_
		1 = 'Yes both sides'
		0 = 'No'
		2 = 'Right only'
		3 = 'Left only'
	;

	VALUE abi01a_pulwavvel_
		999 = 'Technical problems'
		0 = 'Other'
		555 = 'Physical'
		888 = 'Refused'
		1 = 'Contraindication'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
	;

	VALUE pwbp01_pulwavvel_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vaseracolin_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE pwran_pulwavvel_
		2 = 'SphgmoCor first Complior second'
		1 = 'Complior first SphygmoCor second'
		3 = 'Complior Only'
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

	INFORMAT crf_version_pulwavvel $8.;
	FORMAT crf_version_pulwavvel $8.;

	INFORMAT pwv01_pulwavvel BEST32.;
	FORMAT pwv01_pulwavvel BEST12.;

	INFORMAT pwv01a_pulwavvel BEST32.;
	FORMAT pwv01a_pulwavvel BEST12.;

	INFORMAT pwv01b_pulwavvel BEST32.;
	FORMAT pwv01b_pulwavvel BEST12.;

	INFORMAT agi01_pulwavvel BEST32.;
	FORMAT agi01_pulwavvel BEST12.;

	INFORMAT agi01a_pulwavvel BEST32.;
	FORMAT agi01a_pulwavvel BEST12.;

	INFORMAT agi01b_pulwavvel BEST32.;
	FORMAT agi01b_pulwavvel BEST12.;

	INFORMAT abi01_pulwavvel BEST32.;
	FORMAT abi01_pulwavvel BEST12.;

	INFORMAT abi01a_pulwavvel BEST32.;
	FORMAT abi01a_pulwavvel BEST12.;

	INFORMAT pwbp01_pulwavvel BEST32.;
	FORMAT pwbp01_pulwavvel BEST12.;

	INFORMAT pwsbp_pulwavvel BEST32.;
	FORMAT pwsbp_pulwavvel BEST12.;

	INFORMAT pwdbp_pulwavvel BEST32.;
	FORMAT pwdbp_pulwavvel BEST12.;

	INFORMAT pwmap_pulwavvel BEST32.;
	FORMAT pwmap_pulwavvel BEST12.;

	INFORMAT vaseracolin BEST32.;
	FORMAT vaseracolin BEST12.;

	INFORMAT pwran_pulwavvel BEST32.;
	FORMAT pwran_pulwavvel BEST12.;

	INFORMAT auto_id_pulwavvel BEST32.;
	FORMAT auto_id_pulwavvel BEST12.;

	INFORMAT testerid_pulwavvel BEST32.;
	FORMAT testerid_pulwavvel BEST12.;

	INPUT
		id_addi
		visit
		crf_version_pulwavvel
		pwv01_pulwavvel
		pwv01a_pulwavvel
		pwv01b_pulwavvel
		agi01_pulwavvel
		agi01a_pulwavvel
		agi01b_pulwavvel
		abi01_pulwavvel
		abi01a_pulwavvel
		pwbp01_pulwavvel
		pwsbp_pulwavvel
		pwdbp_pulwavvel
		pwmap_pulwavvel
		vaseracolin
		pwran_pulwavvel
		auto_id_pulwavvel
		testerid_pulwavvel
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_pulwavvel = "CRF Version"
		pwv01_pulwavvel = "Was PWV performed"
		pwv01a_pulwavvel = "PWV reason not done"
		pwv01b_pulwavvel = "PWV Contraindications"
		agi01_pulwavvel = "Was AGI performed"
		agi01a_pulwavvel = "AGI reason not done"
		agi01b_pulwavvel = "AGI Contraindications"
		abi01_pulwavvel = "Was ABI performed"
		abi01a_pulwavvel = "ABI reason not done"
		pwbp01_pulwavvel = "Blood pressure"
		pwsbp_pulwavvel = "BP systolic"
		pwdbp_pulwavvel = "BP diastolic"
		pwmap_pulwavvel = "BP MAP"
		vaseracolin = "Was Vasera and Colin comparison study performed"
		pwran_pulwavvel = "Randomization list"
		auto_id_pulwavvel = "Unique Teleform Number"
		testerid_pulwavvel = "Tester ID"
	;
	FORMAT
		pwv01_pulwavvel pwv01_pulwavvel_.
		pwv01a_pulwavvel pwv01a_pulwavvel_.
		pwv01b_pulwavvel pwv01b_pulwavvel_.
		agi01_pulwavvel agi01_pulwavvel_.
		agi01a_pulwavvel agi01a_pulwavvel_.
		agi01b_pulwavvel agi01b_pulwavvel_.
		abi01_pulwavvel abi01_pulwavvel_.
		abi01a_pulwavvel abi01a_pulwavvel_.
		pwbp01_pulwavvel pwbp01_pulwavvel_.
		vaseracolin vaseracolin_.
		pwran_pulwavvel pwran_pulwavvel_.
	;
RUN;


        DATA oc_pulsewavevelocity;
            SET WORK.IMPORT;
        RUN;
        