%let path_to_file = '../data-csv/oc_agingandskininflamm.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE rash6mo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rash12mo_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE rashlocation_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE eczemadx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dryskinhx_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE usemoisturizer_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE sunexp1hr_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sunexp7days_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE skintype_
		6 = 'No skin irritation tenderness or itching in sun-exposed skin no noticeable changes in skin in sun-exposed sites in temperate climates'
		4 = 'Minimal skin irritation tenderness or itching in sun-exposed skin then develops a deep tan or skin becomes darker in the sun-exposed sites (no skin irritation tenderness or itching at 24 hrs and a tan or darker skin at 7 days)'
		5 = 'Occasional skin irritation tenderness or itching in sun-exposed skin then develops darker skin in sun-exposed sites in temperate climates'
		2 = 'Easily burns then develops a light tan (painful burn at 24 hrs and a light tan at 7 days)'
		3 = 'Mild burning skin irritation tenderness or itching in sun-exposed sites ( slightly tender itching at 24 hrs moderate tan or slightly darker at 7 days)'
		1 = 'Always burns never develops a tan (painful burn at 24 hrs and no tan at 7 days)'
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

	INFORMAT crf_version_agiandskiinf $7.;
	FORMAT crf_version_agiandskiinf $7.;

	INFORMAT rash6mo BEST32.;
	FORMAT rash6mo BEST12.;

	INFORMAT rash12mo BEST32.;
	FORMAT rash12mo BEST12.;

	INFORMAT rashlocation BEST32.;
	FORMAT rashlocation BEST12.;

	INFORMAT eczemadx BEST32.;
	FORMAT eczemadx BEST12.;

	INFORMAT dryskinhx BEST32.;
	FORMAT dryskinhx BEST12.;

	INFORMAT usemoisturizer BEST32.;
	FORMAT usemoisturizer BEST12.;

	INFORMAT sunexp1hr BEST32.;
	FORMAT sunexp1hr BEST12.;

	INFORMAT sunexp7days BEST32.;
	FORMAT sunexp7days BEST12.;

	INFORMAT skintype BEST32.;
	FORMAT skintype BEST12.;

	INPUT
		id_addi
		visit
		crf_version_agiandskiinf
		rash6mo
		rash12mo
		rashlocation
		eczemadx
		dryskinhx
		usemoisturizer
		sunexp1hr
		sunexp7days
		skintype
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_agiandskiinf = "CRF Version"
		rash6mo = "Have you had an itchy rash that was coming and going for at least 6 months"
		rash12mo = "Have you had this itchy rash at any time in the past 12 months"
		rashlocation = "Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
		eczemadx = "Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
		dryskinhx = "Do you have a history of generally dry skin"
		usemoisturizer = "Have you regularly used a skin moisturizer emollient over the past year"
		sunexp1hr = "Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
		sunexp7days = "Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
		skintype = "Category that best characterizes your skin"
	;
	FORMAT
		rash6mo rash6mo_.
		rash12mo rash12mo_.
		rashlocation rashlocation_.
		eczemadx eczemadx_.
		dryskinhx dryskinhx_.
		usemoisturizer usemoisturizer_.
		sunexp1hr sunexp1hr_.
		sunexp7days sunexp7days_.
		skintype skintype_.
	;
RUN;


        DATA oc_agingandskininflamm;
            SET WORK.IMPORT;
        RUN;
        