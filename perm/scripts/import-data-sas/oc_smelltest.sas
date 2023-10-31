%let path_to_file = '../data-csv/oc_smelltest.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE stdone_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE strnd_
		9 = 'Not Scheduled'
		5 = 'Unable: Physical/Mental'
		3 = 'No Time'
		4 = 'Refused'
		7 = 'No Tester'
		8 = 'Not Eligible'
		6 = 'Equipment Problem'
	;

	VALUE stver_
		2 = 'Purple'
		1 = 'Blue'
	;

	VALUE stsmell_
		3 = 'Good'
		2 = 'Fair'
		4 = 'Excellent'
		1 = 'Poor'
	;

	VALUE stnasal_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE $stcard1_
		_1 = '1-Orange'
		_0 = '2-Blackberry'
		_00 = '3-Strawberry'
		_000 = '4-Pineapple'
	;

	VALUE $stcard2_
		_1 = '3-Leather'
		_0 = '1-Smoke'
		_00 = '2-Glue'
		_000 = '4-Grass'
	;

	VALUE $stcard3_
		_1 = '4-Cinnamon'
		_0 = '1-Honey'
		_00 = '2-Vanilla'
		_000 = '3-Chocolate'
	;

	VALUE $stcard4_
		_1 = '2-Peppermint'
		_00 = '3-Fir'
		_0 = '1-Chive'
		_000 = '4-Onion'
	;

	VALUE $stcard5_
		_1 = '2-Banana'
		_0 = '1-Coconut'
		_000 = '4-Cherry'
		_00 = '3-Walnut'
	;

	VALUE $stcard6_
		_1 = '3-Lemon'
		_0 = '1-Peach'
		_000 = '4-Grapefruit'
		_00 = '2-Apple'
	;

	VALUE $stcard7_
		_1 = '1-Liquorice'
		_0 = '2-Cherry'
		_00 = '3-Spearmint'
		_000 = '4-Cookies'
	;

	VALUE $stcard8_
		_1 = '4-Turpentine'
		_000 = '3-Menthol'
		_0 = '1-Mustard'
		_00 = '2-Rubber'
	;

	VALUE $stcard9_
		_1 = '3-Garlic'
		_0 = '1-Onion'
		_00 = '2-Sauerkraut'
		_000 = '4-Carrot'
	;

	VALUE $stcard10_
		_1 = '2-Coffee'
		_0 = '1-Cigarettes'
		_000 = '4-Smoke'
		_00 = '3-Wine'
	;

	VALUE $stcard11_
		_0 = '1-Melon'
		_00 = '2-Peach'
		_1 = '4-Apple'
		_000 = '3-Orange'
	;

	VALUE $stcard12_
		_1 = '1-Clove'
		_00 = '3-Cinnamon'
		_0 = '2-Pepper'
		_000 = '4-Mustard'
	;

	VALUE $stcard13_
		_1 = '4-Pineapple'
		_0 = '1-Pear'
		_000 = '3-Peach'
		_00 = '2-Plum'
	;

	VALUE $stcard14_
		_1 = '3-Rose'
		_0 = '1-Chamomile'
		_00 = '2-Raspberry'
		_000 = '4-Cherry'
	;

	VALUE $stcard15_
		_1 = '1-Anise'
		_0 = '2-Rum'
		_000 = '4-Fir'
		_00 = '3-Honey'
	;

	VALUE $stcard16_
		_1 = '2-Fish'
		_0 = '1-Bread'
		_000 = '4-Ham'
		_00 = '3-Cheese'
	;

	VALUE $stcard1p_
		_1 = '2-Pear'
		_0 = '1-Peppermint'
		_000 = '4-Orange'
		_00 = '3-Parsley'
	;

	VALUE $stcard2p_
		_1 = '1-Coke'
		_00 = '3-Wine gum'
		_0 = '2-Apple'
		_000 = '4-Lemon'
	;

	VALUE $stcard3p_
		_1 = '3-Lilac'
		_00 = '2-Fir'
		_0 = '1-Mint'
		_000 = '4-Chive'
	;

	VALUE $stcard4p_
		_1 = '2-Grapefruit'
		_0 = '1-Peach'
		_00 = '3-Grape'
		_000 = '4-Strawberry'
	;

	VALUE $stcard5p_
		_1 = '4-Grass'
		_0 = '1-Rose'
		_00 = '2-Sauerkraut'
		_000 = '3-Carrot'
	;

	VALUE $stcard6p_
		_1 = '3-Raspberry'
		_0 = '1-Plum'
		_00 = '2-Melon'
		_000 = '4-Orange'
	;

	VALUE $stcard7p_
		_1 = '1-Eucalyptus'
		_000 = '4-Fir'
		_00 = '3-Liquorice'
		_0 = '2-Lemon'
	;

	VALUE $stcard8p_
		_1 = '3-Ginger'
		_0 = '1-Paprika'
		_00 = '2-Vanilla'
		_000 = '4-Pepper'
	;

	VALUE $stcard9p_
		_1 = '4-Coconut'
		_0 = '1-Cinnamon'
		_00 = '2-Chocolate'
		_000 = '3-Peanut'
	;

	VALUE $stcard10p_
		_1 = 'Lavender'
		_00 = 'Fir'
		_0 = '1-Grass'
		_000 = 'Rose'
	;

	VALUE $stcard11p_
		_1 = '4-Melon'
		_00 = '2-Currant'
		_0 = '1-Lemon'
		_000 = '3-Orange'
	;

	VALUE $stcard12p_
		_1 = '2-Peach'
		_0 = '1-Cherry'
		_00 = '3-Apple'
		_000 = '4-Strawberry'
	;

	VALUE $stcard13p_
		_1 = '2-Mushroom'
		_000 = '4-Wood'
		_0 = '1-Garlic'
		_00 = '3-Ham'
	;

	VALUE $stcard14p_
		_1 = '1-Smoked meat'
		_000 = '4-Salami'
		_0 = '2-Leather'
		_00 = '3-Cigarette'
	;

	VALUE $stcard15p_
		_1 = '4-Caramel'
		_0 = '1-Cookies'
		_00 = '2-Orange'
		_000 = '3-Wine gum'
	;

	VALUE $stcard16p_
		_1 = '3-Onion'
		_0 = '1-Pepper'
		_00 = '2-Nutmeg'
		_000 = '4-Mustart'
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

	INFORMAT crf_version_smetes $7.;
	FORMAT crf_version_smetes $7.;

	INFORMAT stdone BEST32.;
	FORMAT stdone BEST12.;

	INFORMAT strnd BEST32.;
	FORMAT strnd BEST12.;

	INFORMAT stver BEST32.;
	FORMAT stver BEST12.;

	INFORMAT stsmell BEST32.;
	FORMAT stsmell BEST12.;

	INFORMAT stnasal BEST32.;
	FORMAT stnasal BEST12.;

	INFORMAT stcard1 $4.;
	FORMAT stcard1 $4.;

	INFORMAT stcard2 $4.;
	FORMAT stcard2 $4.;

	INFORMAT stcard3 $4.;
	FORMAT stcard3 $4.;

	INFORMAT stcard4 $4.;
	FORMAT stcard4 $4.;

	INFORMAT stcard5 $4.;
	FORMAT stcard5 $4.;

	INFORMAT stcard6 $4.;
	FORMAT stcard6 $4.;

	INFORMAT stcard7 $4.;
	FORMAT stcard7 $4.;

	INFORMAT stcard8 $4.;
	FORMAT stcard8 $4.;

	INFORMAT stcard9 $4.;
	FORMAT stcard9 $4.;

	INFORMAT stcard10 $4.;
	FORMAT stcard10 $4.;

	INFORMAT stcard11 $4.;
	FORMAT stcard11 $4.;

	INFORMAT stcard12 $4.;
	FORMAT stcard12 $4.;

	INFORMAT stcard13 $4.;
	FORMAT stcard13 $4.;

	INFORMAT stcard14 $4.;
	FORMAT stcard14 $4.;

	INFORMAT stcard15 $4.;
	FORMAT stcard15 $4.;

	INFORMAT stcard16 $4.;
	FORMAT stcard16 $4.;

	INFORMAT stcard1p $4.;
	FORMAT stcard1p $4.;

	INFORMAT stcard2p $4.;
	FORMAT stcard2p $4.;

	INFORMAT stcard3p $4.;
	FORMAT stcard3p $4.;

	INFORMAT stcard4p $4.;
	FORMAT stcard4p $4.;

	INFORMAT stcard5p $4.;
	FORMAT stcard5p $4.;

	INFORMAT stcard6p $4.;
	FORMAT stcard6p $4.;

	INFORMAT stcard7p $4.;
	FORMAT stcard7p $4.;

	INFORMAT stcard8p $4.;
	FORMAT stcard8p $4.;

	INFORMAT stcard9p $4.;
	FORMAT stcard9p $4.;

	INFORMAT stcard10p $4.;
	FORMAT stcard10p $4.;

	INFORMAT stcard11p $4.;
	FORMAT stcard11p $4.;

	INFORMAT stcard12p $4.;
	FORMAT stcard12p $4.;

	INFORMAT stcard13p $4.;
	FORMAT stcard13p $4.;

	INFORMAT stcard14p $4.;
	FORMAT stcard14p $4.;

	INFORMAT stcard15p $4.;
	FORMAT stcard15p $4.;

	INFORMAT stcard16p $4.;
	FORMAT stcard16p $4.;

	INFORMAT auto_id_smetes BEST32.;
	FORMAT auto_id_smetes BEST12.;

	INFORMAT testerid_smetes BEST32.;
	FORMAT testerid_smetes BEST12.;

	INPUT
		id_addi
		visit
		crf_version_smetes
		stdone
		strnd
		stver
		stsmell
		stnasal
		stcard1
		stcard2
		stcard3
		stcard4
		stcard5
		stcard6
		stcard7
		stcard8
		stcard9
		stcard10
		stcard11
		stcard12
		stcard13
		stcard14
		stcard15
		stcard16
		stcard1p
		stcard2p
		stcard3p
		stcard4p
		stcard5p
		stcard6p
		stcard7p
		stcard8p
		stcard9p
		stcard10p
		stcard11p
		stcard12p
		stcard13p
		stcard14p
		stcard15p
		stcard16p
		auto_id_smetes
		testerid_smetes
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_smetes = "CRF Version"
		stdone = "Was smell test completed"
		strnd = "Reason not done"
		stver = "Smell test version"
		stsmell = "Sense of smell"
		stnasal = "Do you have nasal congestion today"
		stcard1 = "Card 1"
		stcard2 = "Card 2"
		stcard3 = "Card 3"
		stcard4 = "Card 4"
		stcard5 = "Card 5"
		stcard6 = "Card 6"
		stcard7 = "Card 7"
		stcard8 = "Card 8"
		stcard9 = "Card 9"
		stcard10 = "Card 10"
		stcard11 = "Card 11"
		stcard12 = "Card 12"
		stcard13 = "Card 13"
		stcard14 = "Card 14"
		stcard15 = "Card 15"
		stcard16 = "Card 16"
		stcard1p = "Card 1"
		stcard2p = "Card 2"
		stcard3p = "Card 3"
		stcard4p = "Card 4"
		stcard5p = "Card 5"
		stcard6p = "Card 6"
		stcard7p = "Card 7"
		stcard8p = "Card 8"
		stcard9p = "Card 9"
		stcard10p = "Card 10"
		stcard11p = "Card 11"
		stcard12p = "Card 12"
		stcard13p = "Card 13"
		stcard14p = "Card 14"
		stcard15p = "Card 15"
		stcard16p = "Card 16"
		auto_id_smetes = "Unique Teleform Number"
		testerid_smetes = "Tester ID"
	;
	FORMAT
		stdone stdone_.
		strnd strnd_.
		stver stver_.
		stsmell stsmell_.
		stnasal stnasal_.
		stcard1 $stcard1_.
		stcard2 $stcard2_.
		stcard3 $stcard3_.
		stcard4 $stcard4_.
		stcard5 $stcard5_.
		stcard6 $stcard6_.
		stcard7 $stcard7_.
		stcard8 $stcard8_.
		stcard9 $stcard9_.
		stcard10 $stcard10_.
		stcard11 $stcard11_.
		stcard12 $stcard12_.
		stcard13 $stcard13_.
		stcard14 $stcard14_.
		stcard15 $stcard15_.
		stcard16 $stcard16_.
		stcard1p $stcard1p_.
		stcard2p $stcard2p_.
		stcard3p $stcard3p_.
		stcard4p $stcard4p_.
		stcard5p $stcard5p_.
		stcard6p $stcard6p_.
		stcard7p $stcard7p_.
		stcard8p $stcard8p_.
		stcard9p $stcard9p_.
		stcard10p $stcard10p_.
		stcard11p $stcard11p_.
		stcard12p $stcard12p_.
		stcard13p $stcard13p_.
		stcard14p $stcard14p_.
		stcard15p $stcard15p_.
		stcard16p $stcard16p_.
	;
RUN;


        DATA oc_smelltest;
            SET WORK.IMPORT;
        RUN;
        