%let path_to_file = '../data-csv/oc_visualacuity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE $visacst1_
		_1 = 'Bottom'
		_0 = 'Left'
		_000 = 'Top'
		_00 = 'Right'
	;

	VALUE $visacst2_
		_1 = 'Left'
		_0 = 'Right'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE $visacst3_
		_1 = 'Bottom'
		_0 = 'Left'
		_000 = 'Top'
		_00 = 'Right'
	;

	VALUE $visacst4_
		_1 = 'Top'
		_0 = 'Left'
		_000 = 'Bottom'
		_00 = 'Right'
	;

	VALUE $visacst5_
		_1 = 'Top'
		_0 = 'Left'
		_000 = 'Bottom'
		_00 = 'Right'
	;

	VALUE $visacst6_
		_1 = 'Left'
		_0 = 'Right'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE $visacst7_
		_1 = 'Right'
		_0 = 'Left'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE $visacst8_
		_1 = 'Left'
		_0 = 'Right'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE $visacst9_
		_1 = 'Right'
		_0 = 'Left'
		_000 = 'Bottom'
		_00 = 'Top'
	;

	VALUE visacst01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacstrnd_
		555 = 'Physical problems'
		999 = 'Technical problems'
		888 = 'Refused*'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
	;

	VALUE visacst02_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacr1_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr2_
		5 = '5'
		0 = '0'
		4 = '4'
		1 = '1'
		3 = '3'
		2 = '2'
	;

	VALUE visacr3_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr4_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr5_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		1 = '1'
		2 = '2'
	;

	VALUE visacr6_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr7_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr8_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr9_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr10_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr11_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacr12_
		0 = '0'
		3 = '3'
		1 = '1'
		4 = '4'
		2 = '2'
		5 = '5'
	;

	VALUE visacr13_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
	;

	VALUE visacr14_
		0 = '0'
		1 = '1'
		3 = '3'
		2 = '2'
		4 = '4'
		5 = '5'
	;

	VALUE visacryn_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacrrnd_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
	;

	VALUE visacl1_
		5 = '5'
		0 = '0'
		4 = '4'
		1 = '1'
		3 = '3'
		2 = '2'
	;

	VALUE visacl2_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		1 = '1'
		2 = '2'
	;

	VALUE visacl3_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		1 = '1'
		2 = '2'
	;

	VALUE visacl4_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl5_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl6_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl7_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl8_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl9_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl10_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl11_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacl12_
		0 = '0'
		4 = '4'
		2 = '2'
		5 = '5'
		3 = '3'
		1 = '1'
	;

	VALUE visacl13_
		0 = '0'
		1 = '1'
		3 = '3'
		2 = '2'
		4 = '4'
		5 = '5'
	;

	VALUE visacl14_
		0 = '0'
		1 = '1'
		4 = '4'
		3 = '3'
		2 = '2'
		5 = '5'
	;

	VALUE visacldy_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacldn_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
	;

	VALUE visacar1_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		1 = '1'
		2 = '2'
	;

	VALUE visacar2_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacar3_
		5 = '5'
		4 = '4'
		3 = '3'
		0 = '0'
		2 = '2'
		1 = '1'
	;

	VALUE visacar4_
		5 = '5'
		4 = '4'
		3 = '3'
		0 = '0'
		2 = '2'
		1 = '1'
	;

	VALUE visacar5_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacar6_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacar7_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacar8_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacardy_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacardn_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		777 = 'Physical and cognitive'
		666 = 'Cognitive problems'
	;

	VALUE visacal1_
		5 = '5'
		0 = '0'
		4 = '4'
		2 = '2'
		3 = '3'
		1 = '1'
	;

	VALUE visacal2_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal3_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal4_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal5_
		5 = '5'
		4 = '4'
		0 = '0'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal6_
		5 = '5'
		0 = '0'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal7_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacal8_
		0 = '0'
		5 = '5'
		4 = '4'
		3 = '3'
		2 = '2'
		1 = '1'
	;

	VALUE visacaldy_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visacaldn_
		999 = 'Technical problems'
		555 = 'Physical problems'
		888 = 'Refused*'
		777 = 'Physical and cognitive'
		666 = 'Cognitive problems'
	;

	VALUE visaccs1_
		6 = '6'
		5 = '5'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
	;

	VALUE visaccs2_
		6 = '6'
		5 = '5'
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
	;

	VALUE visaccs3_
		6 = '6'
		5 = '5'
		3 = '3'
		4 = '4'
		0 = '0'
		1 = '1'
		2 = '2'
	;

	VALUE visaccs4_
		6 = '6'
		5 = '5'
		3 = '3'
		4 = '4'
		0 = '0'
		1 = '1'
		2 = '2'
	;

	VALUE visaccs5_
		6 = '6'
		5 = '5'
		0 = '0'
		3 = '3'
		4 = '4'
		2 = '2'
		1 = '1'
	;

	VALUE visaccs6_
		6 = '6'
		0 = '0'
		5 = '5'
		2 = '2'
		4 = '4'
		3 = '3'
		1 = '1'
	;

	VALUE visaccs7_
		0 = '0'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		1 = '1'
	;

	VALUE visaccs8_
		0 = '0'
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
	;

	VALUE visaccsdy_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visaccsdn_
		999 = 'Technical problems'
		888 = 'Refused*'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
		777 = 'Physical and cognitive'
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

	INFORMAT crf_version_visacu $8.;
	FORMAT crf_version_visacu $8.;

	INFORMAT visacst1 $4.;
	FORMAT visacst1 $4.;

	INFORMAT visacst2 $4.;
	FORMAT visacst2 $4.;

	INFORMAT visacst3 $4.;
	FORMAT visacst3 $4.;

	INFORMAT visacst4 $4.;
	FORMAT visacst4 $4.;

	INFORMAT visacst5 $4.;
	FORMAT visacst5 $4.;

	INFORMAT visacst6 $4.;
	FORMAT visacst6 $4.;

	INFORMAT visacst7 $4.;
	FORMAT visacst7 $4.;

	INFORMAT visacst8 $4.;
	FORMAT visacst8 $4.;

	INFORMAT visacst9 $4.;
	FORMAT visacst9 $4.;

	INFORMAT visacst01 BEST32.;
	FORMAT visacst01 BEST12.;

	INFORMAT visacstrnd BEST32.;
	FORMAT visacstrnd BEST12.;

	INFORMAT visacst02 BEST32.;
	FORMAT visacst02 BEST12.;

	INFORMAT visacr1 BEST32.;
	FORMAT visacr1 BEST12.;

	INFORMAT visacr2 BEST32.;
	FORMAT visacr2 BEST12.;

	INFORMAT visacr3 BEST32.;
	FORMAT visacr3 BEST12.;

	INFORMAT visacr4 BEST32.;
	FORMAT visacr4 BEST12.;

	INFORMAT visacr5 BEST32.;
	FORMAT visacr5 BEST12.;

	INFORMAT visacr6 BEST32.;
	FORMAT visacr6 BEST12.;

	INFORMAT visacr7 BEST32.;
	FORMAT visacr7 BEST12.;

	INFORMAT visacr8 BEST32.;
	FORMAT visacr8 BEST12.;

	INFORMAT visacr9 BEST32.;
	FORMAT visacr9 BEST12.;

	INFORMAT visacr10 BEST32.;
	FORMAT visacr10 BEST12.;

	INFORMAT visacr11 BEST32.;
	FORMAT visacr11 BEST12.;

	INFORMAT visacr12 BEST32.;
	FORMAT visacr12 BEST12.;

	INFORMAT visacr13 BEST32.;
	FORMAT visacr13 BEST12.;

	INFORMAT visacr14 BEST32.;
	FORMAT visacr14 BEST12.;

	INFORMAT visacrt BEST32.;
	FORMAT visacrt BEST12.;

	INFORMAT visacryn BEST32.;
	FORMAT visacryn BEST12.;

	INFORMAT visacrrnd BEST32.;
	FORMAT visacrrnd BEST12.;

	INFORMAT visacl1 BEST32.;
	FORMAT visacl1 BEST12.;

	INFORMAT visacl2 BEST32.;
	FORMAT visacl2 BEST12.;

	INFORMAT visacl3 BEST32.;
	FORMAT visacl3 BEST12.;

	INFORMAT visacl4 BEST32.;
	FORMAT visacl4 BEST12.;

	INFORMAT visacl5 BEST32.;
	FORMAT visacl5 BEST12.;

	INFORMAT visacl6 BEST32.;
	FORMAT visacl6 BEST12.;

	INFORMAT visacl7 BEST32.;
	FORMAT visacl7 BEST12.;

	INFORMAT visacl8 BEST32.;
	FORMAT visacl8 BEST12.;

	INFORMAT visacl9 BEST32.;
	FORMAT visacl9 BEST12.;

	INFORMAT visacl10 BEST32.;
	FORMAT visacl10 BEST12.;

	INFORMAT visacl11 BEST32.;
	FORMAT visacl11 BEST12.;

	INFORMAT visacl12 BEST32.;
	FORMAT visacl12 BEST12.;

	INFORMAT visacl13 BEST32.;
	FORMAT visacl13 BEST12.;

	INFORMAT visacl14 BEST32.;
	FORMAT visacl14 BEST12.;

	INFORMAT visaclt BEST32.;
	FORMAT visaclt BEST12.;

	INFORMAT visacldy BEST32.;
	FORMAT visacldy BEST12.;

	INFORMAT visacldn BEST32.;
	FORMAT visacldn BEST12.;

	INFORMAT visacar1 BEST32.;
	FORMAT visacar1 BEST12.;

	INFORMAT visacar2 BEST32.;
	FORMAT visacar2 BEST12.;

	INFORMAT visacar3 BEST32.;
	FORMAT visacar3 BEST12.;

	INFORMAT visacar4 BEST32.;
	FORMAT visacar4 BEST12.;

	INFORMAT visacar5 BEST32.;
	FORMAT visacar5 BEST12.;

	INFORMAT visacar6 BEST32.;
	FORMAT visacar6 BEST12.;

	INFORMAT visacar7 BEST32.;
	FORMAT visacar7 BEST12.;

	INFORMAT visacar8 BEST32.;
	FORMAT visacar8 BEST12.;

	INFORMAT visacart BEST32.;
	FORMAT visacart BEST12.;

	INFORMAT visacardy BEST32.;
	FORMAT visacardy BEST12.;

	INFORMAT visacardn BEST32.;
	FORMAT visacardn BEST12.;

	INFORMAT visacal1 BEST32.;
	FORMAT visacal1 BEST12.;

	INFORMAT visacal2 BEST32.;
	FORMAT visacal2 BEST12.;

	INFORMAT visacal3 BEST32.;
	FORMAT visacal3 BEST12.;

	INFORMAT visacal4 BEST32.;
	FORMAT visacal4 BEST12.;

	INFORMAT visacal5 BEST32.;
	FORMAT visacal5 BEST12.;

	INFORMAT visacal6 BEST32.;
	FORMAT visacal6 BEST12.;

	INFORMAT visacal7 BEST32.;
	FORMAT visacal7 BEST12.;

	INFORMAT visacal8 BEST32.;
	FORMAT visacal8 BEST12.;

	INFORMAT visacalt BEST32.;
	FORMAT visacalt BEST12.;

	INFORMAT visacaldy BEST32.;
	FORMAT visacaldy BEST12.;

	INFORMAT visacaldn BEST32.;
	FORMAT visacaldn BEST12.;

	INFORMAT visaccs1 BEST32.;
	FORMAT visaccs1 BEST12.;

	INFORMAT visaccs2 BEST32.;
	FORMAT visaccs2 BEST12.;

	INFORMAT visaccs3 BEST32.;
	FORMAT visaccs3 BEST12.;

	INFORMAT visaccs4 BEST32.;
	FORMAT visaccs4 BEST12.;

	INFORMAT visaccs5 BEST32.;
	FORMAT visaccs5 BEST12.;

	INFORMAT visaccs6 BEST32.;
	FORMAT visaccs6 BEST12.;

	INFORMAT visaccs7 BEST32.;
	FORMAT visaccs7 BEST12.;

	INFORMAT visaccs8 BEST32.;
	FORMAT visaccs8 BEST12.;

	INFORMAT visaccst BEST32.;
	FORMAT visaccst BEST12.;

	INFORMAT visaccsdy BEST32.;
	FORMAT visaccsdy BEST12.;

	INFORMAT visaccsdn BEST32.;
	FORMAT visaccsdn BEST12.;

	INFORMAT auto_id_visacu BEST32.;
	FORMAT auto_id_visacu BEST12.;

	INFORMAT testerid_visacu BEST32.;
	FORMAT testerid_visacu BEST12.;

	INPUT
		id_addi
		visit
		crf_version_visacu
		visacst1
		visacst2
		visacst3
		visacst4
		visacst5
		visacst6
		visacst7
		visacst8
		visacst9
		visacst01
		visacstrnd
		visacst02
		visacr1
		visacr2
		visacr3
		visacr4
		visacr5
		visacr6
		visacr7
		visacr8
		visacr9
		visacr10
		visacr11
		visacr12
		visacr13
		visacr14
		visacrt
		visacryn
		visacrrnd
		visacl1
		visacl2
		visacl3
		visacl4
		visacl5
		visacl6
		visacl7
		visacl8
		visacl9
		visacl10
		visacl11
		visacl12
		visacl13
		visacl14
		visaclt
		visacldy
		visacldn
		visacar1
		visacar2
		visacar3
		visacar4
		visacar5
		visacar6
		visacar7
		visacar8
		visacart
		visacardy
		visacardn
		visacal1
		visacal2
		visacal3
		visacal4
		visacal5
		visacal6
		visacal7
		visacal8
		visacalt
		visacaldy
		visacaldn
		visaccs1
		visaccs2
		visaccs3
		visaccs4
		visaccs5
		visaccs6
		visaccs7
		visaccs8
		visaccst
		visaccsdy
		visaccsdn
		auto_id_visacu
		testerid_visacu
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_visacu = "CRF Version"
		visacst1 = "Stereopsis Line 1"
		visacst2 = "Stereopsis Line 2"
		visacst3 = "Stereopsis Line 3"
		visacst4 = "Stereopsis Line 4"
		visacst5 = "Stereopsis Line 5"
		visacst6 = "Stereopsis Line 6"
		visacst7 = "Stereopsis Line 7"
		visacst8 = "Stereopsis Line 8"
		visacst9 = "Stereopsis Line 9"
		visacst01 = "Stereopsis test completed"
		visacstrnd = "Stereopsis reason not done"
		visacst02 = "Did participant wear glasses"
		visacr1 = "ETDRS Right eye Row 1"
		visacr2 = "ETDRS Right eye Row 2"
		visacr3 = "ETDRS Right eye Row 3"
		visacr4 = "ETDRS Right eye Row 4"
		visacr5 = "ETDRS Right eye Row 5"
		visacr6 = "ETDRS Right eye Row 6"
		visacr7 = "ETDRS Right eye Row 7"
		visacr8 = "ETDRS Right eye Row 8"
		visacr9 = "ETDRS Right eye Row 9"
		visacr10 = "ETDRS Right eye Row 10"
		visacr11 = "ETDRS Right eye Row 11"
		visacr12 = "ETDRS Right eye Row 12"
		visacr13 = "ETDRS Right eye Row 13"
		visacr14 = "ETDRS Right eye Row 14"
		visacrt = "Chart Total Right eye"
		visacryn = "Was distance ETDRS visual acuity checked in the right eye"
		visacrrnd = "ETDRS right eye reason not done"
		visacl1 = "ETDRS Left eye Row 1"
		visacl2 = "ETDRS Left eye Row 2"
		visacl3 = "ETDRS Left eye Row 3"
		visacl4 = "ETDRS Left eye Row 4"
		visacl5 = "ETDRS Left eye Row 5"
		visacl6 = "ETDRS Left eye Row 6"
		visacl7 = "ETDRS Left eye Row 7"
		visacl8 = "ETDRS Left eye Row 8"
		visacl9 = "ETDRS Left eye Row 9"
		visacl10 = "ETDRS Left eye Row 10"
		visacl11 = "ETDRS Left eye Row 11"
		visacl12 = "ETDRS Left eye Row 12"
		visacl13 = "ETDRS Left eye Row 13"
		visacl14 = "ETDRS Left eye Row 14"
		visaclt = "ETDRS Chart Total Left eye"
		visacldy = "Was distance ETDRS visual acuity checked in the left eye"
		visacldn = "ETDRS left eye reason not done"
		visacar1 = "AR Right eye Row 1"
		visacar2 = "AR Right eye Row 2"
		visacar3 = "AR Right eye Row 3"
		visacar4 = "AR Right eye Row 4"
		visacar5 = "AR Right eye Row 5"
		visacar6 = "AR Right eye Row 6"
		visacar7 = "AR Right eye Row 7"
		visacar8 = "AR Right eye Row 8"
		visacart = "AR Chart Total Right eye"
		visacardy = "Was distance AR visual acuity checked in the right eye"
		visacardn = "AR right eye reason not done"
		visacal1 = "AR Left eye Row 1"
		visacal2 = "AR Left eye Row 2"
		visacal3 = "AR Left eye Row 3"
		visacal4 = "AR Left eye Row 4"
		visacal5 = "AR Left eye Row 5"
		visacal6 = "AR Left eye Row 6"
		visacal7 = "AR Left eye Row 7"
		visacal8 = "AR Left eye Row 8"
		visacalt = "AR Chart Total Left eye"
		visacaldy = "Was distance AR visual acuity checked in the left eye"
		visacaldn = "AR left eye reason not done"
		visaccs1 = "CS Right eye Row 1"
		visaccs2 = "CS Right eye Row 2"
		visaccs3 = "CS Right eye Row 3"
		visaccs4 = "CS Right eye Row 4"
		visaccs5 = "CS Right eye Row 5"
		visaccs6 = "CS Right eye Row 6"
		visaccs7 = "CS Right eye Row 7"
		visaccs8 = "CS Right eye Row 8"
		visaccst = "CS Chart Total"
		visaccsdy = "Was contrast sensitivity checked"
		visaccsdn = "Contrast sensitivity reason not done"
		auto_id_visacu = "Unique Teleform Number"
		testerid_visacu = "Tester ID"
	;
	FORMAT
		visacst01 visacst01_.
		visacstrnd visacstrnd_.
		visacst02 visacst02_.
		visacr1 visacr1_.
		visacr2 visacr2_.
		visacr3 visacr3_.
		visacr4 visacr4_.
		visacr5 visacr5_.
		visacr6 visacr6_.
		visacr7 visacr7_.
		visacr8 visacr8_.
		visacr9 visacr9_.
		visacr10 visacr10_.
		visacr11 visacr11_.
		visacr12 visacr12_.
		visacr13 visacr13_.
		visacr14 visacr14_.
		visacryn visacryn_.
		visacrrnd visacrrnd_.
		visacl1 visacl1_.
		visacl2 visacl2_.
		visacl3 visacl3_.
		visacl4 visacl4_.
		visacl5 visacl5_.
		visacl6 visacl6_.
		visacl7 visacl7_.
		visacl8 visacl8_.
		visacl9 visacl9_.
		visacl10 visacl10_.
		visacl11 visacl11_.
		visacl12 visacl12_.
		visacl13 visacl13_.
		visacl14 visacl14_.
		visacldy visacldy_.
		visacldn visacldn_.
		visacar1 visacar1_.
		visacar2 visacar2_.
		visacar3 visacar3_.
		visacar4 visacar4_.
		visacar5 visacar5_.
		visacar6 visacar6_.
		visacar7 visacar7_.
		visacar8 visacar8_.
		visacardy visacardy_.
		visacardn visacardn_.
		visacal1 visacal1_.
		visacal2 visacal2_.
		visacal3 visacal3_.
		visacal4 visacal4_.
		visacal5 visacal5_.
		visacal6 visacal6_.
		visacal7 visacal7_.
		visacal8 visacal8_.
		visacaldy visacaldy_.
		visacaldn visacaldn_.
		visaccs1 visaccs1_.
		visaccs2 visaccs2_.
		visaccs3 visaccs3_.
		visaccs4 visaccs4_.
		visaccs5 visaccs5_.
		visaccs6 visaccs6_.
		visaccs7 visaccs7_.
		visaccs8 visaccs8_.
		visaccsdy visaccsdy_.
		visaccsdn visaccsdn_.
		visacst1 $visacst1_.
		visacst2 $visacst2_.
		visacst3 $visacst3_.
		visacst4 $visacst4_.
		visacst5 $visacst5_.
		visacst6 $visacst6_.
		visacst7 $visacst7_.
		visacst8 $visacst8_.
		visacst9 $visacst9_.
	;
RUN;


        DATA oc_visualacuity;
            SET WORK.IMPORT;
        RUN;
        