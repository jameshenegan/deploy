%let path_to_file = '../data-csv/oc_senseofdirection.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE judgedistance_
		2 = '(2)'
		1 = '(1) strongly agree'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE senseofdirection_
		2 = '(2)'
		1 = '(1) strongly agree'
		3 = '(3)'
		4 = '(4)'
		5 = '(5)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE losteasily_
		6 = '(6)'
		4 = '(4)'
		5 = '(5)'
		3 = '(3)'
		7 = '(7) strongly disagree'
		2 = '(2)'
		1 = '(1) strongly agree'
	;

	VALUE troubledirections_
		6 = '(6)'
		7 = '(7) strongly disagree'
		5 = '(5)'
		4 = '(4)'
		3 = '(3)'
		2 = '(2)'
		1 = '(1) strongly agree'
	;

	VALUE routeswhenriding_
		6 = '(6)'
		4 = '(4)'
		3 = '(3)'
		5 = '(5)'
		7 = '(7) strongly disagree'
		2 = '(2)'
		1 = '(1) strongly agree'
	;

	VALUE rememberroutes_
		2 = '(2)'
		3 = '(3)'
		1 = '(1) strongly agree'
		5 = '(5)'
		4 = '(4)'
		6 = '(6)'
		7 = '(7) strongly disagree'
	;

	VALUE mentalmap_
		7 = '(7) strongly disagree'
		6 = '(6)'
		5 = '(5)'
		4 = '(4)'
		2 = '(2)'
		3 = '(3)'
		1 = '(1) strongly agree'
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

	INFORMAT crf_version_senofdir $8.;
	FORMAT crf_version_senofdir $8.;

	INFORMAT judgedistance BEST32.;
	FORMAT judgedistance BEST12.;

	INFORMAT senseofdirection BEST32.;
	FORMAT senseofdirection BEST12.;

	INFORMAT losteasily BEST32.;
	FORMAT losteasily BEST12.;

	INFORMAT troubledirections BEST32.;
	FORMAT troubledirections BEST12.;

	INFORMAT routeswhenriding BEST32.;
	FORMAT routeswhenriding BEST12.;

	INFORMAT rememberroutes BEST32.;
	FORMAT rememberroutes BEST12.;

	INFORMAT mentalmap BEST32.;
	FORMAT mentalmap BEST12.;

	INPUT
		id_addi
		visit
		crf_version_senofdir
		judgedistance
		senseofdirection
		losteasily
		troubledirections
		routeswhenriding
		rememberroutes
		mentalmap
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_senofdir = "CRF Version"
		judgedistance = "I am very good at judging distances"
		senseofdirection = "My sense of direction is very good"
		losteasily = "I very easily get lost in a new city"
		troubledirections = "I have trouble understanding directions"
		routeswhenriding = "I don't remember routes very well while riding as a passenger in a car"
		rememberroutes = "I can usually remember a new route after I have traveled it only once"
		mentalmap = "I don't have a very good mental map of my environment"
	;
	FORMAT
		judgedistance judgedistance_.
		senseofdirection senseofdirection_.
		losteasily losteasily_.
		troubledirections troubledirections_.
		routeswhenriding routeswhenriding_.
		rememberroutes rememberroutes_.
		mentalmap mentalmap_.
	;
RUN;


        DATA oc_senseofdirection;
            SET WORK.IMPORT;
        RUN;
        