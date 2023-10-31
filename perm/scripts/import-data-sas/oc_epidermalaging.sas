%let path_to_file = '../data-csv/oc_epidermalaging.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE informedconsent_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE adhesiveallergy_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE fragileskin_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE skincondition_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE smoked_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE nocaffeine_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE notopicalprod_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE notpregnant_epiagi_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE eligibilityyn_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE consent_epiagi_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE reveligibility_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE day1photo_
		2 = 'Right'
		1 = 'Left'
	;

	VALUE d2ampm_
		2 = 'Pm'
		1 = 'Am'
	;

	VALUE d2topicalprod_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d2caffeine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE acclimate_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE d3ampm_
		2 = 'Pm'
		1 = 'Am'
	;

	VALUE d3topicalprod_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d3caffeine_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE d3acclimate_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE day3photo_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE discsize_
		1 = 'D-Squame size 1.1875_x009d_ (D102 Large)'
		2 = 'D-Squame size 0.875_x009d_ (D100 Standard)'
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

	INFORMAT crf_version_epiagi $7.;
	FORMAT crf_version_epiagi $7.;

	INFORMAT testerid_epiagi BEST32.;
	FORMAT testerid_epiagi BEST12.;

	INFORMAT informedconsent BEST32.;
	FORMAT informedconsent BEST12.;

	INFORMAT adhesiveallergy BEST32.;
	FORMAT adhesiveallergy BEST12.;

	INFORMAT fragileskin BEST32.;
	FORMAT fragileskin BEST12.;

	INFORMAT skincondition BEST32.;
	FORMAT skincondition BEST12.;

	INFORMAT smoked BEST32.;
	FORMAT smoked BEST12.;

	INFORMAT nocaffeine BEST32.;
	FORMAT nocaffeine BEST12.;

	INFORMAT notopicalprod BEST32.;
	FORMAT notopicalprod BEST12.;

	INFORMAT notpregnant_epiagi BEST32.;
	FORMAT notpregnant_epiagi BEST12.;

	INFORMAT eligibilityyn BEST32.;
	FORMAT eligibilityyn BEST12.;

	INFORMAT d1testerid BEST32.;
	FORMAT d1testerid BEST12.;

	INFORMAT consent_epiagi BEST32.;
	FORMAT consent_epiagi BEST12.;

	INFORMAT reveligibility BEST32.;
	FORMAT reveligibility BEST12.;

	INFORMAT day1photo BEST32.;
	FORMAT day1photo BEST12.;

	INFORMAT d2time $5.;
	FORMAT d2time $5.;

	INFORMAT d2ampm BEST32.;
	FORMAT d2ampm BEST12.;

	INFORMAT d2testerid BEST32.;
	FORMAT d2testerid BEST12.;

	INFORMAT d2topicalprod BEST32.;
	FORMAT d2topicalprod BEST12.;

	INFORMAT d2caffeine BEST32.;
	FORMAT d2caffeine BEST12.;

	INFORMAT acclimate BEST32.;
	FORMAT acclimate BEST12.;

	INFORMAT temproom BEST32.;
	FORMAT temproom BEST12.;

	INFORMAT humidityrm BEST32.;
	FORMAT humidityrm BEST12.;

	INFORMAT baselinetewl BEST32.;
	FORMAT baselinetewl BEST12.;

	INFORMAT d3time $4.;
	FORMAT d3time $4.;

	INFORMAT d3ampm BEST32.;
	FORMAT d3ampm BEST12.;

	INFORMAT d3testerid BEST32.;
	FORMAT d3testerid BEST12.;

	INFORMAT d3topicalprod BEST32.;
	FORMAT d3topicalprod BEST12.;

	INFORMAT d3caffeine BEST32.;
	FORMAT d3caffeine BEST12.;

	INFORMAT d3acclimate BEST32.;
	FORMAT d3acclimate BEST12.;

	INFORMAT d3rmtemp BEST32.;
	FORMAT d3rmtemp BEST12.;

	INFORMAT d3rmhumidity BEST32.;
	FORMAT d3rmhumidity BEST12.;

	INFORMAT d3tewl BEST32.;
	FORMAT d3tewl BEST12.;

	INFORMAT day3photo BEST32.;
	FORMAT day3photo BEST12.;

	INFORMAT d3tewlm2 BEST32.;
	FORMAT d3tewlm2 BEST12.;

	INFORMAT d3tewlm3 BEST32.;
	FORMAT d3tewlm3 BEST12.;

	INFORMAT d2tewlm2 BEST32.;
	FORMAT d2tewlm2 BEST12.;

	INFORMAT d2tewlm3 BEST32.;
	FORMAT d2tewlm3 BEST12.;

	INFORMAT discsize BEST32.;
	FORMAT discsize BEST12.;

	INFORMAT tewlavg $1.;
	FORMAT tewlavg $1.;

	INPUT
		id_addi
		visit
		crf_version_epiagi
		testerid_epiagi
		informedconsent
		adhesiveallergy
		fragileskin
		skincondition
		smoked
		nocaffeine
		notopicalprod
		notpregnant_epiagi
		eligibilityyn
		d1testerid
		consent_epiagi
		reveligibility
		day1photo
		d2time
		d2ampm
		d2testerid
		d2topicalprod
		d2caffeine
		acclimate
		temproom
		humidityrm
		baselinetewl
		d3time
		d3ampm
		d3testerid
		d3topicalprod
		d3caffeine
		d3acclimate
		d3rmtemp
		d3rmhumidity
		d3tewl
		day3photo
		d3tewlm2
		d3tewlm3
		d2tewlm2
		d2tewlm3
		discsize
		tewlavg
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_epiagi = "CRF Version"
		testerid_epiagi = "Tester ID"
		informedconsent = "Able to provide informed consent"
		adhesiveallergy = "Does not have a known allergy to adhesive tape"
		fragileskin = "Does not have fragile skin"
		skincondition = "Does not have a wound or skin condition prone to excessive scarring"
		smoked = "Has not smoked 3 hours prior to the procedure"
		nocaffeine = "Has not drank any caffeinated beverages 3 hours prior to the procedure"
		notopicalprod = "Has not used any topical products 6 to 8 hrs before procedure"
		notpregnant_epiagi = "Is not pregnant"
		eligibilityyn = "Eligibility"
		d1testerid = "D1 Tester ID"
		consent_epiagi = "Consent reviewed"
		reveligibility = "Eligibility criteria reviewed"
		day1photo = "Day 1 Forearm photographed"
		d2time = "D2 Time"
		d2ampm = "D2 am pm"
		d2testerid = "D2 Tester ID"
		d2topicalprod = "Has the participant used topical products on the forearm in the last 6-8 hours"
		d2caffeine = "Has the participant drank any caffeine or smoked in the past 3 hours"
		acclimate = "Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
		temproom = "Room temperature"
		humidityrm = "Room Humidity"
		baselinetewl = "Baseline TEWL measurement"
		d3time = "D3 Time"
		d3ampm = "D3 am pm"
		d3testerid = "D3 Tester ID"
		d3topicalprod = "D3 Has the participant used topical products on the forearm in the last 6-8 hours"
		d3caffeine = "D3 Has the participant drank any caffeine or smoked in the past 3 hours"
		d3acclimate = "D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
		d3rmtemp = "D3 Room temperature"
		d3rmhumidity = "D3 Room Humidity"
		d3tewl = "D3 TEWL measurement"
		day3photo = "D3 Forearm photographed"
		d3tewlm2 = "D3 TEWL measurement 2"
		d3tewlm3 = "D3 TEWL measurement 3"
		d2tewlm2 = "D2 TEWL measurement 2"
		d2tewlm3 = "D2 TEWL measurement 3"
		discsize = "Stripping disc size"
		tewlavg = "TEWL average"
	;
	FORMAT
		informedconsent informedconsent_.
		adhesiveallergy adhesiveallergy_.
		fragileskin fragileskin_.
		skincondition skincondition_.
		smoked smoked_.
		nocaffeine nocaffeine_.
		notopicalprod notopicalprod_.
		notpregnant_epiagi notpregnant_epiagi_.
		eligibilityyn eligibilityyn_.
		consent_epiagi consent_epiagi_.
		reveligibility reveligibility_.
		day1photo day1photo_.
		d2ampm d2ampm_.
		d2topicalprod d2topicalprod_.
		d2caffeine d2caffeine_.
		acclimate acclimate_.
		d3ampm d3ampm_.
		d3topicalprod d3topicalprod_.
		d3caffeine d3caffeine_.
		d3acclimate d3acclimate_.
		day3photo day3photo_.
		discsize discsize_.
	;
RUN;


        DATA oc_epidermalaging;
            SET WORK.IMPORT;
        RUN;
        