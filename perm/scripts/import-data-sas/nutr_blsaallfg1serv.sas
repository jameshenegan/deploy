%let path_to_file = '../data-csv/nutr_blsaallfg1serv.csv';
OPTIONS nofmterr;

    
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

	INFORMAT _011 BEST32.;
	FORMAT _011 BEST12.;

	INFORMAT _012 BEST32.;
	FORMAT _012 BEST12.;

	INFORMAT _013 BEST32.;
	FORMAT _013 BEST12.;

	INFORMAT _01a1 BEST32.;
	FORMAT _01a1 BEST12.;

	INFORMAT _01a2 BEST32.;
	FORMAT _01a2 BEST12.;

	INFORMAT _01b1 BEST32.;
	FORMAT _01b1 BEST12.;

	INFORMAT _01b2 BEST32.;
	FORMAT _01b2 BEST12.;

	INFORMAT _01b3 BEST32.;
	FORMAT _01b3 BEST12.;

	INFORMAT _01b4 BEST32.;
	FORMAT _01b4 BEST12.;

	INFORMAT _023 BEST32.;
	FORMAT _023 BEST12.;

	INFORMAT _02a1 BEST32.;
	FORMAT _02a1 BEST12.;

	INFORMAT _02a2 BEST32.;
	FORMAT _02a2 BEST12.;

	INFORMAT _031 BEST32.;
	FORMAT _031 BEST12.;

	INFORMAT _032 BEST32.;
	FORMAT _032 BEST12.;

	INFORMAT _033 BEST32.;
	FORMAT _033 BEST12.;

	INFORMAT _035 BEST32.;
	FORMAT _035 BEST12.;

	INFORMAT _036 BEST32.;
	FORMAT _036 BEST12.;

	INFORMAT _041 BEST32.;
	FORMAT _041 BEST12.;

	INFORMAT _043 BEST32.;
	FORMAT _043 BEST12.;

	INFORMAT _045 BEST32.;
	FORMAT _045 BEST12.;

	INFORMAT _047 BEST32.;
	FORMAT _047 BEST12.;

	INFORMAT _051 BEST32.;
	FORMAT _051 BEST12.;

	INFORMAT _0510 BEST32.;
	FORMAT _0510 BEST12.;

	INFORMAT _052 BEST32.;
	FORMAT _052 BEST12.;

	INFORMAT _053 BEST32.;
	FORMAT _053 BEST12.;

	INFORMAT _054 BEST32.;
	FORMAT _054 BEST12.;

	INFORMAT _055 BEST32.;
	FORMAT _055 BEST12.;

	INFORMAT _056 BEST32.;
	FORMAT _056 BEST12.;

	INFORMAT _058 BEST32.;
	FORMAT _058 BEST12.;

	INFORMAT _059 BEST32.;
	FORMAT _059 BEST12.;

	INFORMAT _061 BEST32.;
	FORMAT _061 BEST12.;

	INFORMAT _062 BEST32.;
	FORMAT _062 BEST12.;

	INFORMAT _063 BEST32.;
	FORMAT _063 BEST12.;

	INFORMAT _064 BEST32.;
	FORMAT _064 BEST12.;

	INFORMAT _065 BEST32.;
	FORMAT _065 BEST12.;

	INFORMAT _066 BEST32.;
	FORMAT _066 BEST12.;

	INFORMAT _067 BEST32.;
	FORMAT _067 BEST12.;

	INFORMAT _071 BEST32.;
	FORMAT _071 BEST12.;

	INFORMAT _081 BEST32.;
	FORMAT _081 BEST12.;

	INFORMAT _082 BEST32.;
	FORMAT _082 BEST12.;

	INFORMAT _091 BEST32.;
	FORMAT _091 BEST12.;

	INFORMAT _101 BEST32.;
	FORMAT _101 BEST12.;

	INFORMAT _1019 BEST32.;
	FORMAT _1019 BEST12.;

	INFORMAT _107 BEST32.;
	FORMAT _107 BEST12.;

	INFORMAT _111 BEST32.;
	FORMAT _111 BEST12.;

	INFORMAT _1114 BEST32.;
	FORMAT _1114 BEST12.;

	INFORMAT _1115 BEST32.;
	FORMAT _1115 BEST12.;

	INFORMAT _1116 BEST32.;
	FORMAT _1116 BEST12.;

	INFORMAT _1117 BEST32.;
	FORMAT _1117 BEST12.;

	INFORMAT _1118 BEST32.;
	FORMAT _1118 BEST12.;

	INFORMAT _1119 BEST32.;
	FORMAT _1119 BEST12.;

	INFORMAT _1120 BEST32.;
	FORMAT _1120 BEST12.;

	INFORMAT _1122 BEST32.;
	FORMAT _1122 BEST12.;

	INFORMAT _114 BEST32.;
	FORMAT _114 BEST12.;

	INFORMAT _115 BEST32.;
	FORMAT _115 BEST12.;

	INFORMAT _117 BEST32.;
	FORMAT _117 BEST12.;

	INFORMAT _119 BEST32.;
	FORMAT _119 BEST12.;

	INFORMAT _121 BEST32.;
	FORMAT _121 BEST12.;

	INFORMAT _1210 BEST32.;
	FORMAT _1210 BEST12.;

	INFORMAT _122 BEST32.;
	FORMAT _122 BEST12.;

	INFORMAT _124 BEST32.;
	FORMAT _124 BEST12.;

	INFORMAT _125 BEST32.;
	FORMAT _125 BEST12.;

	INFORMAT _126 BEST32.;
	FORMAT _126 BEST12.;

	INFORMAT _129 BEST32.;
	FORMAT _129 BEST12.;

	INFORMAT _131 BEST32.;
	FORMAT _131 BEST12.;

	INFORMAT _132 BEST32.;
	FORMAT _132 BEST12.;

	INFORMAT _133 BEST32.;
	FORMAT _133 BEST12.;

	INFORMAT _13b1 BEST32.;
	FORMAT _13b1 BEST12.;

	INFORMAT _13b2 BEST32.;
	FORMAT _13b2 BEST12.;

	INFORMAT _13b3 BEST32.;
	FORMAT _13b3 BEST12.;

	INFORMAT _141 BEST32.;
	FORMAT _141 BEST12.;

	INFORMAT _1410 BEST32.;
	FORMAT _1410 BEST12.;

	INFORMAT _1411 BEST32.;
	FORMAT _1411 BEST12.;

	INFORMAT _1412 BEST32.;
	FORMAT _1412 BEST12.;

	INFORMAT _1413 BEST32.;
	FORMAT _1413 BEST12.;

	INFORMAT _1414 BEST32.;
	FORMAT _1414 BEST12.;

	INFORMAT _1415 BEST32.;
	FORMAT _1415 BEST12.;

	INFORMAT _1416 BEST32.;
	FORMAT _1416 BEST12.;

	INFORMAT _142 BEST32.;
	FORMAT _142 BEST12.;

	INFORMAT _143 BEST32.;
	FORMAT _143 BEST12.;

	INFORMAT _144 BEST32.;
	FORMAT _144 BEST12.;

	INFORMAT _145 BEST32.;
	FORMAT _145 BEST12.;

	INFORMAT _146 BEST32.;
	FORMAT _146 BEST12.;

	INFORMAT _148 BEST32.;
	FORMAT _148 BEST12.;

	INFORMAT _14b1 BEST32.;
	FORMAT _14b1 BEST12.;

	INFORMAT _14b2 BEST32.;
	FORMAT _14b2 BEST12.;

	INFORMAT _14b3 BEST32.;
	FORMAT _14b3 BEST12.;

	INFORMAT _14c1 BEST32.;
	FORMAT _14c1 BEST12.;

	INFORMAT _14c2 BEST32.;
	FORMAT _14c2 BEST12.;

	INFORMAT _15a1 BEST32.;
	FORMAT _15a1 BEST12.;

	INFORMAT _15a2 BEST32.;
	FORMAT _15a2 BEST12.;

	INFORMAT _15a3 BEST32.;
	FORMAT _15a3 BEST12.;

	INFORMAT _15a4 BEST32.;
	FORMAT _15a4 BEST12.;

	INFORMAT _15b1 BEST32.;
	FORMAT _15b1 BEST12.;

	INFORMAT _15b2 BEST32.;
	FORMAT _15b2 BEST12.;

	INFORMAT _15b3 BEST32.;
	FORMAT _15b3 BEST12.;

	INFORMAT _15b4 BEST32.;
	FORMAT _15b4 BEST12.;

	INFORMAT _15b5 BEST32.;
	FORMAT _15b5 BEST12.;

	INFORMAT _15b6 BEST32.;
	FORMAT _15b6 BEST12.;

	INFORMAT _15c1 BEST32.;
	FORMAT _15c1 BEST12.;

	INFORMAT _15c2 BEST32.;
	FORMAT _15c2 BEST12.;

	INFORMAT _15c4 BEST32.;
	FORMAT _15c4 BEST12.;

	INFORMAT _15c5 BEST32.;
	FORMAT _15c5 BEST12.;

	INFORMAT _15d1 BEST32.;
	FORMAT _15d1 BEST12.;

	INFORMAT _15d12 BEST32.;
	FORMAT _15d12 BEST12.;

	INFORMAT _15d13 BEST32.;
	FORMAT _15d13 BEST12.;

	INFORMAT _15d15 BEST32.;
	FORMAT _15d15 BEST12.;

	INFORMAT _15d16 BEST32.;
	FORMAT _15d16 BEST12.;

	INFORMAT _15d17 BEST32.;
	FORMAT _15d17 BEST12.;

	INFORMAT _15d18 BEST32.;
	FORMAT _15d18 BEST12.;

	INFORMAT _15d2 BEST32.;
	FORMAT _15d2 BEST12.;

	INFORMAT _15d3 BEST32.;
	FORMAT _15d3 BEST12.;

	INFORMAT _15d5 BEST32.;
	FORMAT _15d5 BEST12.;

	INFORMAT _15d6 BEST32.;
	FORMAT _15d6 BEST12.;

	INFORMAT _15d7 BEST32.;
	FORMAT _15d7 BEST12.;

	INFORMAT _15d8 BEST32.;
	FORMAT _15d8 BEST12.;

	INFORMAT _15e1 BEST32.;
	FORMAT _15e1 BEST12.;

	INFORMAT _15e2 BEST32.;
	FORMAT _15e2 BEST12.;

	INFORMAT _15e3 BEST32.;
	FORMAT _15e3 BEST12.;

	INFORMAT _15e4 BEST32.;
	FORMAT _15e4 BEST12.;

	INFORMAT _15e5 BEST32.;
	FORMAT _15e5 BEST12.;

	INFORMAT _15e6 BEST32.;
	FORMAT _15e6 BEST12.;

	INFORMAT _161 BEST32.;
	FORMAT _161 BEST12.;

	INFORMAT _162 BEST32.;
	FORMAT _162 BEST12.;

	INFORMAT _171 BEST32.;
	FORMAT _171 BEST12.;

	INFORMAT _173 BEST32.;
	FORMAT _173 BEST12.;

	INFORMAT _174 BEST32.;
	FORMAT _174 BEST12.;

	INFORMAT _176 BEST32.;
	FORMAT _176 BEST12.;

	INFORMAT _182 BEST32.;
	FORMAT _182 BEST12.;

	INFORMAT _183 BEST32.;
	FORMAT _183 BEST12.;

	INFORMAT _184 BEST32.;
	FORMAT _184 BEST12.;

	INFORMAT _191 BEST32.;
	FORMAT _191 BEST12.;

	INFORMAT _192 BEST32.;
	FORMAT _192 BEST12.;

	INFORMAT _193 BEST32.;
	FORMAT _193 BEST12.;

	INFORMAT _201 BEST32.;
	FORMAT _201 BEST12.;

	INFORMAT _202 BEST32.;
	FORMAT _202 BEST12.;

	INFORMAT _203 BEST32.;
	FORMAT _203 BEST12.;

	INFORMAT _204 BEST32.;
	FORMAT _204 BEST12.;

	INFORMAT _205 BEST32.;
	FORMAT _205 BEST12.;

	INFORMAT _206 BEST32.;
	FORMAT _206 BEST12.;

	INFORMAT _211 BEST32.;
	FORMAT _211 BEST12.;

	INFORMAT _2110 BEST32.;
	FORMAT _2110 BEST12.;

	INFORMAT _2111 BEST32.;
	FORMAT _2111 BEST12.;

	INFORMAT _212 BEST32.;
	FORMAT _212 BEST12.;

	INFORMAT _213 BEST32.;
	FORMAT _213 BEST12.;

	INFORMAT _214 BEST32.;
	FORMAT _214 BEST12.;

	INFORMAT _215 BEST32.;
	FORMAT _215 BEST12.;

	INFORMAT _216 BEST32.;
	FORMAT _216 BEST12.;

	INFORMAT _217 BEST32.;
	FORMAT _217 BEST12.;

	INFORMAT _218 BEST32.;
	FORMAT _218 BEST12.;

	INFORMAT _219 BEST32.;
	FORMAT _219 BEST12.;

	INFORMAT _2211 BEST32.;
	FORMAT _2211 BEST12.;

	INFORMAT _222 BEST32.;
	FORMAT _222 BEST12.;

	INFORMAT _223 BEST32.;
	FORMAT _223 BEST12.;

	INFORMAT _224 BEST32.;
	FORMAT _224 BEST12.;

	INFORMAT _225 BEST32.;
	FORMAT _225 BEST12.;

	INFORMAT _226 BEST32.;
	FORMAT _226 BEST12.;

	INFORMAT _227 BEST32.;
	FORMAT _227 BEST12.;

	INFORMAT _228 BEST32.;
	FORMAT _228 BEST12.;

	INFORMAT _231 BEST32.;
	FORMAT _231 BEST12.;

	INFORMAT _232 BEST32.;
	FORMAT _232 BEST12.;

	INFORMAT _233 BEST32.;
	FORMAT _233 BEST12.;

	INFORMAT _235 BEST32.;
	FORMAT _235 BEST12.;

	INFORMAT _237 BEST32.;
	FORMAT _237 BEST12.;

	INFORMAT _239 BEST32.;
	FORMAT _239 BEST12.;

	INFORMAT _241 BEST32.;
	FORMAT _241 BEST12.;

	INFORMAT _261 BEST32.;
	FORMAT _261 BEST12.;

	INFORMAT _262 BEST32.;
	FORMAT _262 BEST12.;

	INFORMAT _265 BEST32.;
	FORMAT _265 BEST12.;

	INFORMAT _266 BEST32.;
	FORMAT _266 BEST12.;

	INFORMAT _267 BEST32.;
	FORMAT _267 BEST12.;

	INFORMAT _268 BEST32.;
	FORMAT _268 BEST12.;

	INFORMAT _271 BEST32.;
	FORMAT _271 BEST12.;

	INFORMAT _2710 BEST32.;
	FORMAT _2710 BEST12.;

	INFORMAT _272 BEST32.;
	FORMAT _272 BEST12.;

	INFORMAT _273 BEST32.;
	FORMAT _273 BEST12.;

	INFORMAT _274 BEST32.;
	FORMAT _274 BEST12.;

	INFORMAT _275 BEST32.;
	FORMAT _275 BEST12.;

	INFORMAT _276 BEST32.;
	FORMAT _276 BEST12.;

	INFORMAT _277 BEST32.;
	FORMAT _277 BEST12.;

	INFORMAT _278 BEST32.;
	FORMAT _278 BEST12.;

	INFORMAT _279 BEST32.;
	FORMAT _279 BEST12.;

	INFORMAT _282 BEST32.;
	FORMAT _282 BEST12.;

	INFORMAT _286 BEST32.;
	FORMAT _286 BEST12.;

	INFORMAT _291 BEST32.;
	FORMAT _291 BEST12.;

	INFORMAT _2910 BEST32.;
	FORMAT _2910 BEST12.;

	INFORMAT _2911 BEST32.;
	FORMAT _2911 BEST12.;

	INFORMAT _2912 BEST32.;
	FORMAT _2912 BEST12.;

	INFORMAT _2915 BEST32.;
	FORMAT _2915 BEST12.;

	INFORMAT _2916 BEST32.;
	FORMAT _2916 BEST12.;

	INFORMAT _2917 BEST32.;
	FORMAT _2917 BEST12.;

	INFORMAT _2918 BEST32.;
	FORMAT _2918 BEST12.;

	INFORMAT _292 BEST32.;
	FORMAT _292 BEST12.;

	INFORMAT _2920 BEST32.;
	FORMAT _2920 BEST12.;

	INFORMAT _2921 BEST32.;
	FORMAT _2921 BEST12.;

	INFORMAT _293 BEST32.;
	FORMAT _293 BEST12.;

	INFORMAT _294 BEST32.;
	FORMAT _294 BEST12.;

	INFORMAT _295 BEST32.;
	FORMAT _295 BEST12.;

	INFORMAT _296 BEST32.;
	FORMAT _296 BEST12.;

	INFORMAT _297 BEST32.;
	FORMAT _297 BEST12.;

	INFORMAT _298 BEST32.;
	FORMAT _298 BEST12.;

	INFORMAT _299 BEST32.;
	FORMAT _299 BEST12.;

	INFORMAT _30a1 BEST32.;
	FORMAT _30a1 BEST12.;

	INFORMAT _30a2 BEST32.;
	FORMAT _30a2 BEST12.;

	INFORMAT _30a3 BEST32.;
	FORMAT _30a3 BEST12.;

	INFORMAT _30a4 BEST32.;
	FORMAT _30a4 BEST12.;

	INFORMAT _30a5 BEST32.;
	FORMAT _30a5 BEST12.;

	INFORMAT _30b2 BEST32.;
	FORMAT _30b2 BEST12.;

	INFORMAT _30b4 BEST32.;
	FORMAT _30b4 BEST12.;

	INFORMAT _30b6 BEST32.;
	FORMAT _30b6 BEST12.;

	INFORMAT _30b7 BEST32.;
	FORMAT _30b7 BEST12.;

	INFORMAT _30b9 BEST32.;
	FORMAT _30b9 BEST12.;

	INFORMAT _31a1 BEST32.;
	FORMAT _31a1 BEST12.;

	INFORMAT _31a10 BEST32.;
	FORMAT _31a10 BEST12.;

	INFORMAT _31a12 BEST32.;
	FORMAT _31a12 BEST12.;

	INFORMAT _31a2 BEST32.;
	FORMAT _31a2 BEST12.;

	INFORMAT _31a5 BEST32.;
	FORMAT _31a5 BEST12.;

	INFORMAT _31a6 BEST32.;
	FORMAT _31a6 BEST12.;

	INFORMAT _31a7 BEST32.;
	FORMAT _31a7 BEST12.;

	INFORMAT _31a8 BEST32.;
	FORMAT _31a8 BEST12.;

	INFORMAT _31a9 BEST32.;
	FORMAT _31a9 BEST12.;

	INFORMAT _31b1 BEST32.;
	FORMAT _31b1 BEST12.;

	INFORMAT _31b2 BEST32.;
	FORMAT _31b2 BEST12.;

	INFORMAT _31b3 BEST32.;
	FORMAT _31b3 BEST12.;

	INFORMAT _31b7 BEST32.;
	FORMAT _31b7 BEST12.;

	INFORMAT _31c1 BEST32.;
	FORMAT _31c1 BEST12.;

	INFORMAT _324 BEST32.;
	FORMAT _324 BEST12.;

	INFORMAT _331 BEST32.;
	FORMAT _331 BEST12.;

	INFORMAT _332 BEST32.;
	FORMAT _332 BEST12.;

	INFORMAT _337 BEST32.;
	FORMAT _337 BEST12.;

	INFORMAT _338 BEST32.;
	FORMAT _338 BEST12.;

	INFORMAT _341 BEST32.;
	FORMAT _341 BEST12.;

	INFORMAT _351 BEST32.;
	FORMAT _351 BEST12.;

	INFORMAT _352 BEST32.;
	FORMAT _352 BEST12.;

	INFORMAT _353 BEST32.;
	FORMAT _353 BEST12.;

	INFORMAT _354 BEST32.;
	FORMAT _354 BEST12.;

	INFORMAT _361 BEST32.;
	FORMAT _361 BEST12.;

	INFORMAT _362 BEST32.;
	FORMAT _362 BEST12.;

	INFORMAT _363 BEST32.;
	FORMAT _363 BEST12.;

	INFORMAT _365 BEST32.;
	FORMAT _365 BEST12.;

	INFORMAT _366 BEST32.;
	FORMAT _366 BEST12.;

	INFORMAT _367 BEST32.;
	FORMAT _367 BEST12.;

	INFORMAT _371 BEST32.;
	FORMAT _371 BEST12.;

	INFORMAT _372 BEST32.;
	FORMAT _372 BEST12.;

	INFORMAT _373 BEST32.;
	FORMAT _373 BEST12.;

	INFORMAT _374 BEST32.;
	FORMAT _374 BEST12.;

	INFORMAT _381 BEST32.;
	FORMAT _381 BEST12.;

	INFORMAT _382 BEST32.;
	FORMAT _382 BEST12.;

	INFORMAT _383 BEST32.;
	FORMAT _383 BEST12.;

	INFORMAT _384 BEST32.;
	FORMAT _384 BEST12.;

	INFORMAT _391 BEST32.;
	FORMAT _391 BEST12.;

	INFORMAT _392 BEST32.;
	FORMAT _392 BEST12.;

	INFORMAT _393 BEST32.;
	FORMAT _393 BEST12.;

	INFORMAT _394 BEST32.;
	FORMAT _394 BEST12.;

	INFORMAT _396 BEST32.;
	FORMAT _396 BEST12.;

	INFORMAT _401 BEST32.;
	FORMAT _401 BEST12.;

	INFORMAT _402 BEST32.;
	FORMAT _402 BEST12.;

	INFORMAT _403 BEST32.;
	FORMAT _403 BEST12.;

	INFORMAT _404 BEST32.;
	FORMAT _404 BEST12.;

	INFORMAT _405 BEST32.;
	FORMAT _405 BEST12.;

	INFORMAT _406 BEST32.;
	FORMAT _406 BEST12.;

	INFORMAT _408 BEST32.;
	FORMAT _408 BEST12.;

	INFORMAT _411 BEST32.;
	FORMAT _411 BEST12.;

	INFORMAT _412 BEST32.;
	FORMAT _412 BEST12.;

	INFORMAT _413 BEST32.;
	FORMAT _413 BEST12.;

	INFORMAT _414 BEST32.;
	FORMAT _414 BEST12.;

	INFORMAT _415 BEST32.;
	FORMAT _415 BEST12.;

	INFORMAT _416 BEST32.;
	FORMAT _416 BEST12.;

	INFORMAT _417 BEST32.;
	FORMAT _417 BEST12.;

	INFORMAT _421 BEST32.;
	FORMAT _421 BEST12.;

	INFORMAT _422 BEST32.;
	FORMAT _422 BEST12.;

	INFORMAT _423 BEST32.;
	FORMAT _423 BEST12.;

	INFORMAT _424 BEST32.;
	FORMAT _424 BEST12.;

	INFORMAT _425 BEST32.;
	FORMAT _425 BEST12.;

	INFORMAT _426 BEST32.;
	FORMAT _426 BEST12.;

	INFORMAT _428 BEST32.;
	FORMAT _428 BEST12.;

	INFORMAT _429 BEST32.;
	FORMAT _429 BEST12.;

	INFORMAT _431 BEST32.;
	FORMAT _431 BEST12.;

	INFORMAT _4310 BEST32.;
	FORMAT _4310 BEST12.;

	INFORMAT _4311 BEST32.;
	FORMAT _4311 BEST12.;

	INFORMAT _4312 BEST32.;
	FORMAT _4312 BEST12.;

	INFORMAT _432 BEST32.;
	FORMAT _432 BEST12.;

	INFORMAT _433 BEST32.;
	FORMAT _433 BEST12.;

	INFORMAT _434 BEST32.;
	FORMAT _434 BEST12.;

	INFORMAT _435 BEST32.;
	FORMAT _435 BEST12.;

	INFORMAT _438 BEST32.;
	FORMAT _438 BEST12.;

	INFORMAT _439 BEST32.;
	FORMAT _439 BEST12.;

	INFORMAT _441 BEST32.;
	FORMAT _441 BEST12.;

	INFORMAT _442 BEST32.;
	FORMAT _442 BEST12.;

	INFORMAT _445 BEST32.;
	FORMAT _445 BEST12.;

	INFORMAT _446 BEST32.;
	FORMAT _446 BEST12.;

	INFORMAT _447 BEST32.;
	FORMAT _447 BEST12.;

	INFORMAT _448 BEST32.;
	FORMAT _448 BEST12.;

	INFORMAT _449 BEST32.;
	FORMAT _449 BEST12.;

	INFORMAT _451 BEST32.;
	FORMAT _451 BEST12.;

	INFORMAT _452 BEST32.;
	FORMAT _452 BEST12.;

	INFORMAT _453 BEST32.;
	FORMAT _453 BEST12.;

	INFORMAT _454 BEST32.;
	FORMAT _454 BEST12.;

	INFORMAT _456 BEST32.;
	FORMAT _456 BEST12.;

	INFORMAT _457 BEST32.;
	FORMAT _457 BEST12.;

	INFORMAT _45a3 BEST32.;
	FORMAT _45a3 BEST12.;

	INFORMAT _461 BEST32.;
	FORMAT _461 BEST12.;

	INFORMAT _462 BEST32.;
	FORMAT _462 BEST12.;

	INFORMAT _463 BEST32.;
	FORMAT _463 BEST12.;

	INFORMAT _472 BEST32.;
	FORMAT _472 BEST12.;

	INFORMAT _473 BEST32.;
	FORMAT _473 BEST12.;

	INFORMAT _475 BEST32.;
	FORMAT _475 BEST12.;

	INFORMAT _476 BEST32.;
	FORMAT _476 BEST12.;

	INFORMAT _477 BEST32.;
	FORMAT _477 BEST12.;

	INFORMAT _478 BEST32.;
	FORMAT _478 BEST12.;

	INFORMAT _481 BEST32.;
	FORMAT _481 BEST12.;

	INFORMAT _482 BEST32.;
	FORMAT _482 BEST12.;

	INFORMAT _483 BEST32.;
	FORMAT _483 BEST12.;

	INFORMAT _484 BEST32.;
	FORMAT _484 BEST12.;

	INPUT
		id_addi
		visit
		_011
		_012
		_013
		_01a1
		_01a2
		_01b1
		_01b2
		_01b3
		_01b4
		_023
		_02a1
		_02a2
		_031
		_032
		_033
		_035
		_036
		_041
		_043
		_045
		_047
		_051
		_0510
		_052
		_053
		_054
		_055
		_056
		_058
		_059
		_061
		_062
		_063
		_064
		_065
		_066
		_067
		_071
		_081
		_082
		_091
		_101
		_1019
		_107
		_111
		_1114
		_1115
		_1116
		_1117
		_1118
		_1119
		_1120
		_1122
		_114
		_115
		_117
		_119
		_121
		_1210
		_122
		_124
		_125
		_126
		_129
		_131
		_132
		_133
		_13b1
		_13b2
		_13b3
		_141
		_1410
		_1411
		_1412
		_1413
		_1414
		_1415
		_1416
		_142
		_143
		_144
		_145
		_146
		_148
		_14b1
		_14b2
		_14b3
		_14c1
		_14c2
		_15a1
		_15a2
		_15a3
		_15a4
		_15b1
		_15b2
		_15b3
		_15b4
		_15b5
		_15b6
		_15c1
		_15c2
		_15c4
		_15c5
		_15d1
		_15d12
		_15d13
		_15d15
		_15d16
		_15d17
		_15d18
		_15d2
		_15d3
		_15d5
		_15d6
		_15d7
		_15d8
		_15e1
		_15e2
		_15e3
		_15e4
		_15e5
		_15e6
		_161
		_162
		_171
		_173
		_174
		_176
		_182
		_183
		_184
		_191
		_192
		_193
		_201
		_202
		_203
		_204
		_205
		_206
		_211
		_2110
		_2111
		_212
		_213
		_214
		_215
		_216
		_217
		_218
		_219
		_2211
		_222
		_223
		_224
		_225
		_226
		_227
		_228
		_231
		_232
		_233
		_235
		_237
		_239
		_241
		_261
		_262
		_265
		_266
		_267
		_268
		_271
		_2710
		_272
		_273
		_274
		_275
		_276
		_277
		_278
		_279
		_282
		_286
		_291
		_2910
		_2911
		_2912
		_2915
		_2916
		_2917
		_2918
		_292
		_2920
		_2921
		_293
		_294
		_295
		_296
		_297
		_298
		_299
		_30a1
		_30a2
		_30a3
		_30a4
		_30a5
		_30b2
		_30b4
		_30b6
		_30b7
		_30b9
		_31a1
		_31a10
		_31a12
		_31a2
		_31a5
		_31a6
		_31a7
		_31a8
		_31a9
		_31b1
		_31b2
		_31b3
		_31b7
		_31c1
		_324
		_331
		_332
		_337
		_338
		_341
		_351
		_352
		_353
		_354
		_361
		_362
		_363
		_365
		_366
		_367
		_371
		_372
		_373
		_374
		_381
		_382
		_383
		_384
		_391
		_392
		_393
		_394
		_396
		_401
		_402
		_403
		_404
		_405
		_406
		_408
		_411
		_412
		_413
		_414
		_415
		_416
		_417
		_421
		_422
		_423
		_424
		_425
		_426
		_428
		_429
		_431
		_4310
		_4311
		_4312
		_432
		_433
		_434
		_435
		_438
		_439
		_441
		_442
		_445
		_446
		_447
		_448
		_449
		_451
		_452
		_453
		_454
		_456
		_457
		_45a3
		_461
		_462
		_463
		_472
		_473
		_475
		_476
		_477
		_478
		_481
		_482
		_483
		_484
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit number"
		_011 = " Milk, Whole"
		_012 = " Milk, Chocolate, Whole"
		_013 = "Misc. Whole Milk & Whole Milk Products (incl. Fortified Drinks)"
		_01a1 = " Milk, 2%"
		_01a2 = " Milk, Chocolate, 2%"
		_01b1 = " Milk, 1%"
		_01b2 = " Milk, Skim"
		_01b3 = " Milk, Chocolate, Skim"
		_01b4 = " Milk, Chocolate, 1%"
		_023 = " Cream, Half/Half"
		_02a1 = " Cream, Substitiute, Powdered"
		_02a2 = " Cream, Substitiute, Liquid"
		_031 = " Pudding, Regular"
		_032 = "Custard"
		_033 = "Cheesecake"
		_035 = " Pudding, Lowfat"
		_036 = " Misc. Pudding, Custard, Cheesecake"
		_041 = " Yogurt, Regular"
		_043 = " Yogurt, Lowfat"
		_045 = " Yogurt, Fat Free"
		_047 = "Misc. Yogurt"
		_051 = " Cheese, Natural"
		_0510 = "Misc. Cheese Products"
		_052 = " Cheese, Natural, Lowfat"
		_053 = " Cheese, Fat Free"
		_054 = " Cheese, Cottage, Whole"
		_055 = " Cheese, Cottage, Low fat"
		_056 = " Cheese, Cottage, Fat Free"
		_058 = " Cheese, Processsed"
		_059 = " Cheese, Processsed, Low fat"
		_061 = " Ice Cream, Whole"
		_062 = " Ice Cream, Low fat"
		_063 = " Ice Cream, Fat Free"
		_064 = " Yogurt, Frozen, Whole"
		_065 = " Yogurt, Frozen, Low fat"
		_066 = " Yogurt, Frozen, Fat Free"
		_067 = " Misc. Ice Cream, Frozen Yogurt"
		_071 = " Peanut Butter, Whole"
		_081 = "Gelatin"
		_082 = "Sherbet"
		_091 = " Butter, Regular"
		_101 = " Margarine, Reg, Stick"
		_1019 = " Margarine-Like, Spread"
		_107 = " Margarine, Reg, Spread, Unk"
		_111 = " Oils, Vegetable"
		_1114 = " Salad Dressing, Fat Free"
		_1115 = " Salad Dressing, Regular"
		_1116 = " Salad Dressing, Lowfat"
		_1117 = " Oils, Olive"
		_1118 = " Mayonnaise, Whole fat"
		_1119 = " Mayonnaise, Low fat"
		_1120 = " Mayonnaise, Imitation, Whole fat"
		_1122 = " Mayonnaise, Fat Free"
		_114 = " Shortening, Vegetable"
		_115 = " Oils, Sesame"
		_117 = " Oils, Corn"
		_119 = " Oils, Canola"
		_121 = " Cream Cheese, Whole fat"
		_1210 = "Gravy"
		_122 = " Cream Cheese, Light"
		_124 = " Sour Cream, Whole"
		_125 = " Sour Cream, Light"
		_126 = " Sour Cream, Fat Free"
		_129 = " Lard, Salt Pork"
		_131 = "Oranges"
		_132 = "Grapefruits"
		_133 = "Misc. Other Citrus Fruits"
		_13b1 = "Orange Juice"
		_13b2 = "Grapefruit Juice"
		_13b3 = "Fortified Citrus Fruit Juices"
		_141 = "Dried Fruit"
		_1410 = "Banana"
		_1411 = "Mango & Papaya"
		_1412 = "Apples and Pears"
		_1413 = "Strawberries"
		_1414 = "Watermelon"
		_1415 = "Cantaloupe"
		_1416 = "Misc. Other Fruits"
		_142 = "Other Tropical Fruit"
		_143 = "Kiwi"
		_144 = "Other Berries"
		_145 = "Avocado"
		_146 = "Apricot"
		_148 = "Other Melons"
		_14b1 = "Fortified Fruit Juices W/Vit C"
		_14b2 = "Misc. Other Fruit Juices"
		_14b3 = "Nectar"
		_14c1 = "Fortified Fruit Drinks"
		_14c2 = " Misc. Fruit Drinks, Nonfortified"
		_15a1 = " Carrots, raw"
		_15a2 = " Sweet Potato, Yam"
		_15a3 = "Winter Squash"
		_15a4 = " Carrots, cooked"
		_15b1 = " Broccoli, Brussel Sprouts"
		_15b2 = " Mustard Greens, Turnip Greens, Collards"
		_15b3 = " Spinach, cooked"
		_15b4 = " Spinach, Raw"
		_15b5 = " Mixed Greens, Leaf Lettuce"
		_15b6 = " Lettuce, Romaine"
		_15c1 = " Tomatoes, raw"
		_15c2 = " Tomatoes, Canned or Cooked"
		_15c4 = "Tomato or Vegetable Juice"
		_15c5 = "Misc. Tomato Products (incl. Salsa)"
		_15d1 = "Other Cruciferous (Cauliflower)"
		_15d12 = " Radish, Raw"
		_15d13 = "Coleslaw"
		_15d15 = "Okra"
		_15d16 = " Green Peas, Sweet Peas"
		_15d17 = "Fried Onion Rings"
		_15d18 = "Misc. Other Vegetables"
		_15d2 = "Green Peppers"
		_15d3 = " Allium (Onion, Shallots, Leeks)"
		_15d5 = " Red, Yellow, Orange Peppers"
		_15d6 = " String Beans, Green Beans"
		_15d7 = "Corn"
		_15d8 = " Lettuce, Iceberg"
		_15e1 = " Potatoes, Boiled/Baked"
		_15e2 = " Potatoes, Fried, French Fries"
		_15e3 = " Potatoes, Mashed"
		_15e4 = "Potato Salad"
		_15e5 = " Potatoes, Stuffed/Twice-Baked"
		_15e6 = "Misc. Potatoes"
		_161 = "Green Banana"
		_162 = "Misc. Root Crops"
		_171 = " Beans, dried, cooked"
		_173 = "Refried beans"
		_174 = "Baked Beans & Pork"
		_176 = " Cowpeas, Blackeyed"
		_182 = "Tofu"
		_183 = " Meat Substitute, (non-Soy)"
		_184 = "Soymilk"
		_191 = " Plantains, Green, Boiled/Baked"
		_192 = " Plantains, Green, Fried"
		_193 = " Plantains, Ripe, Boiled/Baked"
		_201 = " Eggs, Regular"
		_202 = "Egg Salad"
		_203 = "Egg Substitute"
		_204 = " Eggs, Fried"
		_205 = " Eggs, Fast Food"
		_206 = " Eggs, Mixed Dishes"
		_211 = " Chicken/Turkey, Light Meat, Broil, W/Skin"
		_2110 = " Chicken/Turkey, Dark Meat, Fried, W/Skin"
		_2111 = " Chicken/Turkey, Dark Meat, Fried, WO/Skin"
		_212 = " Chicken/Turkey, Light Meat, Broil, WO/Skin"
		_213 = " Chicken/Turkey, Mixed Dishes"
		_214 = " Chicken/Turkey, Fast Food"
		_215 = " Chicken/Turkey, Light Meat, Fried, W/Skin"
		_216 = " Chicken/Turkey, Light Meat, Fried, WO/Skin"
		_217 = " Chicken/Turkey, Ground"
		_218 = " Chicken/Turkey, Dark Meat, Broil, W/Skin"
		_219 = " Chicken/Turkey, Dark Meat, Broil, WO/Skin"
		_2211 = " Beef, High Fat (Eg: Shortribs)"
		_222 = " Beef, Ground, Regular"
		_223 = " Beef, Ground, Lean"
		_224 = " Beef, Ground, Extra Lean"
		_225 = " Beef, Hamburgers, Fast Food"
		_226 = " Beef, Fried"
		_227 = " Beef, Lean Cut or Trimmed Fat"
		_228 = " Beef, Mixed Dishes"
		_231 = " Pork, Regular"
		_232 = " Pork, Mixed Dishes"
		_233 = " Pork, Light"
		_235 = " Pork, Fried"
		_237 = " Pork, Ground"
		_239 = "Misc. Pork"
		_241 = " Lamb or Veal, Regular"
		_261 = " Deli/Luncheon Meat, Regular"
		_262 = " Deli/Luncheon Meat, Lean"
		_265 = " Sausage, Hot dogs, Regular"
		_266 = " Bacon, Breakfast Sausage"
		_267 = " Sausage, Hot Dogs, Turkey or other Lowfat"
		_268 = "Misc. Processed Meat (incl Mixed Dishes)"
		_271 = " Fish, Regular"
		_2710 = " Fish, Sardines, Other Canned Fish (Not Tuna)"
		_272 = " Fish, Fried"
		_273 = " Fish, Mixed Dishes"
		_274 = " Fish, Fast Food"
		_275 = " Fish, Tuna, canned, Oil Pack"
		_276 = " Fish, Tuna, canned, Water Pack"
		_277 = "Shellfish"
		_278 = "Tunafish Salad & Sandwich"
		_279 = "Misc. Fish"
		_282 = " Liver, Fried"
		_286 = "Misc. Liver & Organ Meats"
		_291 = " Cakes, Regular"
		_2910 = " Pies, Crisps, Cobblers"
		_2911 = " Misc. Other Baked Goods, Regular"
		_2912 = " Misc. Other Baked Goods, Light"
		_2915 = "Doughnut"
		_2916 = "Sweet Potato Pie"
		_2917 = "Sweet Roll"
		_2918 = " Granola Bar, Regular"
		_292 = " Cakes, Light"
		_2920 = " Cereal Bars, Pop Tarts"
		_2921 = " Muffins, High Fiber"
		_293 = " Cakes, Fat Free"
		_294 = " Cookies, Regular"
		_295 = " Cookies, Light"
		_296 = " Cookies, Fat Free"
		_297 = " Muffins, Regular"
		_298 = " Muffins, Light"
		_299 = " Muffins, Fat Free"
		_30a1 = " Misc. Cold Cereals, Regular"
		_30a2 = " Cereals, Cold, Fortified"
		_30a3 = " Cereals, Cold, Oat/Bran"
		_30a4 = " Misc. Cold Cereals, High Fiber"
		_30a5 = " Cereals, Granola"
		_30b2 = " Cereals, Hot Oatmeal, Regular, Prepared"
		_30b4 = " Cereals, Hot Oatmeal, Instant, Fortified, Prepared"
		_30b6 = " Cereals, Hot Cream of Wheat, Regular, Prepared"
		_30b7 = " Cereals, Grits (Corn/Hominy), Prepared"
		_30b9 = " Misc. Hot Breakfast Cereals, Regular"
		_31a1 = " Breads, White Bread, Regular"
		_31a10 = " Misc. Other breads, Not Whole Grain"
		_31a12 = " Crackers, reduced fat"
		_31a2 = " White Bread, Light"
		_31a5 = " Crackers, Regular"
		_31a6 = "Biscuits"
		_31a7 = "Bagel"
		_31a8 = " Pancakes, Waffles"
		_31a9 = " Breads, Cracked Wheat"
		_31b1 = " Breads, Whole Wheat, Regular"
		_31b2 = " Breads, Whole Wheat, Light"
		_31b3 = " Breads, Rye, Regular"
		_31b7 = " Breads, Other Whole Grain"
		_31c1 = " Breads, Cornbread or Corn Muffins"
		_324 = " Flour, Baking Ingredients"
		_331 = " Rice, Plain, White"
		_332 = " Rice, Fried"
		_337 = " Rice, Brown"
		_338 = "Misc. Rice (incl. Yellow & Spinach Rice)"
		_341 = " Pasta, Plain Noodles"
		_351 = " Tortilla, Flour"
		_352 = " Tortilla, Corn (inc whole wheat)"
		_353 = "Mexican Dishes (incl. Burritos or Tacos W/Meat or Beans)"
		_354 = " Turnovers, Empanadas, Eggrolls"
		_361 = " Potato Chips, Regular"
		_362 = " Salty Snacks, Light"
		_363 = " Salty Snacks, Fat Free"
		_365 = "Popcorn"
		_366 = "Pretzels"
		_367 = " Corn Chips, Snack Type"
		_371 = " Pizza, Plain"
		_372 = "Pizza W/Vegetables"
		_373 = "Pizza W/Meat"
		_374 = "Pizza W/Meat & Vegetables"
		_381 = " Cola, Diet, W/Caffeine"
		_382 = " Cola, Diet, Caffeine Free"
		_383 = " Non-Cola, Diet"
		_384 = "Misc. Diet Soft Drinks/Soda"
		_391 = " Cola, W/Caffeine"
		_392 = " Cola, Caffeine Free"
		_393 = "Other Non-cola Soda W/Caffeine"
		_394 = " Other Non-cola Soda, Caffeine Free"
		_396 = "Misc. Soft Drinks/Soda"
		_401 = " Coffee, Regular"
		_402 = " Coffee, Decaf"
		_403 = "Tea (Brewed or Unsweetened)"
		_404 = " Tea, Herb"
		_405 = " Tea, Iced"
		_406 = " Tea, Green"
		_408 = "Misc. Coffee & Tea"
		_411 = " Beer, Regular"
		_412 = " Beer, Light"
		_413 = " Wine, Red"
		_414 = " Wine, White"
		_415 = "Liquor"
		_416 = "Mixed Drinks"
		_417 = "Misc. Alcohol"
		_421 = "Almonds"
		_422 = "Peanuts"
		_423 = "Walnuts"
		_424 = "Sunflower Seeds"
		_425 = "Soy Nuts"
		_426 = "Pecans"
		_428 = "Cashews"
		_429 = "Misc. Nuts & Seeds (incl. Coconut)"
		_431 = " Homemade Soups, Cream Based"
		_4310 = "Ramen Noodles"
		_4311 = "Fish Chowder"
		_4312 = "Misc. Soups"
		_432 = " Homemade Soups, MW/Water"
		_433 = " Veg & Tom Soups, Cream Based"
		_434 = " Veg & Tom Soups, MW/Water"
		_435 = " Other Soups, Canned W/H20"
		_438 = " Other Canned Soups, Cream Based"
		_439 = " Soups, Dry Cubes"
		_441 = "Basil"
		_442 = " Parsley, Fresh"
		_445 = " Garlic, Powder"
		_446 = " Garlic, Fresh"
		_447 = "Other Herbs & Spices"
		_448 = "Salt"
		_449 = "Pepper"
		_451 = " Other Candy, Regular"
		_452 = "Syrup"
		_453 = " Jams, Jellies"
		_454 = " Sugar, Plain"
		_456 = "Chocolate Candy"
		_457 = "Misc. Candy & Sweets"
		_45a3 = "Artificial Sugars"
		_461 = "Mustard"
		_462 = "Relish"
		_463 = "All Other Condiment Misc. Food Items"
		_472 = "Supplements - Instant Breakfast"
		_473 = "Supplements - Breakfast Bar"
		_475 = " Supplements - Slim Fast, Powder Prepared"
		_476 = " Supplements - Ultra Slim Fast, Ready-to-drink"
		_477 = "Misc. Supplements - Vitamins"
		_478 = "Misc. Supplements - Antacids"
		_481 = " Water, Tap "
		_482 = " Water, Sparkling/Carbonated"
		_483 = " Water, Mineral"
		_484 = " Water, Spring"
	;
RUN;


        DATA nutr_blsaallfg1serv;
            SET WORK.IMPORT;
        RUN;
        