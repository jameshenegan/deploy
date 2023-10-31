%let path_to_file = '../data-csv/oc_samples.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sam03_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sam03a_
		5 = '5-Unable (Physical or Mental)'
		3 = '3-No Time'
		4 = '4-Refused'
		9 = '9-Not Scheduled/Not Applicable'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
	;

	VALUE sam03d_
		1 = 'Am'
		2 = 'Pm'
	;

	VALUE sam04_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sam04a_
		5 = '5-Unable (Physical or Mental)'
		8 = '8-Not Eligible'
		4 = '4-Refused'
		9 = '9-Not Scheduled/Not Applicable'
		3 = '3-No Time'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
	;

	VALUE sam04f_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sam02_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sam02a_
		6 = '6-Equipment problems'
		9 = '9-Not Scheduled/Not Applicable'
		7 = '7-No Tester'
		4 = '4-Refused'
		3 = '3-No Time'
		5 = '5-Unable (Physical or Mental)'
		8 = '8-Not Eligible'
	;

	VALUE sam01c_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sam01d_
		5 = '5-Unable (Physical or Mental)'
		4 = '4-Refused'
		9 = '9-Not Scheduled/Not Applicable'
		3 = '3-No Time'
		6 = '6-Equipment problems'
		7 = '7-No Tester'
		8 = '8-Not Eligible'
	;

	VALUE sam01r_
		5 = '5'
		3 = '3'
		4 = '4'
		2 = '2'
		1 = '1'
	;

	VALUE sam01a_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sam01b_
		5 = '5-Unable (Physical or Mental)'
		4 = '4-Refused'
		3 = '3-No Time'
		9 = '9-Not Scheduled/Not Applicable'
		7 = '7-No Tester'
		6 = '6-Equipment problems'
		8 = '8-Not Eligible'
	;

	VALUE sam01l_
		5 = '5'
		3 = '3'
		4 = '4'
		2 = '2'
		1 = '1'
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

	INFORMAT crf_version_sam $8.;
	FORMAT crf_version_sam $8.;

	INFORMAT sam3tid BEST32.;
	FORMAT sam3tid BEST12.;

	INFORMAT sam03 BEST32.;
	FORMAT sam03 BEST12.;

	INFORMAT sam03a BEST32.;
	FORMAT sam03a BEST12.;

	INFORMAT sam03c $6.;
	FORMAT sam03c $6.;

	INFORMAT sam03d BEST32.;
	FORMAT sam03d BEST12.;

	INFORMAT sam4tid BEST32.;
	FORMAT sam4tid BEST12.;

	INFORMAT sam04 BEST32.;
	FORMAT sam04 BEST12.;

	INFORMAT sam04a BEST32.;
	FORMAT sam04a BEST12.;

	INFORMAT sam04c $5.;
	FORMAT sam04c $5.;

	INFORMAT sam04d $1.;
	FORMAT sam04d $1.;

	INFORMAT sam04e $9.;
	FORMAT sam04e $9.;

	INFORMAT sam04f BEST32.;
	FORMAT sam04f BEST12.;

	INFORMAT sam04g $4.;
	FORMAT sam04g $4.;

	INFORMAT sam04h $1.;
	FORMAT sam04h $1.;

	INFORMAT sam2tid BEST32.;
	FORMAT sam2tid BEST12.;

	INFORMAT sam02 BEST32.;
	FORMAT sam02 BEST12.;

	INFORMAT sam02a BEST32.;
	FORMAT sam02a BEST12.;

	INFORMAT sam1tid BEST32.;
	FORMAT sam1tid BEST12.;

	INFORMAT sam01c BEST32.;
	FORMAT sam01c BEST12.;

	INFORMAT sam01d BEST32.;
	FORMAT sam01d BEST12.;

	INFORMAT sam01r BEST32.;
	FORMAT sam01r BEST12.;

	INFORMAT sam01a BEST32.;
	FORMAT sam01a BEST12.;

	INFORMAT sam01b BEST32.;
	FORMAT sam01b BEST12.;

	INFORMAT sam01l BEST32.;
	FORMAT sam01l BEST12.;

	INFORMAT auto_id_sam BEST32.;
	FORMAT auto_id_sam BEST12.;

	INFORMAT sam04d_2 BEST32.;
	FORMAT sam04d_2 BEST12.;

	INFORMAT sam04h_2 BEST32.;
	FORMAT sam04h_2 BEST12.;

	INPUT
		id_addi
		visit
		crf_version_sam
		sam3tid
		sam03
		sam03a
		sam03c
		sam03d
		sam4tid
		sam04
		sam04a
		sam04c
		sam04d
		sam04e
		sam04f
		sam04g
		sam04h
		sam2tid
		sam02
		sam02a
		sam1tid
		sam01c
		sam01d
		sam01r
		sam01a
		sam01b
		sam01l
		auto_id_sam
		sam04d_2
		sam04h_2
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_sam = "CRF Version"
		sam3tid = "Stool Sample Tester ID"
		sam03 = "Was Stool Sample collected"
		sam03a = "Stool Sample reason not cone"
		sam03c = "Time collected"
		sam03d = "Time ampm"
		sam4tid = "Stress Blood Sample Tester ID"
		sam04 = "Was stress blood sample collected"
		sam04a = "Blood Sample reason not cone"
		sam04c = "Time collected"
		sam04d = "Time pm"
		sam04e = "What time did you have dinner"
		sam04f = "Anything to eat or drink after dinner"
		sam04g = "Time you last consumed anything"
		sam04h = "Time pm"
		sam2tid = "Saliva Tester ID"
		sam02 = "Was Saliva collected"
		sam02a = "Saliva reason not cone"
		sam1tid = "Nail Clippings Tester ID"
		sam01c = "Were nail clippings collected right"
		sam01d = "Nail Clippings reason not done right"
		sam01r = "Nail clippings right"
		sam01a = "Were nail clippings collected left"
		sam01b = "Nail Clippings reason not done left"
		sam01l = "Nail clippings left"
		auto_id_sam = "Unique Teleform Number"
		sam04d_2 = "Time pm : Pm (Checkbox Indicator)"
		sam04h_2 = "Time pm : Pm (Checkbox Indicator)"
	;
	FORMAT
		sam03 sam03_.
		sam03a sam03a_.
		sam03d sam03d_.
		sam04 sam04_.
		sam04a sam04a_.
		sam04f sam04f_.
		sam02 sam02_.
		sam02a sam02a_.
		sam01c sam01c_.
		sam01d sam01d_.
		sam01r sam01r_.
		sam01a sam01a_.
		sam01b sam01b_.
		sam01l sam01l_.
	;
RUN;


        DATA oc_samples;
            SET WORK.IMPORT;
        RUN;
        