%let path_to_file = '../data-csv/oc_visiontest.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE vissc1_vistes_
		3 = 'For both distance and near'
		1 = 'Near only (eg reading)'
		2 = 'Distance only (eg driving watching TV)'
		0 = 'Never'
	;

	VALUE vissc2_vistes_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vissc2a_vistes_
		1 = 'Glasses'
		2 = 'Contact Lenses'
	;

	VALUE vissc2a1_vistes_
		2 = 'Bifocal'
		4 = 'Progressives'
		1 = 'Single vision'
		3 = 'Trifocals'
	;

	VALUE vissc2b_vistes_
		1 = 'Soft'
		2 = 'RGP (hard)'
		8 = 'Unknown'
	;

	VALUE vissc2b1_vistes_
		1 = 'Distance'
		3 = 'Monovision'
		2 = 'Bifocal'
	;

	VALUE vissc2b2_vistes_
		1 = 'Right'
		8 = 'Unknown'
		2 = 'Left'
	;

	VALUE $visst1_
		_1 = 'Bottom'
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Top'
	;

	VALUE $visst2_
		_1 = 'Left'
		_0 = 'Right'
		_00 = 'Top'
		_000 = 'Bottom'
	;

	VALUE $visst3_
		_1 = 'Bottom'
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Top'
	;

	VALUE $visst4_
		_1 = 'Top'
		_0 = 'Left'
		_00 = 'Right'
		_000 = 'Bottom'
	;

	VALUE $visst5_
		_1 = 'Top'
		_0 = 'Left'
		_000 = 'Bottom'
		_00 = 'Right'
	;

	VALUE $visst6_
		_1 = 'Left'
		_0 = 'Right'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE $visst7_
		_1 = 'Right'
		_0 = 'Left'
		_00 = 'Top'
		_000 = 'Bottom'
	;

	VALUE $visst8_
		_1 = 'Left'
		_0 = 'Right'
		_00 = 'Top'
		_000 = 'Bottom'
	;

	VALUE $visst9_
		_1 = 'Right'
		_0 = 'Left'
		_00 = 'Top'
		_000 = 'Bottom'
	;

	VALUE visstdon_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visstrnd_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		777 = 'Physical and cognitive'
		666 = 'Cognitive problems'
	;

	VALUE visstgls_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visva11_
		8 = '20'
		9 = '16'
		7 = '25'
		6 = '32'
		5 = '40'
		4 = '50'
		3 = '63'
		1 = '100'
		2 = '80'
		0 = '>100'
	;

	VALUE visva12_
		6 = '32'
		7 = '25'
		8 = '20'
		5 = '40'
		9 = '16'
		4 = '50'
		3 = '63'
		2 = '80'
		0 = '>100'
		1 = '100'
	;

	VALUE visva13_
		7 = '25'
		6 = '32'
		5 = '40'
		8 = '20'
		4 = '50'
		9 = '16'
		3 = '63'
		2 = '80'
		1 = '100'
		0 = '>100'
	;

	VALUE viscsdis_
		8 = '8'
		4 = '4'
	;

	VALUE viscs1b0_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscs1b1_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs1b2_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs1b3_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs1b4_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs1b5_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs1b6_
		9 = 'Blank'
		1 = 'Top'
		0 = 'Bottom'
	;

	VALUE viscs1b7_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs1b8_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs1c0_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscs1c1_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs1c2_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs1c3_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs1c4_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs1c5_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs1c6_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs1c7_
		9 = 'Blank'
		0 = 'Bottom'
		1 = 'Top'
	;

	VALUE viscs1c8_
		9 = 'Blank'
		0 = 'Bottom'
		1 = 'Top'
	;

	VALUE visva21_
		8 = '20'
		9 = '16'
		7 = '25'
		6 = '32'
		5 = '40'
		4 = '50'
		3 = '63'
		0 = '>100'
		2 = '80'
		1 = '100'
	;

	VALUE visva22_
		6 = '32'
		7 = '25'
		5 = '40'
		8 = '20'
		4 = '50'
		9 = '16'
		3 = '63'
		2 = '80'
		0 = '>100'
		1 = '100'
	;

	VALUE visva23_
		6 = '32'
		7 = '25'
		5 = '40'
		4 = '50'
		3 = '63'
		8 = '20'
		9 = '16'
		2 = '80'
		1 = '100'
		0 = '>100'
	;

	VALUE viscs2b0_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscs2b1_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs2b2_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs2b3_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs2b4_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs2b5_
		9 = 'Blank'
		1 = 'Top'
		0 = 'Bottom'
	;

	VALUE viscs2b6_
		9 = 'Blank'
		1 = 'Top'
		0 = 'Bottom'
	;

	VALUE viscs2b7_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs2b8_
		9 = 'Blank'
		0 = 'Top'
		1 = 'Bottom'
	;

	VALUE viscs2c0_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscs2c1_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs2c2_
		1 = 'Top'
		9 = 'Blank'
		0 = 'Bottom'
	;

	VALUE viscs2c3_
		1 = 'Bottom'
		9 = 'Blank'
		0 = 'Top'
	;

	VALUE viscs2c4_
		9 = 'Blank'
		1 = 'Top'
		0 = 'Bottom'
	;

	VALUE viscs2c5_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs2c6_
		9 = 'Blank'
		1 = 'Bottom'
		0 = 'Top'
	;

	VALUE viscs2c7_
		9 = 'Blank'
		1 = 'Top'
		0 = 'Bottom'
	;

	VALUE viscs2c8_
		9 = 'Blank'
		0 = 'Bottom'
		1 = 'Top'
	;

	VALUE visvadon_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visvarnd_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		777 = 'Physical and cognitive'
		666 = 'Cognitive problems'
	;

	VALUE visvagls_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscsdon_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE viscsrnd_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		777 = 'Physical and cognitive'
		666 = 'Cognitive problems'
	;

	VALUE viscsgls_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visvalta_
		0 = 'No - Go to STANDARD ALERT'
		1 = 'Yes - Go to B'
	;

	VALUE visvaltb_
		3 = 'More than a few weeks ago - STANDARD ALERT'
		2 = 'Within the past few weeks - URGENT ALERT'
		1 = 'Within the past few days - EMERGENCY ALERT'
	;

	VALUE visvfdis_vistes_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfdon_vistes_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visvfrnd_vistes_
		999 = 'Technical problems'
		555 = 'Physical problems (*includes if participant has marked discrepancy of vision between eyes)'
		888 = 'Refused'
		777 = 'Cognitive problems'
		666 = 'Physical and cognitive'
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

	INFORMAT crf_version_vistes $7.;
	FORMAT crf_version_vistes $7.;

	INFORMAT vissc1_vistes BEST32.;
	FORMAT vissc1_vistes BEST12.;

	INFORMAT vissc2_vistes BEST32.;
	FORMAT vissc2_vistes BEST12.;

	INFORMAT vissc2a_vistes BEST32.;
	FORMAT vissc2a_vistes BEST12.;

	INFORMAT vissc2a1_vistes BEST32.;
	FORMAT vissc2a1_vistes BEST12.;

	INFORMAT vissc2b_vistes BEST32.;
	FORMAT vissc2b_vistes BEST12.;

	INFORMAT vissc2b1_vistes BEST32.;
	FORMAT vissc2b1_vistes BEST12.;

	INFORMAT vissc2b2_vistes BEST32.;
	FORMAT vissc2b2_vistes BEST12.;

	INFORMAT vistid BEST32.;
	FORMAT vistid BEST12.;

	INFORMAT visst1 $2.;
	FORMAT visst1 $2.;

	INFORMAT visst2 $2.;
	FORMAT visst2 $2.;

	INFORMAT visst3 $2.;
	FORMAT visst3 $2.;

	INFORMAT visst4 $2.;
	FORMAT visst4 $2.;

	INFORMAT visst5 $4.;
	FORMAT visst5 $4.;

	INFORMAT visst6 $4.;
	FORMAT visst6 $4.;

	INFORMAT visst7 $2.;
	FORMAT visst7 $2.;

	INFORMAT visst8 $2.;
	FORMAT visst8 $2.;

	INFORMAT visst9 $2.;
	FORMAT visst9 $2.;

	INFORMAT visstdon BEST32.;
	FORMAT visstdon BEST12.;

	INFORMAT visstrnd BEST32.;
	FORMAT visstrnd BEST12.;

	INFORMAT visstgls BEST32.;
	FORMAT visstgls BEST12.;

	INFORMAT visva11 BEST32.;
	FORMAT visva11 BEST12.;

	INFORMAT visva12 BEST32.;
	FORMAT visva12 BEST12.;

	INFORMAT visva13 BEST32.;
	FORMAT visva13 BEST12.;

	INFORMAT viscsdis BEST32.;
	FORMAT viscsdis BEST12.;

	INFORMAT viscs1b0 BEST32.;
	FORMAT viscs1b0 BEST12.;

	INFORMAT viscs1b1 BEST32.;
	FORMAT viscs1b1 BEST12.;

	INFORMAT viscs1b2 BEST32.;
	FORMAT viscs1b2 BEST12.;

	INFORMAT viscs1b3 BEST32.;
	FORMAT viscs1b3 BEST12.;

	INFORMAT viscs1b4 BEST32.;
	FORMAT viscs1b4 BEST12.;

	INFORMAT viscs1b5 BEST32.;
	FORMAT viscs1b5 BEST12.;

	INFORMAT viscs1b6 BEST32.;
	FORMAT viscs1b6 BEST12.;

	INFORMAT viscs1b7 BEST32.;
	FORMAT viscs1b7 BEST12.;

	INFORMAT viscs1b8 BEST32.;
	FORMAT viscs1b8 BEST12.;

	INFORMAT viscs1c0 BEST32.;
	FORMAT viscs1c0 BEST12.;

	INFORMAT viscs1c1 BEST32.;
	FORMAT viscs1c1 BEST12.;

	INFORMAT viscs1c2 BEST32.;
	FORMAT viscs1c2 BEST12.;

	INFORMAT viscs1c3 BEST32.;
	FORMAT viscs1c3 BEST12.;

	INFORMAT viscs1c4 BEST32.;
	FORMAT viscs1c4 BEST12.;

	INFORMAT viscs1c5 BEST32.;
	FORMAT viscs1c5 BEST12.;

	INFORMAT viscs1c6 BEST32.;
	FORMAT viscs1c6 BEST12.;

	INFORMAT viscs1c7 BEST32.;
	FORMAT viscs1c7 BEST12.;

	INFORMAT viscs1c8 BEST32.;
	FORMAT viscs1c8 BEST12.;

	INFORMAT visva21 BEST32.;
	FORMAT visva21 BEST12.;

	INFORMAT visva22 BEST32.;
	FORMAT visva22 BEST12.;

	INFORMAT visva23 BEST32.;
	FORMAT visva23 BEST12.;

	INFORMAT viscs2b0 BEST32.;
	FORMAT viscs2b0 BEST12.;

	INFORMAT viscs2b1 BEST32.;
	FORMAT viscs2b1 BEST12.;

	INFORMAT viscs2b2 BEST32.;
	FORMAT viscs2b2 BEST12.;

	INFORMAT viscs2b3 BEST32.;
	FORMAT viscs2b3 BEST12.;

	INFORMAT viscs2b4 BEST32.;
	FORMAT viscs2b4 BEST12.;

	INFORMAT viscs2b5 BEST32.;
	FORMAT viscs2b5 BEST12.;

	INFORMAT viscs2b6 BEST32.;
	FORMAT viscs2b6 BEST12.;

	INFORMAT viscs2b7 BEST32.;
	FORMAT viscs2b7 BEST12.;

	INFORMAT viscs2b8 BEST32.;
	FORMAT viscs2b8 BEST12.;

	INFORMAT viscs2c0 BEST32.;
	FORMAT viscs2c0 BEST12.;

	INFORMAT viscs2c1 BEST32.;
	FORMAT viscs2c1 BEST12.;

	INFORMAT viscs2c2 BEST32.;
	FORMAT viscs2c2 BEST12.;

	INFORMAT viscs2c3 BEST32.;
	FORMAT viscs2c3 BEST12.;

	INFORMAT viscs2c4 BEST32.;
	FORMAT viscs2c4 BEST12.;

	INFORMAT viscs2c5 BEST32.;
	FORMAT viscs2c5 BEST12.;

	INFORMAT viscs2c6 BEST32.;
	FORMAT viscs2c6 BEST12.;

	INFORMAT viscs2c7 BEST32.;
	FORMAT viscs2c7 BEST12.;

	INFORMAT viscs2c8 BEST32.;
	FORMAT viscs2c8 BEST12.;

	INFORMAT visvadon BEST32.;
	FORMAT visvadon BEST12.;

	INFORMAT visvarnd BEST32.;
	FORMAT visvarnd BEST12.;

	INFORMAT visvagls BEST32.;
	FORMAT visvagls BEST12.;

	INFORMAT viscsdon BEST32.;
	FORMAT viscsdon BEST12.;

	INFORMAT viscsrnd BEST32.;
	FORMAT viscsrnd BEST12.;

	INFORMAT viscsgls BEST32.;
	FORMAT viscsgls BEST12.;

	INFORMAT visvalta BEST32.;
	FORMAT visvalta BEST12.;

	INFORMAT visvaltb BEST32.;
	FORMAT visvaltb BEST12.;

	INFORMAT visvfid BEST32.;
	FORMAT visvfid BEST12.;

	INFORMAT visvfdis_vistes BEST32.;
	FORMAT visvfdis_vistes BEST12.;

	INFORMAT vissc3a1_vistes BEST32.;
	FORMAT vissc3a1_vistes BEST12.;

	INFORMAT vissc3a2_vistes BEST32.;
	FORMAT vissc3a2_vistes BEST12.;

	INFORMAT vissc3a3_vistes BEST32.;
	FORMAT vissc3a3_vistes BEST12.;

	INFORMAT vissc3a4_vistes BEST32.;
	FORMAT vissc3a4_vistes BEST12.;

	INFORMAT vissc3b1_vistes BEST32.;
	FORMAT vissc3b1_vistes BEST12.;

	INFORMAT vissc3b2_vistes BEST32.;
	FORMAT vissc3b2_vistes BEST12.;

	INFORMAT vissc3b3_vistes BEST32.;
	FORMAT vissc3b3_vistes BEST12.;

	INFORMAT vissc3b4_vistes BEST32.;
	FORMAT vissc3b4_vistes BEST12.;

	INFORMAT vissc3c_vistes BEST32.;
	FORMAT vissc3c_vistes BEST12.;

	INFORMAT visvfdon_vistes BEST32.;
	FORMAT visvfdon_vistes BEST12.;

	INFORMAT visvfrnd_vistes BEST32.;
	FORMAT visvfrnd_vistes BEST12.;

	INFORMAT auto_id_vistes BEST32.;
	FORMAT auto_id_vistes BEST12.;

	INFORMAT testerid_vistes BEST32.;
	FORMAT testerid_vistes BEST12.;

	INPUT
		id_addi
		visit
		crf_version_vistes
		vissc1_vistes
		vissc2_vistes
		vissc2a_vistes
		vissc2a1_vistes
		vissc2b_vistes
		vissc2b1_vistes
		vissc2b2_vistes
		vistid
		visst1
		visst2
		visst3
		visst4
		visst5
		visst6
		visst7
		visst8
		visst9
		visstdon
		visstrnd
		visstgls
		visva11
		visva12
		visva13
		viscsdis
		viscs1b0
		viscs1b1
		viscs1b2
		viscs1b3
		viscs1b4
		viscs1b5
		viscs1b6
		viscs1b7
		viscs1b8
		viscs1c0
		viscs1c1
		viscs1c2
		viscs1c3
		viscs1c4
		viscs1c5
		viscs1c6
		viscs1c7
		viscs1c8
		visva21
		visva22
		visva23
		viscs2b0
		viscs2b1
		viscs2b2
		viscs2b3
		viscs2b4
		viscs2b5
		viscs2b6
		viscs2b7
		viscs2b8
		viscs2c0
		viscs2c1
		viscs2c2
		viscs2c3
		viscs2c4
		viscs2c5
		viscs2c6
		viscs2c7
		viscs2c8
		visvadon
		visvarnd
		visvagls
		viscsdon
		viscsrnd
		viscsgls
		visvalta
		visvaltb
		visvfid
		visvfdis_vistes
		vissc3a1_vistes
		vissc3a2_vistes
		vissc3a3_vistes
		vissc3a4_vistes
		vissc3b1_vistes
		vissc3b2_vistes
		vissc3b3_vistes
		vissc3b4_vistes
		vissc3c_vistes
		visvfdon_vistes
		visvfrnd_vistes
		auto_id_vistes
		testerid_vistes
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_vistes = "CRF Version"
		vissc1_vistes = "Do you wear glasses or contact lenses"
		vissc2_vistes = "Did you bring your glasses"
		vissc2a_vistes = "Type of glasses or contact lenses"
		vissc2a1_vistes = "Glasses"
		vissc2b_vistes = "Contact Lenses"
		vissc2b1_vistes = "Contact lenses for distance bifocal or monovision"
		vissc2b2_vistes = "Which eye distance"
		vistid = "VisionTester ID"
		visst1 = "Stereopsis Line 1"
		visst2 = "Stereopsis Line 2"
		visst3 = "Stereopsis Line 3"
		visst4 = "Stereopsis Line 4"
		visst5 = "Stereopsis Line 5"
		visst6 = "Stereopsis Line 6"
		visst7 = "Stereopsis Line 7"
		visst8 = "Stereopsis Line 8"
		visst9 = "Stereopsis Line 9"
		visstdon = "Stereopsis test completed"
		visstrnd = "Stereopsis reason not done"
		visstgls = "Did participant wear glasses"
		visva11 = "Glare lights off column 1 high contrast"
		visva12 = "Glare lights off column 2 medium contrast"
		visva13 = "Glare lights off column 3 low contrast"
		viscsdis = "Test distance"
		viscs1b0 = "Do you see the bars in the first circles see line B"
		viscs1b1 = "Glare lights off Line B1"
		viscs1b2 = "Glare lights off Line B2"
		viscs1b3 = "Glare lights off Line B3"
		viscs1b4 = "Glare lights off Line B4"
		viscs1b5 = "Glare lights off Line B5"
		viscs1b6 = "Glare lights off Line B6"
		viscs1b7 = "Glare lights off Line B7"
		viscs1b8 = "Glare lights off Line B8"
		viscs1c0 = "Lights off Do you see the bars in the first circles see line C"
		viscs1c1 = "Glare lights off Line C1"
		viscs1c2 = "Glare lights off Line C2"
		viscs1c3 = "Glare lights off Line C3"
		viscs1c4 = "Glare lights off Line C4"
		viscs1c5 = "Glare lights off Line C5"
		viscs1c6 = "Glare lights off Line C6"
		viscs1c7 = "Glare lights off Line C7"
		viscs1c8 = "Glare lights off Line C8"
		visva21 = "Glare lights on column 1 high contrast"
		visva22 = "Glare lights on column 2 medium contrast"
		visva23 = "Glare lights on column 3 low contrast"
		viscs2b0 = "Light on Do you see the bars in the first circles see line B"
		viscs2b1 = "Glare lights on Line B1"
		viscs2b2 = "Glare lights on Line B2"
		viscs2b3 = "Glare lights on Line B3"
		viscs2b4 = "Glare lights on Line B4"
		viscs2b5 = "Glare lights on Line B5"
		viscs2b6 = "Glare lights on Line B6"
		viscs2b7 = "Glare lights on Line B7"
		viscs2b8 = "Glare lights on Line B8"
		viscs2c0 = "Lights on Do you see the bars in the first circles see line C"
		viscs2c1 = "Glare lights on Line C1"
		viscs2c2 = "Glare lights on Line C2"
		viscs2c3 = "Glare lights on Line C3"
		viscs2c4 = "Glare lights on Line C4"
		viscs2c5 = "Glare lights on Line C5"
		viscs2c6 = "Glare lights on Line C6"
		viscs2c7 = "Glare lights on Line C7"
		viscs2c8 = "Glare lights on Line C8"
		visvadon = "Was visual acuity completed"
		visvarnd = "Visual acuity reason not done"
		visvagls = "Visual acuity did particpant wear glasses"
		viscsdon = "Was contrast sensitivity completed"
		viscsrnd = "Contrast sensitivity reason not done"
		viscsgls = "Contrast sensitivity did particpant wear glasses"
		visvalta = "Visual Acuity and Visual Field Alerts YN"
		visvaltb = "Alerts"
		visvfid = "Visual Field Tester ID"
		visvfdis_vistes = "Does participant have marked discrepency of vision between eyes"
		vissc3a1_vistes = "Right eye sphere Rx"
		vissc3a2_vistes = "Right eye cylinder Rx"
		vissc3a3_vistes = "Right eye Axis Rx"
		vissc3a4_vistes = "Right eye sphere Rx final"
		vissc3b1_vistes = "Left eye sphere Rx"
		vissc3b2_vistes = "Left eye cylinder Rx"
		vissc3b3_vistes = "Left eye Axis Rx"
		vissc3b4_vistes = "Left eye sphere Rx final"
		vissc3c_vistes = "Near add"
		visvfdon_vistes = "Was visual field assessment completed"
		visvfrnd_vistes = "Why visual field not done"
		auto_id_vistes = "Unique Teleform Number"
		testerid_vistes = "Tester ID"
	;
	FORMAT
		vissc1_vistes vissc1_vistes_.
		vissc2_vistes vissc2_vistes_.
		vissc2a_vistes vissc2a_vistes_.
		vissc2a1_vistes vissc2a1_vistes_.
		vissc2b_vistes vissc2b_vistes_.
		vissc2b1_vistes vissc2b1_vistes_.
		vissc2b2_vistes vissc2b2_vistes_.
		visstdon visstdon_.
		visstrnd visstrnd_.
		visstgls visstgls_.
		visva11 visva11_.
		visva12 visva12_.
		visva13 visva13_.
		viscsdis viscsdis_.
		viscs1b0 viscs1b0_.
		viscs1b1 viscs1b1_.
		viscs1b2 viscs1b2_.
		viscs1b3 viscs1b3_.
		viscs1b4 viscs1b4_.
		viscs1b5 viscs1b5_.
		viscs1b6 viscs1b6_.
		viscs1b7 viscs1b7_.
		viscs1b8 viscs1b8_.
		viscs1c0 viscs1c0_.
		viscs1c1 viscs1c1_.
		viscs1c2 viscs1c2_.
		viscs1c3 viscs1c3_.
		viscs1c4 viscs1c4_.
		viscs1c5 viscs1c5_.
		viscs1c6 viscs1c6_.
		viscs1c7 viscs1c7_.
		viscs1c8 viscs1c8_.
		visva21 visva21_.
		visva22 visva22_.
		visva23 visva23_.
		viscs2b0 viscs2b0_.
		viscs2b1 viscs2b1_.
		viscs2b2 viscs2b2_.
		viscs2b3 viscs2b3_.
		viscs2b4 viscs2b4_.
		viscs2b5 viscs2b5_.
		viscs2b6 viscs2b6_.
		viscs2b7 viscs2b7_.
		viscs2b8 viscs2b8_.
		viscs2c0 viscs2c0_.
		viscs2c1 viscs2c1_.
		viscs2c2 viscs2c2_.
		viscs2c3 viscs2c3_.
		viscs2c4 viscs2c4_.
		viscs2c5 viscs2c5_.
		viscs2c6 viscs2c6_.
		viscs2c7 viscs2c7_.
		viscs2c8 viscs2c8_.
		visvadon visvadon_.
		visvarnd visvarnd_.
		visvagls visvagls_.
		viscsdon viscsdon_.
		viscsrnd viscsrnd_.
		viscsgls viscsgls_.
		visvalta visvalta_.
		visvaltb visvaltb_.
		visvfdis_vistes visvfdis_vistes_.
		visvfdon_vistes visvfdon_vistes_.
		visvfrnd_vistes visvfrnd_vistes_.
		visst1 $visst1_.
		visst2 $visst2_.
		visst3 $visst3_.
		visst4 $visst4_.
		visst5 $visst5_.
		visst6 $visst6_.
		visst7 $visst7_.
		visst8 $visst8_.
		visst9 $visst9_.
	;
RUN;


        DATA oc_visiontest;
            SET WORK.IMPORT;
        RUN;
        