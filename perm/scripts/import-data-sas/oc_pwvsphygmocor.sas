%let path_to_file = '../data-csv/oc_pwvsphygmocor.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE pwran_pwvsph_
		1 = 'Complior first SphygmoCor second'
		2 = 'SphgmoCor first Complior second'
		3 = 'Complior Only'
	;

	VALUE pwv01_pwvsph_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE pwv01a_pwvsph_
		999 = 'Technical problems'
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
	;

	VALUE pwv01b_pwvsph_
		3 = 'Hardware on neck precluding access to carotid pulse'
		1 = 'TIA or CVA within past 6 months'
		2 = 'Bilateral carotid bruits'
	;

	VALUE agi01_pwvsph_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE agi01a_pwvsph_
		999 = 'Technical problems'
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
	;

	VALUE abi01_pwvsph_
		1 = 'Yes both sides'
		0 = 'No'
		2 = 'Right only'
		3 = 'Left only'
	;

	VALUE abi01a_pwvsph_
		999 = 'Technical problems'
		0 = 'Other'
		1 = 'Contraindication'
		555 = 'Physical'
		666 = 'Cognitive'
		777 = 'Physical and Cognitive'
		888 = 'Refused'
	;

	VALUE pwbp01_pwvsph_
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

	INFORMAT crf_version_pwvsph $8.;
	FORMAT crf_version_pwvsph $8.;

	INFORMAT pwran_pwvsph BEST32.;
	FORMAT pwran_pwvsph BEST12.;

	INFORMAT pwv01_pwvsph BEST32.;
	FORMAT pwv01_pwvsph BEST12.;

	INFORMAT pwv01a_pwvsph BEST32.;
	FORMAT pwv01a_pwvsph BEST12.;

	INFORMAT pwv01b_pwvsph BEST32.;
	FORMAT pwv01b_pwvsph BEST12.;

	INFORMAT agi01_pwvsph BEST32.;
	FORMAT agi01_pwvsph BEST12.;

	INFORMAT agi01a_pwvsph BEST32.;
	FORMAT agi01a_pwvsph BEST12.;

	INFORMAT agi01b_pwvsph $1.;
	FORMAT agi01b_pwvsph $1.;

	INFORMAT abi01_pwvsph BEST32.;
	FORMAT abi01_pwvsph BEST12.;

	INFORMAT abi01a_pwvsph BEST32.;
	FORMAT abi01a_pwvsph BEST12.;

	INFORMAT abi01b_pwvsph $9.;
	FORMAT abi01b_pwvsph $9.;

	INFORMAT pwbp01_pwvsph BEST32.;
	FORMAT pwbp01_pwvsph BEST12.;

	INFORMAT pwsbp_pwvsph BEST32.;
	FORMAT pwsbp_pwvsph BEST12.;

	INFORMAT pwdbp_pwvsph BEST32.;
	FORMAT pwdbp_pwvsph BEST12.;

	INFORMAT pwmap_pwvsph BEST32.;
	FORMAT pwmap_pwvsph BEST12.;

	INFORMAT auto_id_pwvsph BEST32.;
	FORMAT auto_id_pwvsph BEST12.;

	INFORMAT testerid_pwvsph BEST32.;
	FORMAT testerid_pwvsph BEST12.;

	INPUT
		id_addi
		visit
		crf_version_pwvsph
		pwran_pwvsph
		pwv01_pwvsph
		pwv01a_pwvsph
		pwv01b_pwvsph
		agi01_pwvsph
		agi01a_pwvsph
		agi01b_pwvsph
		abi01_pwvsph
		abi01a_pwvsph
		abi01b_pwvsph
		pwbp01_pwvsph
		pwsbp_pwvsph
		pwdbp_pwvsph
		pwmap_pwvsph
		auto_id_pwvsph
		testerid_pwvsph
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_pwvsph = "CRF Version"
		pwran_pwvsph = "Randomization list"
		pwv01_pwvsph = "Was PWV performed"
		pwv01a_pwvsph = "PWV reason not done"
		pwv01b_pwvsph = "PWV Contraindications"
		agi01_pwvsph = "Was AGI performed"
		agi01a_pwvsph = "AGI reason not done"
		agi01b_pwvsph = "AGI Contraindications"
		abi01_pwvsph = "Was ABI performed"
		abi01a_pwvsph = "ABI reason not done"
		abi01b_pwvsph = "ABI reason not done Other"
		pwbp01_pwvsph = "Blood pressure"
		pwsbp_pwvsph = "BP systolic"
		pwdbp_pwvsph = "BP diastolic"
		pwmap_pwvsph = "BP MAP"
		auto_id_pwvsph = "Unique Teleform Number"
		testerid_pwvsph = "Tester ID"
	;
	FORMAT
		pwran_pwvsph pwran_pwvsph_.
		pwv01_pwvsph pwv01_pwvsph_.
		pwv01a_pwvsph pwv01a_pwvsph_.
		pwv01b_pwvsph pwv01b_pwvsph_.
		agi01_pwvsph agi01_pwvsph_.
		agi01a_pwvsph agi01a_pwvsph_.
		abi01_pwvsph abi01_pwvsph_.
		abi01a_pwvsph abi01a_pwvsph_.
		pwbp01_pwvsph pwbp01_pwvsph_.
	;
RUN;


        DATA oc_pwvsphygmocor;
            SET WORK.IMPORT;
        RUN;
        