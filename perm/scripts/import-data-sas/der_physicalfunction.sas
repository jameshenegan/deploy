%let path_to_file = '../data-csv/der_physicalfunction.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE walkquartermile_
		6 = 'very easy'
		5 = 'somewhat easy'
		0 = 'unable to do'
		4 = 'not so easy'
		3 = 'a little difficulty'
		2 = 'some difficulty'
		1 = 'a lot of difficulty'
	;

	VALUE walkonemile_
		3 = 'very easy'
		0 = 'difficult'
		2 = 'somewhat easy'
		1 = 'not so easy'
	;

	VALUE stairs10_
		6 = 'very easy'
		5 = 'somewhat easy'
		4 = 'not so easy'
		2 = 'some difficulty'
		0 = 'unable to do'
		3 = 'a little difficulty'
		1 = 'a lot of difficulty'
	;

	VALUE stairs20_
		3 = 'very easy'
		2 = 'somewhat easy'
		0 = 'difficult'
		1 = 'not so easy'
	;

	VALUE liftcarry10_
		6 = 'very easy'
		5 = 'somewhat easy'
		3 = 'a little difficulty'
		2 = 'some difficulty'
		0 = 'unable to do'
		4 = 'not so easy'
		1 = 'a lot of difficulty'
	;

	VALUE liftcarry20_
		3 = 'very easy'
		2 = 'somewhat easy'
		0 = 'difficult'
		1 = 'not so easy'
	;

	VALUE did400m_
		1 = 'complete'
		0 = 'started but stopped'
		3 = 'stopped after 2:30 minute walk'
		2 = 'excluded including incomplete 2:30 minute walk'
		4 = 'not done for technical reasons/refused'
	;

	VALUE c400aid_
		0 = '2:30 minute walk without aid'
		1 = 'Aid used for 2:30 minute walk'
	;

	VALUE uw150_
		1 = 'completed'
		3 = 'not done for technical reason/refused'
		0 = 'started but stopped'
		2 = 'excluded'
	;

	VALUE uw150aid_
		0 = 'Usual-paced walk without aid'
		1 = 'Aid used for usual-paced walk'
	;

	VALUE adl_trans_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE adlh_trans_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adl_bathe_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		4 = 'unable to do'
		3 = 'a lot'
	;

	VALUE adlh_bathe_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adl_dress_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE adlh_dress_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adl_eat_
		0 = 'none'
		2 = 'some'
		1 = 'a little'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE adlh_eat_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adl_toilet_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		4 = 'unable to do'
		3 = 'a lot'
	;

	VALUE adlh_toilet_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE adl_walk_
		0 = 'none'
		4 = 'unable to do'
		2 = 'some'
		1 = 'a little'
		3 = 'a lot'
	;

	VALUE adlh_walk_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_lightwork_
		0 = 'none'
		2 = 'some'
		1 = 'a little'
		4 = 'unable to do'
		3 = 'a lot'
	;

	VALUE iadlh_lightwork_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_heavywork_
		0 = 'none'
		2 = 'some'
		1 = 'a little'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE iadlh_heavywork_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_meal_
		0 = 'none'
		4 = 'unable to do'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
	;

	VALUE iadlh_meal_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_shop_
		0 = 'none'
		4 = 'unable to do'
		2 = 'some'
		1 = 'a little'
		3 = 'a lot'
	;

	VALUE iadlh_shop_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE iadl_phone_
		0 = 'none'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
		4 = 'unable to do'
	;

	VALUE iadlh_phone_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_meds_
		0 = 'none'
		4 = 'unable to do'
		1 = 'a little'
		3 = 'a lot'
		2 = 'some'
	;

	VALUE iadlh_meds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_money_
		0 = 'none'
		4 = 'unable to do'
		1 = 'a little'
		2 = 'some'
		3 = 'a lot'
	;

	VALUE iadlh_money_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE iadl_drive_
		0 = 'none'
		1 = 'a little'
		4 = 'unable to do'
		2 = 'some'
		3 = 'a lot'
	;

	VALUE iadlh_drive_
		4 = 'Health'
		3 = 'Vision'
		2 = 'No car'
		1 = 'Never drove'
		5 = 'Lost license'
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

	INFORMAT walkquartermile BEST32.;
	FORMAT walkquartermile BEST12.;

	INFORMAT walkonemile BEST32.;
	FORMAT walkonemile BEST12.;

	INFORMAT wkindex BEST32.;
	FORMAT wkindex BEST12.;

	INFORMAT stairs10 BEST32.;
	FORMAT stairs10 BEST12.;

	INFORMAT stairs20 BEST32.;
	FORMAT stairs20 BEST12.;

	INFORMAT stindex BEST32.;
	FORMAT stindex BEST12.;

	INFORMAT liftcarry10 BEST32.;
	FORMAT liftcarry10 BEST12.;

	INFORMAT liftcarry20 BEST32.;
	FORMAT liftcarry20 BEST12.;

	INFORMAT lcindex BEST32.;
	FORMAT lcindex BEST12.;

	INFORMAT handgrip BEST32.;
	FORMAT handgrip BEST12.;

	INFORMAT did400m BEST32.;
	FORMAT did400m BEST12.;

	INFORMAT c400secs BEST32.;
	FORMAT c400secs BEST12.;

	INFORMAT c400pace BEST32.;
	FORMAT c400pace BEST12.;

	INFORMAT c400aid BEST32.;
	FORMAT c400aid BEST12.;

	INFORMAT uw150 BEST32.;
	FORMAT uw150 BEST12.;

	INFORMAT uw150meters BEST32.;
	FORMAT uw150meters BEST12.;

	INFORMAT uw150pace BEST32.;
	FORMAT uw150pace BEST12.;

	INFORMAT uw150aid BEST32.;
	FORMAT uw150aid BEST12.;

	INFORMAT adl_trans BEST32.;
	FORMAT adl_trans BEST12.;

	INFORMAT adlh_trans BEST32.;
	FORMAT adlh_trans BEST12.;

	INFORMAT adl_bathe BEST32.;
	FORMAT adl_bathe BEST12.;

	INFORMAT adlh_bathe BEST32.;
	FORMAT adlh_bathe BEST12.;

	INFORMAT adl_dress BEST32.;
	FORMAT adl_dress BEST12.;

	INFORMAT adlh_dress BEST32.;
	FORMAT adlh_dress BEST12.;

	INFORMAT adl_eat BEST32.;
	FORMAT adl_eat BEST12.;

	INFORMAT adlh_eat BEST32.;
	FORMAT adlh_eat BEST12.;

	INFORMAT adl_toilet BEST32.;
	FORMAT adl_toilet BEST12.;

	INFORMAT adlh_toilet BEST32.;
	FORMAT adlh_toilet BEST12.;

	INFORMAT adl_walk BEST32.;
	FORMAT adl_walk BEST12.;

	INFORMAT adlh_walk BEST32.;
	FORMAT adlh_walk BEST12.;

	INFORMAT adl_total BEST32.;
	FORMAT adl_total BEST12.;

	INFORMAT adl_nmiss BEST32.;
	FORMAT adl_nmiss BEST12.;

	INFORMAT adl_number BEST32.;
	FORMAT adl_number BEST12.;

	INFORMAT iadl_lightwork BEST32.;
	FORMAT iadl_lightwork BEST12.;

	INFORMAT iadlh_lightwork BEST32.;
	FORMAT iadlh_lightwork BEST12.;

	INFORMAT iadl_heavywork BEST32.;
	FORMAT iadl_heavywork BEST12.;

	INFORMAT iadlh_heavywork BEST32.;
	FORMAT iadlh_heavywork BEST12.;

	INFORMAT iadl_meal BEST32.;
	FORMAT iadl_meal BEST12.;

	INFORMAT iadlh_meal BEST32.;
	FORMAT iadlh_meal BEST12.;

	INFORMAT iadl_shop BEST32.;
	FORMAT iadl_shop BEST12.;

	INFORMAT iadlh_shop BEST32.;
	FORMAT iadlh_shop BEST12.;

	INFORMAT iadl_phone BEST32.;
	FORMAT iadl_phone BEST12.;

	INFORMAT iadlh_phone BEST32.;
	FORMAT iadlh_phone BEST12.;

	INFORMAT iadl_meds BEST32.;
	FORMAT iadl_meds BEST12.;

	INFORMAT iadlh_meds BEST32.;
	FORMAT iadlh_meds BEST12.;

	INFORMAT iadl_money BEST32.;
	FORMAT iadl_money BEST12.;

	INFORMAT iadlh_money BEST32.;
	FORMAT iadlh_money BEST12.;

	INFORMAT iadl_drive BEST32.;
	FORMAT iadl_drive BEST12.;

	INFORMAT iadlh_drive BEST32.;
	FORMAT iadlh_drive BEST12.;

	INPUT
		id_addi
		visit
		walkquartermile
		walkonemile
		wkindex
		stairs10
		stairs20
		stindex
		liftcarry10
		liftcarry20
		lcindex
		handgrip
		did400m
		c400secs
		c400pace
		c400aid
		uw150
		uw150meters
		uw150pace
		uw150aid
		adl_trans
		adlh_trans
		adl_bathe
		adlh_bathe
		adl_dress
		adlh_dress
		adl_eat
		adlh_eat
		adl_toilet
		adlh_toilet
		adl_walk
		adlh_walk
		adl_total
		adl_nmiss
		adl_number
		iadl_lightwork
		iadlh_lightwork
		iadl_heavywork
		iadlh_heavywork
		iadl_meal
		iadlh_meal
		iadl_shop
		iadlh_shop
		iadl_phone
		iadlh_phone
		iadl_meds
		iadlh_meds
		iadl_money
		iadlh_money
		iadl_drive
		iadlh_drive
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		walkquartermile = "Difficulty/ease walking 1/4 mile"
		walkonemile = "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
		wkindex = "Walking ability summary score"
		stairs10 = "Difficulty/ease walking up 10 steps"
		stairs20 = "Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
		stindex = "Climbing stairs ability summary score"
		liftcarry10 = "Difficulty/ease lifting/carrying 10 lbs"
		liftcarry20 = "Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
		lcindex = "Lifting/carrying ability summary score"
		handgrip = "Maximum hand grip (kg)"
		did400m = "400 meter walk - completion flag"
		c400secs = "400 meter walk - time (seconds)"
		c400pace = "400 meter walk - pace (m/s)"
		c400aid = "400 meter walk - walking aid use"
		uw150 = "Usual pace walk - completion flag"
		uw150meters = "Usual pace walk - distance (meters)"
		uw150pace = "Usual pace walk - pace (m/s)"
		uw150aid = "Usual pace walk - walking aid use"
		adl_trans = "ADL - any difficulty getting in and out of bed or chair"
		adlh_trans = "ADL - need special equipment getting in and out of bed or chair"
		adl_bathe = "ADL - any difficulty bathing or showering"
		adlh_bathe = "ADL - need special equipment bathing or showering"
		adl_dress = "ADL - any difficulty dressing"
		adlh_dress = "ADL - need special equipment dressing"
		adl_eat = "ADL - any difficulty eating"
		adlh_eat = "ADL - need special equipment eating"
		adl_toilet = "ADL - any difficulty using the toilet"
		adlh_toilet = "ADL - need special equipment using the toilet"
		adl_walk = "ADL - any difficulty walking across a small room"
		adlh_walk = "ADL - need special equipment walking across a small room"
		adl_total = "ADL - total score"
		adl_nmiss = "ADL - number missing"
		adl_number = "ADL - number with any difficulty (if all non-missing)"
		iadl_lightwork = "IADL - any difficulty doing light housework"
		iadlh_lightwork = "IADL - do not do light housework for health-related reasons"
		iadl_heavywork = "IADL - any difficulty doing heavy housework"
		iadlh_heavywork = "IADL - do not do heavy housework for health-related reasons"
		iadl_meal = "IADL - any difficulty preparing own meals"
		iadlh_meal = "IADL - do not prepare meals for health-related reasons"
		iadl_shop = "IADL - any difficulty shopping for personal items"
		iadlh_shop = "IADL - do not shop for health-related reasons"
		iadl_phone = "IADL - any difficulty using the telephone"
		iadlh_phone = "IADL - do not use the telephone for health-related reasons"
		iadl_meds = "IADL - any difficulty taking medication"
		iadlh_meds = "IADL - do not take medication for health-related reasons"
		iadl_money = "IADL - any difficulty managing money"
		iadlh_money = "IADL - do not manage money for health-related reasons"
		iadl_drive = "IADL - any difficulty driving"
		iadlh_drive = "IADL - primary reason do not drive"
	;
	FORMAT
		walkquartermile walkquartermile_.
		walkonemile walkonemile_.
		stairs10 stairs10_.
		stairs20 stairs20_.
		liftcarry10 liftcarry10_.
		liftcarry20 liftcarry20_.
		did400m did400m_.
		c400aid c400aid_.
		uw150 uw150_.
		uw150aid uw150aid_.
		adl_trans adl_trans_.
		adlh_trans adlh_trans_.
		adl_bathe adl_bathe_.
		adlh_bathe adlh_bathe_.
		adl_dress adl_dress_.
		adlh_dress adlh_dress_.
		adl_eat adl_eat_.
		adlh_eat adlh_eat_.
		adl_toilet adl_toilet_.
		adlh_toilet adlh_toilet_.
		adl_walk adl_walk_.
		adlh_walk adlh_walk_.
		iadl_lightwork iadl_lightwork_.
		iadlh_lightwork iadlh_lightwork_.
		iadl_heavywork iadl_heavywork_.
		iadlh_heavywork iadlh_heavywork_.
		iadl_meal iadl_meal_.
		iadlh_meal iadlh_meal_.
		iadl_shop iadl_shop_.
		iadlh_shop iadlh_shop_.
		iadl_phone iadl_phone_.
		iadlh_phone iadlh_phone_.
		iadl_meds iadl_meds_.
		iadlh_meds iadlh_meds_.
		iadl_money iadl_money_.
		iadlh_money iadlh_money_.
		iadl_drive iadl_drive_.
		iadlh_drive iadlh_drive_.
	;
RUN;


        DATA der_physicalfunction;
            SET WORK.IMPORT;
        RUN;
        