%let path_to_file = '../data-csv/oc_radiationexposurechklist.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE radex2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE radsc1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE radsc1a_
		0 = 'Negative'
		1 = 'Positive'
	;

	VALUE radsc2_
		0 = 'No'
		1 = 'Yes'
		888 = "Don't know"
		777 = 'Refused'
	;

	VALUE radsc2a_
		2 = 'Both'
		0 = 'Right'
		1 = 'Left'
	;

	VALUE rad01_
		1 = 'Both'
		3 = 'Right only'
		2 = 'Left only'
	;

	VALUE rad01a_
		999 = 'Technical problems'
		888 = 'Refused'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
	;

	VALUE rad02_
		1 = 'Both'
		3 = 'Right only'
		2 = 'Left only'
	;

	VALUE rad02a_
		999 = 'Technical problems'
		1 = 'Joint replacement'
		888 = 'Refused'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
	;

	VALUE rad03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rad04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rad05_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE rad06_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rad07_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rad08_
		1 = 'Both'
		3 = 'Right only'
		2 = 'Left only'
	;

	VALUE rad08a_
		999 = 'Technical problems'
		0 = 'Answered NO to any of the above (3-7)'
		888 = 'Refused'
		555 = 'Physical problems'
		666 = 'Cognitive problems'
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

	INFORMAT crf_version_radexpche $8.;
	FORMAT crf_version_radexpche $8.;

	INFORMAT radscid BEST32.;
	FORMAT radscid BEST12.;

	INFORMAT radex1a $1.;
	FORMAT radex1a $1.;

	INFORMAT radex1b $1.;
	FORMAT radex1b $1.;

	INFORMAT radex1e $1.;
	FORMAT radex1e $1.;

	INFORMAT radex1i BEST32.;
	FORMAT radex1i BEST12.;

	INFORMAT radex2 BEST32.;
	FORMAT radex2 BEST12.;

	INFORMAT radex21 $1.;
	FORMAT radex21 $1.;

	INFORMAT radex2a BEST32.;
	FORMAT radex2a BEST12.;

	INFORMAT radex22 $1.;
	FORMAT radex22 $1.;

	INFORMAT radex2b BEST32.;
	FORMAT radex2b BEST12.;

	INFORMAT radex23 $1.;
	FORMAT radex23 $1.;

	INFORMAT radex2c BEST32.;
	FORMAT radex2c BEST12.;

	INFORMAT radex24 $1.;
	FORMAT radex24 $1.;

	INFORMAT radex2d BEST32.;
	FORMAT radex2d BEST12.;

	INFORMAT radex2e BEST32.;
	FORMAT radex2e BEST12.;

	INFORMAT radex3 BEST32.;
	FORMAT radex3 BEST12.;

	INFORMAT radsc1 BEST32.;
	FORMAT radsc1 BEST12.;

	INFORMAT radsc1a BEST32.;
	FORMAT radsc1a BEST12.;

	INFORMAT radex_pib $1.;
	FORMAT radex_pib $1.;

	INFORMAT radex_tau $1.;
	FORMAT radex_tau $1.;

	INFORMAT radex1f $1.;
	FORMAT radex1f $1.;

	INFORMAT radex1g $1.;
	FORMAT radex1g $1.;

	INFORMAT auto_id_radexpche BEST32.;
	FORMAT auto_id_radexpche BEST12.;

	INFORMAT radex1c $1.;
	FORMAT radex1c $1.;

	INFORMAT radex1d $1.;
	FORMAT radex1d $1.;

	INFORMAT radex1h $1.;
	FORMAT radex1h $1.;

	INFORMAT radsc2 BEST32.;
	FORMAT radsc2 BEST12.;

	INFORMAT radsc2a BEST32.;
	FORMAT radsc2a BEST12.;

	INFORMAT radtecid BEST32.;
	FORMAT radtecid BEST12.;

	INFORMAT rad01 BEST32.;
	FORMAT rad01 BEST12.;

	INFORMAT rad01a BEST32.;
	FORMAT rad01a BEST12.;

	INFORMAT rad02 BEST32.;
	FORMAT rad02 BEST12.;

	INFORMAT rad02a BEST32.;
	FORMAT rad02a BEST12.;

	INFORMAT rad03 BEST32.;
	FORMAT rad03 BEST12.;

	INFORMAT rad04 BEST32.;
	FORMAT rad04 BEST12.;

	INFORMAT rad05 BEST32.;
	FORMAT rad05 BEST12.;

	INFORMAT rad06 BEST32.;
	FORMAT rad06 BEST12.;

	INFORMAT rad07 BEST32.;
	FORMAT rad07 BEST12.;

	INFORMAT rad08 BEST32.;
	FORMAT rad08 BEST12.;

	INFORMAT rad08a BEST32.;
	FORMAT rad08a BEST12.;

	INFORMAT radex1a_blsa $4.;
	FORMAT radex1a_blsa $4.;

	INFORMAT radex1b_blsa_ct $7.;
	FORMAT radex1b_blsa_ct $7.;

	INFORMAT radex1c_blsa_knee_xray $1.;
	FORMAT radex1c_blsa_knee_xray $1.;

	INFORMAT radex1d_blsa_hand_xray $1.;
	FORMAT radex1d_blsa_hand_xray $1.;

	INFORMAT radex1e_blsa_dexa $9.;
	FORMAT radex1e_blsa_dexa $9.;

	INFORMAT radex1f_early_markers $13.;
	FORMAT radex1f_early_markers $13.;

	INFORMAT radex1g_validate $1.;
	FORMAT radex1g_validate $1.;

	INFORMAT radex1h_jhh80062503 $1.;
	FORMAT radex1h_jhh80062503 $1.;

	INFORMAT radex21_rad_rx_simple $13.;
	FORMAT radex21_rad_rx_simple $13.;

	INFORMAT radex22_rad_rx_contrast $15.;
	FORMAT radex22_rad_rx_contrast $15.;

	INFORMAT radex23_rad_ct $6.;
	FORMAT radex23_rad_ct $6.;

	INFORMAT radex24_rad_mamography $14.;
	FORMAT radex24_rad_mamography $14.;

	INFORMAT testerid_radexpche BEST32.;
	FORMAT testerid_radexpche BEST12.;

	INFORMAT radex_pib_pib $3.;
	FORMAT radex_pib_pib $3.;

	INFORMAT radex_tau_tau $3.;
	FORMAT radex_tau_tau $3.;

	INPUT
		id_addi
		visit
		crf_version_radexpche
		radscid
		radex1a
		radex1b
		radex1e
		radex1i
		radex2
		radex21
		radex2a
		radex22
		radex2b
		radex23
		radex2c
		radex24
		radex2d
		radex2e
		radex3
		radsc1
		radsc1a
		radex_pib
		radex_tau
		radex1f
		radex1g
		auto_id_radexpche
		radex1c
		radex1d
		radex1h
		radsc2
		radsc2a
		radtecid
		rad01
		rad01a
		rad02
		rad02a
		rad03
		rad04
		rad05
		rad06
		rad07
		rad08
		rad08a
		radex1a_blsa
		radex1b_blsa_ct
		radex1c_blsa_knee_xray
		radex1d_blsa_hand_xray
		radex1e_blsa_dexa
		radex1f_early_markers
		radex1g_validate
		radex1h_jhh80062503
		radex21_rad_rx_simple
		radex22_rad_rx_contrast
		radex23_rad_ct
		radex24_rad_mamography
		testerid_radexpche
		radex_pib_pib
		radex_tau_tau
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_radexpche = "CRF Version"
		radscid = "Screener ID"
		radex1a = "BLSA"
		radex1b = "CT"
		radex1e = "DEXA"
		radex1i = "NIA Subtotal"
		radex2 = "radiation exposure past 12 months"
		radex21 = "Simple xray or PET"
		radex2a = "Simple x-ray or PET total"
		radex22 = "X-ray with contrast"
		radex2b = "X-ray with contrast total"
		radex23 = "CT or MUGA"
		radex2c = "CT or MUGA total"
		radex24 = "Mamography"
		radex2d = "Mamography total"
		radex2e = "Other studies subtotal"
		radex3 = "Total"
		radsc1 = "Is participant female not hysterectomized and under 56y"
		radsc1a = "If yes urine pregnancy results"
		radex_pib = "PiB"
		radex_tau = "Tau"
		radex1f = "Neuroimaging"
		radex1g = "VALIDATE"
		auto_id_radexpche = "Unique Teleform Number"
		radex1c = "Knee x-ray"
		radex1d = "Hand x-ray"
		radex1h = "MUGA"
		radsc2 = "Knee replacement surgery"
		radsc2a = "Knee replacement which knee"
		radtecid = "Rad Technician ID"
		rad01 = "Hand x-ray done"
		rad01a = "Hand x-ray reason not done"
		rad02 = "Knee x-ray done"
		rad02a = "Knee x-ray RND"
		rad03 = "Did hand xrays receive KL grades 0 in both sides"
		rad04 = "Did knee xrays receive KL grades 0 in both sides"
		rad05 = "Is participants age 60 or older"
		rad06 = "If answered NO to hip replacement surgery"
		rad07 = "If answered NO to back surgery or hardware"
		rad08 = "Were sunrise knee RX done"
		rad08a = "Sunrise knee RX reason not done"
		radex1a_blsa = "BLSA : BLSA 0.52 REM (Please specify) (Checkbox Indicator)"
		radex1b_blsa_ct = "CT : CT 0.5155080 REM (Checkbox Indicator)"
		radex1c_blsa_knee_xray = "Knee x-ray : Knee x-ray 0.0002580 REM (Checkbox Indicator)"
		radex1d_blsa_hand_xray = "Hand x-ray : Hand x-ray 0.0000070 REM (Checkbox Indicator)"
		radex1e_blsa_dexa = "DEXA : DEXA 0.0000012 REM (Checkbox Indicator)"
		radex1f_early_markers = "Neuroimaging : Neuroimaging 0.480 REM (Checkbox Indicator)"
		radex1g_validate = "VALIDATE : Validate 0.155 REM (Checkbox Indicator)"
		radex1h_jhh80062503 = "MUGA : MUGA 1.550 REM (Checkbox Indicator)"
		radex21_rad_rx_simple = "Simple xray or PET : Any simple Xray or PET (Checkbox Indicator)"
		radex22_rad_rx_contrast = "X-ray with contrast : Any Xray with contrast (Checkbox Indicator)"
		radex23_rad_ct = "CT or MUGA : Any CT or MUGA (Checkbox Indicator)"
		radex24_rad_mamography = "Mamography : Mamography (Checkbox Indicator)"
		testerid_radexpche = "Tester ID"
		radex_pib_pib = "PiB : PiB 0.303 (Checkbox Indicator)"
		radex_tau_tau = "Tau : Tau 1.0 REM (Checkbox Indicator)"
	;
	FORMAT
		radex2 radex2_.
		radsc1 radsc1_.
		radsc1a radsc1a_.
		radsc2 radsc2_.
		radsc2a radsc2a_.
		rad01 rad01_.
		rad01a rad01a_.
		rad02 rad02_.
		rad02a rad02a_.
		rad03 rad03_.
		rad04 rad04_.
		rad05 rad05_.
		rad06 rad06_.
		rad07 rad07_.
		rad08 rad08_.
		rad08a rad08a_.
	;
RUN;


        DATA oc_radiationexposurechklist;
            SET WORK.IMPORT;
        RUN;
        