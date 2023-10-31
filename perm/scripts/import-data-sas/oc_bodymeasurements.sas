%let path_to_file = '../data-csv/oc_bodymeasurements.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ant05a2_
		555 = 'Physical problems'
		666 = 'Mental problems'
		777 = 'Both Physical and Mental problems'
		888 = 'Refused but theoretically could do'
		999 = 'Technical problems'
	;

	VALUE ant06a2_
		555 = 'Physical problems'
		666 = 'Mental problems'
		777 = 'Both Physical and Mental problems'
		888 = 'Refused but theoretically could do'
		999 = 'Technical problems'
	;

	VALUE hvbp_rl_
		1 = 'Rignt'
		2 = 'Left'
	;

	VALUE ant05a_
		555 = '555'
		777 = '777'
		0 = 'Not Measured'
		888 = '888'
		666 = '666'
		999 = '999'
	;

	VALUE ant06a1_
		555 = '555'
		777 = '777'
		999 = '999'
		888 = '888'
		0 = 'Not Measured'
		666 = '666'
	;

	VALUE ant06a1_2_
		555 = '555'
		0 = 'Not Measured'
		888 = '888'
		666 = '666'
		777 = '777'
		999 = '999'
	;

	VALUE ant06a1_3_
		555 = '555'
		0 = 'Not Measured'
		888 = '888'
		666 = '666'
		777 = '777'
		999 = '999'
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

	INFORMAT crf_version_bodmea $10.;
	FORMAT crf_version_bodmea $10.;

	INFORMAT anttid1 BEST32.;
	FORMAT anttid1 BEST12.;

	INFORMAT ant01 BEST32.;
	FORMAT ant01 BEST12.;

	INFORMAT ant02 BEST32.;
	FORMAT ant02 BEST12.;

	INFORMAT ant03 BEST32.;
	FORMAT ant03 BEST12.;

	INFORMAT ant05 BEST32.;
	FORMAT ant05 BEST12.;

	INFORMAT ant06a BEST32.;
	FORMAT ant06a BEST12.;

	INFORMAT ant06b BEST32.;
	FORMAT ant06b BEST12.;

	INFORMAT arm1 BEST32.;
	FORMAT arm1 BEST12.;

	INFORMAT ant12a BEST32.;
	FORMAT ant12a BEST12.;

	INFORMAT arm2 BEST32.;
	FORMAT arm2 BEST12.;

	INFORMAT ant12b BEST32.;
	FORMAT ant12b BEST12.;

	INFORMAT arm3 BEST32.;
	FORMAT arm3 BEST12.;

	INFORMAT ant12c BEST32.;
	FORMAT ant12c BEST12.;

	INFORMAT ant05a2 BEST32.;
	FORMAT ant05a2 BEST12.;

	INFORMAT ant06a2 BEST32.;
	FORMAT ant06a2 BEST12.;

	INFORMAT hvbp_rl BEST32.;
	FORMAT hvbp_rl BEST12.;

	INFORMAT hvsystolic BEST32.;
	FORMAT hvsystolic BEST12.;

	INFORMAT hvdiastolic BEST32.;
	FORMAT hvdiastolic BEST12.;

	INFORMAT hv_bp_rnd $1.;
	FORMAT hv_bp_rnd $1.;

	INFORMAT ant04a BEST32.;
	FORMAT ant04a BEST12.;

	INFORMAT ant04b BEST32.;
	FORMAT ant04b BEST12.;

	INFORMAT ant06c BEST32.;
	FORMAT ant06c BEST12.;

	INFORMAT anttid3 BEST32.;
	FORMAT anttid3 BEST12.;

	INFORMAT ant13 BEST32.;
	FORMAT ant13 BEST12.;

	INFORMAT anttid2 BEST32.;
	FORMAT anttid2 BEST12.;

	INFORMAT ant07a BEST32.;
	FORMAT ant07a BEST12.;

	INFORMAT ant07b BEST32.;
	FORMAT ant07b BEST12.;

	INFORMAT ant07c BEST32.;
	FORMAT ant07c BEST12.;

	INFORMAT ant08a BEST32.;
	FORMAT ant08a BEST12.;

	INFORMAT ant08b BEST32.;
	FORMAT ant08b BEST12.;

	INFORMAT ant08c BEST32.;
	FORMAT ant08c BEST12.;

	INFORMAT ant09a BEST32.;
	FORMAT ant09a BEST12.;

	INFORMAT ant09b BEST32.;
	FORMAT ant09b BEST12.;

	INFORMAT ant09c BEST32.;
	FORMAT ant09c BEST12.;

	INFORMAT ant10a BEST32.;
	FORMAT ant10a BEST12.;

	INFORMAT ant10b BEST32.;
	FORMAT ant10b BEST12.;

	INFORMAT ant10c BEST32.;
	FORMAT ant10c BEST12.;

	INFORMAT ant11a BEST32.;
	FORMAT ant11a BEST12.;

	INFORMAT ant11b BEST32.;
	FORMAT ant11b BEST12.;

	INFORMAT ant11c BEST32.;
	FORMAT ant11c BEST12.;

	INFORMAT ant14a BEST32.;
	FORMAT ant14a BEST12.;

	INFORMAT ant14b BEST32.;
	FORMAT ant14b BEST12.;

	INFORMAT ant14c BEST32.;
	FORMAT ant14c BEST12.;

	INFORMAT ant05a BEST32.;
	FORMAT ant05a BEST12.;

	INFORMAT ant06a1 BEST32.;
	FORMAT ant06a1 BEST12.;

	INFORMAT ant06a1_2 BEST32.;
	FORMAT ant06a1_2 BEST12.;

	INFORMAT ant06a1_3 BEST32.;
	FORMAT ant06a1_3 BEST12.;

	INFORMAT auto_id_bodmea BEST32.;
	FORMAT auto_id_bodmea BEST12.;

	INPUT
		id_addi
		visit
		crf_version_bodmea
		anttid1
		ant01
		ant02
		ant03
		ant05
		ant06a
		ant06b
		arm1
		ant12a
		arm2
		ant12b
		arm3
		ant12c
		ant05a2
		ant06a2
		hvbp_rl
		hvsystolic
		hvdiastolic
		hv_bp_rnd
		ant04a
		ant04b
		ant06c
		anttid3
		ant13
		anttid2
		ant07a
		ant07b
		ant07c
		ant08a
		ant08b
		ant08c
		ant09a
		ant09b
		ant09c
		ant10a
		ant10b
		ant10c
		ant11a
		ant11b
		ant11c
		ant14a
		ant14b
		ant14c
		ant05a
		ant06a1
		ant06a1_2
		ant06a1_3
		auto_id_bodmea
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_bodmea = "CRF Version"
		anttid1 = "Tester ID 1"
		ant01 = "Body Temperature (F)"
		ant02 = "Pulse"
		ant03 = "Respirations"
		ant05 = "Weight"
		ant06a = "Height measurement 1"
		ant06b = "Height measurement 2"
		arm1 = "R arm skinfold thickness mm 1"
		ant12a = "Right arm skinfold thickness measurement 1"
		arm2 = "R arm skinfold thickness mm 2"
		ant12b = "Right arm skinfold thickness measurement 2"
		arm3 = "R arm skinfold thickness mm 3"
		ant12c = "Right arm skinfold thickness measurement 3"
		ant05a2 = "Weight not measured"
		ant06a2 = "Height not measured"
		hvbp_rl = "Blood Pressure R or L"
		hvsystolic = "Blood Pressure Systolic"
		hvdiastolic = "Blood Pressure Diastolic"
		hv_bp_rnd = "Blood Pressure Reason not done"
		ant04a = "Blood Pressure Systolic"
		ant04b = "Blood Pressure Diastolic"
		ant06c = "Height measurement 3"
		anttid3 = "Tester ID 3"
		ant13 = "Tibia Length"
		anttid2 = "Tester ID 2"
		ant07a = "Waist diameter measurement 1"
		ant07b = "Waist diameter measurement 2"
		ant07c = "Waist diameter measurement 3"
		ant08a = "Waist depth measurement 1"
		ant08b = "Waist depth measurement 2"
		ant08c = "Waist depth measurement 3"
		ant09a = "Upper abdomen circumference measurement 1"
		ant09b = "Upper abdomen circumference measurement 2"
		ant09c = "Upper abdomen circumference measurement 3"
		ant10a = "Lower abdomen circumference measurement 1"
		ant10b = "Lower abdomen circumference measurement 2"
		ant10c = "Lower abdomen circumference measurement 3"
		ant11a = "Buttock circumference measurement 1"
		ant11b = "Buttock circumference measurement 2"
		ant11c = "Buttock circumference measurement 3"
		ant14a = "Head circumference measurement 1 before Dexa"
		ant14b = "Head circumference measurement 2 before Dexa"
		ant14c = "Head circumference measurement 3 after Dexa"
		ant05a = "Weight not measured"
		ant06a1 = "Height not measured"
		ant06a1_2 = "Upper abdomen not measured"
		ant06a1_3 = "Lower abdomen not measured"
		auto_id_bodmea = "Unique Teleform Number"
	;
	FORMAT
		ant05a2 ant05a2_.
		ant06a2 ant06a2_.
		hvbp_rl hvbp_rl_.
		ant05a ant05a_.
		ant06a1 ant06a1_.
		ant06a1_2 ant06a1_2_.
		ant06a1_3 ant06a1_3_.
	;
RUN;


        DATA oc_bodymeasurements;
            SET WORK.IMPORT;
        RUN;
        