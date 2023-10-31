%let path_to_file = '../data-csv/nutr_blsaallf.csv';
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

	INFORMAT f_gramamt BEST32.;
	FORMAT f_gramamt BEST12.;

	INFORMAT f_kcal BEST32.;
	FORMAT f_kcal BEST12.;

	INFORMAT f_kj BEST32.;
	FORMAT f_kj BEST12.;

	INFORMAT f_tcho BEST32.;
	FORMAT f_tcho BEST12.;

	INFORMAT f_fat BEST32.;
	FORMAT f_fat BEST12.;

	INFORMAT f_pro BEST32.;
	FORMAT f_pro BEST12.;

	INFORMAT f_vpro BEST32.;
	FORMAT f_vpro BEST12.;

	INFORMAT f_apro BEST32.;
	FORMAT f_apro BEST12.;

	INFORMAT f_alc BEST32.;
	FORMAT f_alc BEST12.;

	INFORMAT f_chol BEST32.;
	FORMAT f_chol BEST12.;

	INFORMAT f_sfa BEST32.;
	FORMAT f_sfa BEST12.;

	INFORMAT f_mfa BEST32.;
	FORMAT f_mfa BEST12.;

	INFORMAT f_pfa BEST32.;
	FORMAT f_pfa BEST12.;

	INFORMAT f_fruc BEST32.;
	FORMAT f_fruc BEST12.;

	INFORMAT f_gala BEST32.;
	FORMAT f_gala BEST12.;

	INFORMAT f_gluc BEST32.;
	FORMAT f_gluc BEST12.;

	INFORMAT f_lact BEST32.;
	FORMAT f_lact BEST12.;

	INFORMAT f_malt BEST32.;
	FORMAT f_malt BEST12.;

	INFORMAT f_sucr BEST32.;
	FORMAT f_sucr BEST12.;

	INFORMAT f_star BEST32.;
	FORMAT f_star BEST12.;

	INFORMAT f_tsugar BEST32.;
	FORMAT f_tsugar BEST12.;

	INFORMAT f_dfib BEST32.;
	FORMAT f_dfib BEST12.;

	INFORMAT f_wsdf BEST32.;
	FORMAT f_wsdf BEST12.;

	INFORMAT f_ifib BEST32.;
	FORMAT f_ifib BEST12.;

	INFORMAT f_pect BEST32.;
	FORMAT f_pect BEST12.;

	INFORMAT f_va BEST32.;
	FORMAT f_va BEST12.;

	INFORMAT f_acar BEST32.;
	FORMAT f_acar BEST12.;

	INFORMAT f_bceq BEST32.;
	FORMAT f_bceq BEST12.;

	INFORMAT f_bcar BEST32.;
	FORMAT f_bcar BEST12.;

	INFORMAT f_rl BEST32.;
	FORMAT f_rl BEST12.;

	INFORMAT f_varae BEST32.;
	FORMAT f_varae BEST12.;

	INFORMAT f_vare BEST32.;
	FORMAT f_vare BEST12.;

	INFORMAT f_bcry BEST32.;
	FORMAT f_bcry BEST12.;

	INFORMAT f_lyco BEST32.;
	FORMAT f_lyco BEST12.;

	INFORMAT f_lz BEST32.;
	FORMAT f_lz BEST12.;

	INFORMAT f_vb6 BEST32.;
	FORMAT f_vb6 BEST12.;

	INFORMAT f_vb12 BEST32.;
	FORMAT f_vb12 BEST12.;

	INFORMAT f_fol BEST32.;
	FORMAT f_fol BEST12.;

	INFORMAT f_dfe BEST32.;
	FORMAT f_dfe BEST12.;

	INFORMAT f_nfol BEST32.;
	FORMAT f_nfol BEST12.;

	INFORMAT f_sfol BEST32.;
	FORMAT f_sfol BEST12.;

	INFORMAT f_nia BEST32.;
	FORMAT f_nia BEST12.;

	INFORMAT f_niaeq BEST32.;
	FORMAT f_niaeq BEST12.;

	INFORMAT f_pant BEST32.;
	FORMAT f_pant BEST12.;

	INFORMAT f_thi BEST32.;
	FORMAT f_thi BEST12.;

	INFORMAT f_rib BEST32.;
	FORMAT f_rib BEST12.;

	INFORMAT f_choline BEST32.;
	FORMAT f_choline BEST12.;

	INFORMAT f_ttc BEST32.;
	FORMAT f_ttc BEST12.;

	INFORMAT f_atc BEST32.;
	FORMAT f_atc BEST12.;

	INFORMAT f_natatoc BEST32.;
	FORMAT f_natatoc BEST12.;

	INFORMAT f_synatoc BEST32.;
	FORMAT f_synatoc BEST12.;

	INFORMAT f_btc BEST32.;
	FORMAT f_btc BEST12.;

	INFORMAT f_dtc BEST32.;
	FORMAT f_dtc BEST12.;

	INFORMAT f_gtc BEST32.;
	FORMAT f_gtc BEST12.;

	INFORMAT f_vc BEST32.;
	FORMAT f_vc BEST12.;

	INFORMAT f_vd BEST32.;
	FORMAT f_vd BEST12.;

	INFORMAT f_vite BEST32.;
	FORMAT f_vite BEST12.;

	INFORMAT f_vk BEST32.;
	FORMAT f_vk BEST12.;

	INFORMAT f_ca BEST32.;
	FORMAT f_ca BEST12.;

	INFORMAT f_cu BEST32.;
	FORMAT f_cu BEST12.;

	INFORMAT f_fe BEST32.;
	FORMAT f_fe BEST12.;

	INFORMAT f_k BEST32.;
	FORMAT f_k BEST12.;

	INFORMAT f_na BEST32.;
	FORMAT f_na BEST12.;

	INFORMAT f_mg BEST32.;
	FORMAT f_mg BEST12.;

	INFORMAT f_mn BEST32.;
	FORMAT f_mn BEST12.;

	INFORMAT f_se BEST32.;
	FORMAT f_se BEST12.;

	INFORMAT f_zn BEST32.;
	FORMAT f_zn BEST12.;

	INFORMAT f_p BEST32.;
	FORMAT f_p BEST12.;

	INFORMAT f_s04_0 BEST32.;
	FORMAT f_s04_0 BEST12.;

	INFORMAT f_s06_0 BEST32.;
	FORMAT f_s06_0 BEST12.;

	INFORMAT f_s08_0 BEST32.;
	FORMAT f_s08_0 BEST12.;

	INFORMAT f_s10_0 BEST32.;
	FORMAT f_s10_0 BEST12.;

	INFORMAT f_s12_0 BEST32.;
	FORMAT f_s12_0 BEST12.;

	INFORMAT f_s14_0 BEST32.;
	FORMAT f_s14_0 BEST12.;

	INFORMAT f_s16_0 BEST32.;
	FORMAT f_s16_0 BEST12.;

	INFORMAT f_s17_0 BEST32.;
	FORMAT f_s17_0 BEST12.;

	INFORMAT f_s18_0 BEST32.;
	FORMAT f_s18_0 BEST12.;

	INFORMAT f_s20_0 BEST32.;
	FORMAT f_s20_0 BEST12.;

	INFORMAT f_s22_0 BEST32.;
	FORMAT f_s22_0 BEST12.;

	INFORMAT f_m14_1 BEST32.;
	FORMAT f_m14_1 BEST12.;

	INFORMAT f_m16_1 BEST32.;
	FORMAT f_m16_1 BEST12.;

	INFORMAT f_m18_1 BEST32.;
	FORMAT f_m18_1 BEST12.;

	INFORMAT f_m20_1 BEST32.;
	FORMAT f_m20_1 BEST12.;

	INFORMAT f_m22_1 BEST32.;
	FORMAT f_m22_1 BEST12.;

	INFORMAT f_p18_2 BEST32.;
	FORMAT f_p18_2 BEST12.;

	INFORMAT f_p18_3 BEST32.;
	FORMAT f_p18_3 BEST12.;

	INFORMAT f_p18_4 BEST32.;
	FORMAT f_p18_4 BEST12.;

	INFORMAT f_p20_4 BEST32.;
	FORMAT f_p20_4 BEST12.;

	INFORMAT f_p20_5 BEST32.;
	FORMAT f_p20_5 BEST12.;

	INFORMAT f_p22_5 BEST32.;
	FORMAT f_p22_5 BEST12.;

	INFORMAT f_p22_6 BEST32.;
	FORMAT f_p22_6 BEST12.;

	INFORMAT f_f161t BEST32.;
	FORMAT f_f161t BEST12.;

	INFORMAT f_f181t BEST32.;
	FORMAT f_f181t BEST12.;

	INFORMAT f_f182t BEST32.;
	FORMAT f_f182t BEST12.;

	INFORMAT f_ttfa BEST32.;
	FORMAT f_ttfa BEST12.;

	INFORMAT f_omega3 BEST32.;
	FORMAT f_omega3 BEST12.;

	INFORMAT f_cyst BEST32.;
	FORMAT f_cyst BEST12.;

	INFORMAT f_glut BEST32.;
	FORMAT f_glut BEST12.;

	INFORMAT f_glyc BEST32.;
	FORMAT f_glyc BEST12.;

	INFORMAT f_isol BEST32.;
	FORMAT f_isol BEST12.;

	INFORMAT f_hist BEST32.;
	FORMAT f_hist BEST12.;

	INFORMAT f_leuc BEST32.;
	FORMAT f_leuc BEST12.;

	INFORMAT f_lysi BEST32.;
	FORMAT f_lysi BEST12.;

	INFORMAT f_meth BEST32.;
	FORMAT f_meth BEST12.;

	INFORMAT f_phen BEST32.;
	FORMAT f_phen BEST12.;

	INFORMAT f_prol BEST32.;
	FORMAT f_prol BEST12.;

	INFORMAT f_seri BEST32.;
	FORMAT f_seri BEST12.;

	INFORMAT f_thre BEST32.;
	FORMAT f_thre BEST12.;

	INFORMAT f_tryp BEST32.;
	FORMAT f_tryp BEST12.;

	INFORMAT f_alan BEST32.;
	FORMAT f_alan BEST12.;

	INFORMAT f_argi BEST32.;
	FORMAT f_argi BEST12.;

	INFORMAT f_aspa BEST32.;
	FORMAT f_aspa BEST12.;

	INFORMAT f_tyro BEST32.;
	FORMAT f_tyro BEST12.;

	INFORMAT f_vali BEST32.;
	FORMAT f_vali BEST12.;

	INFORMAT f_mh3 BEST32.;
	FORMAT f_mh3 BEST12.;

	INFORMAT f_aspt BEST32.;
	FORMAT f_aspt BEST12.;

	INFORMAT f_sacc BEST32.;
	FORMAT f_sacc BEST12.;

	INFORMAT f_glyt BEST32.;
	FORMAT f_glyt BEST12.;

	INFORMAT f_coum BEST32.;
	FORMAT f_coum BEST12.;

	INFORMAT f_daid BEST32.;
	FORMAT f_daid BEST12.;

	INFORMAT f_betaine BEST32.;
	FORMAT f_betaine BEST12.;

	INFORMAT f_bioa BEST32.;
	FORMAT f_bioa BEST12.;

	INFORMAT f_formon BEST32.;
	FORMAT f_formon BEST12.;

	INFORMAT f_geni BEST32.;
	FORMAT f_geni BEST12.;

	INFORMAT f_eryth BEST32.;
	FORMAT f_eryth BEST12.;

	INFORMAT f_maltito BEST32.;
	FORMAT f_maltito BEST12.;

	INFORMAT f_mani BEST32.;
	FORMAT f_mani BEST12.;

	INFORMAT f_inos BEST32.;
	FORMAT f_inos BEST12.;

	INFORMAT f_isom BEST32.;
	FORMAT f_isom BEST12.;

	INFORMAT f_lactl BEST32.;
	FORMAT f_lactl BEST12.;

	INFORMAT f_pini BEST32.;
	FORMAT f_pini BEST12.;

	INFORMAT f_sorb BEST32.;
	FORMAT f_sorb BEST12.;

	INFORMAT f_xyli BEST32.;
	FORMAT f_xyli BEST12.;

	INFORMAT f_acho BEST32.;
	FORMAT f_acho BEST12.;

	INFORMAT f_asugar BEST32.;
	FORMAT f_asugar BEST12.;

	INFORMAT f_sucl BEST32.;
	FORMAT f_sucl BEST12.;

	INFORMAT f_acesk BEST32.;
	FORMAT f_acesk BEST12.;

	INFORMAT f_oxal BEST32.;
	FORMAT f_oxal BEST12.;

	INFORMAT f_phyt BEST32.;
	FORMAT f_phyt BEST12.;

	INFORMAT f_sp BEST32.;
	FORMAT f_sp BEST12.;

	INFORMAT f_caf BEST32.;
	FORMAT f_caf BEST12.;

	INFORMAT f_ash BEST32.;
	FORMAT f_ash BEST12.;

	INFORMAT f_w BEST32.;
	FORMAT f_w BEST12.;

	INFORMAT f_nitr BEST32.;
	FORMAT f_nitr BEST12.;

	INFORMAT f_grain_tot BEST32.;
	FORMAT f_grain_tot BEST12.;

	INFORMAT f_grain_who BEST32.;
	FORMAT f_grain_who BEST12.;

	INFORMAT f_grain_nwh BEST32.;
	FORMAT f_grain_nwh BEST12.;

	INFORMAT f_gl BEST32.;
	FORMAT f_gl BEST12.;

	INFORMAT f_gi BEST32.;
	FORMAT f_gi BEST12.;

	INFORMAT age_cat $1.;
	FORMAT age_cat $1.;

	INFORMAT diet_type $16.;
	FORMAT diet_type $16.;

	INFORMAT meal_place_brk $10.;
	FORMAT meal_place_brk $10.;

	INFORMAT meal_place_lun $10.;
	FORMAT meal_place_lun $10.;

	INFORMAT meal_place_din $10.;
	FORMAT meal_place_din $10.;

	INFORMAT supp_use BEST32.;
	FORMAT supp_use BEST12.;

	INFORMAT supdur_1 BEST32.;
	FORMAT supdur_1 BEST12.;

	INFORMAT supdur_2 BEST32.;
	FORMAT supdur_2 BEST12.;

	INFORMAT supdur_3 BEST32.;
	FORMAT supdur_3 BEST12.;

	INFORMAT supdur_4 BEST32.;
	FORMAT supdur_4 BEST12.;

	INFORMAT supdur_5 BEST32.;
	FORMAT supdur_5 BEST12.;

	INFORMAT supdur_6 BEST32.;
	FORMAT supdur_6 BEST12.;

	INFORMAT supdur_7 BEST32.;
	FORMAT supdur_7 BEST12.;

	INFORMAT supdur_8 BEST32.;
	FORMAT supdur_8 BEST12.;

	INFORMAT supdur_9 BEST32.;
	FORMAT supdur_9 BEST12.;

	INFORMAT supdur_10 BEST32.;
	FORMAT supdur_10 BEST12.;

	INFORMAT supdur_11 BEST32.;
	FORMAT supdur_11 BEST12.;

	INFORMAT supdur_12 BEST32.;
	FORMAT supdur_12 BEST12.;

	INFORMAT supdur_13 BEST32.;
	FORMAT supdur_13 BEST12.;

	INFORMAT supdur_14 BEST32.;
	FORMAT supdur_14 BEST12.;

	INFORMAT supdur_15 BEST32.;
	FORMAT supdur_15 BEST12.;

	INFORMAT supdur_16 BEST32.;
	FORMAT supdur_16 BEST12.;

	INFORMAT supdur_17 BEST32.;
	FORMAT supdur_17 BEST12.;

	INFORMAT supdur_18 BEST32.;
	FORMAT supdur_18 BEST12.;

	INFORMAT supdur_19 BEST32.;
	FORMAT supdur_19 BEST12.;

	INFORMAT frt_variety BEST32.;
	FORMAT frt_variety BEST12.;

	INFORMAT frt_frq_reported BEST32.;
	FORMAT frt_frq_reported BEST12.;

	INFORMAT veg_variety BEST32.;
	FORMAT veg_variety BEST12.;

	INFORMAT veg_frq_reported BEST32.;
	FORMAT veg_frq_reported BEST12.;

	INFORMAT invalid BEST32.;
	FORMAT invalid BEST12.;

	INPUT
		id_addi
		visit
		f_gramamt
		f_kcal
		f_kj
		f_tcho
		f_fat
		f_pro
		f_vpro
		f_apro
		f_alc
		f_chol
		f_sfa
		f_mfa
		f_pfa
		f_fruc
		f_gala
		f_gluc
		f_lact
		f_malt
		f_sucr
		f_star
		f_tsugar
		f_dfib
		f_wsdf
		f_ifib
		f_pect
		f_va
		f_acar
		f_bceq
		f_bcar
		f_rl
		f_varae
		f_vare
		f_bcry
		f_lyco
		f_lz
		f_vb6
		f_vb12
		f_fol
		f_dfe
		f_nfol
		f_sfol
		f_nia
		f_niaeq
		f_pant
		f_thi
		f_rib
		f_choline
		f_ttc
		f_atc
		f_natatoc
		f_synatoc
		f_btc
		f_dtc
		f_gtc
		f_vc
		f_vd
		f_vite
		f_vk
		f_ca
		f_cu
		f_fe
		f_k
		f_na
		f_mg
		f_mn
		f_se
		f_zn
		f_p
		f_s04_0
		f_s06_0
		f_s08_0
		f_s10_0
		f_s12_0
		f_s14_0
		f_s16_0
		f_s17_0
		f_s18_0
		f_s20_0
		f_s22_0
		f_m14_1
		f_m16_1
		f_m18_1
		f_m20_1
		f_m22_1
		f_p18_2
		f_p18_3
		f_p18_4
		f_p20_4
		f_p20_5
		f_p22_5
		f_p22_6
		f_f161t
		f_f181t
		f_f182t
		f_ttfa
		f_omega3
		f_cyst
		f_glut
		f_glyc
		f_isol
		f_hist
		f_leuc
		f_lysi
		f_meth
		f_phen
		f_prol
		f_seri
		f_thre
		f_tryp
		f_alan
		f_argi
		f_aspa
		f_tyro
		f_vali
		f_mh3
		f_aspt
		f_sacc
		f_glyt
		f_coum
		f_daid
		f_betaine
		f_bioa
		f_formon
		f_geni
		f_eryth
		f_maltito
		f_mani
		f_inos
		f_isom
		f_lactl
		f_pini
		f_sorb
		f_xyli
		f_acho
		f_asugar
		f_sucl
		f_acesk
		f_oxal
		f_phyt
		f_sp
		f_caf
		f_ash
		f_w
		f_nitr
		f_grain_tot
		f_grain_who
		f_grain_nwh
		f_gl
		f_gi
		age_cat
		diet_type
		meal_place_brk
		meal_place_lun
		meal_place_din
		supp_use
		supdur_1
		supdur_2
		supdur_3
		supdur_4
		supdur_5
		supdur_6
		supdur_7
		supdur_8
		supdur_9
		supdur_10
		supdur_11
		supdur_12
		supdur_13
		supdur_14
		supdur_15
		supdur_16
		supdur_17
		supdur_18
		supdur_19
		frt_variety
		frt_frq_reported
		veg_variety
		veg_frq_reported
		invalid
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit number"
		f_gramamt = "Gram Amount of Food (g) (food)"
		f_kcal = "Energy (kcal) (food)"
		f_kj = "Energy (kilojoules) (kj) (food)"
		f_tcho = "Total Carbohydrate (g) (food)"
		f_fat = "Total Fat (g) (food)"
		f_pro = "Total Protein (g) (food)"
		f_vpro = "Vegetable Protein (g) (food)"
		f_apro = "Animal Protein (g) (food)"
		f_alc = "Alcohol (g) (food)"
		f_chol = "Cholesterol (mg) (food)"
		f_sfa = "Total Saturated Fatty Acids (SFA) (g) (food)"
		f_mfa = "Total Monounsaturated Fatty Acids (MUFA) (g) (food)"
		f_pfa = "Total Polyunsaturated Fatty Acids (PUFA) (g) (food)"
		f_fruc = "Fructose (g) (food)"
		f_gala = "Galactose (g) (food)"
		f_gluc = "Glucose (g) (food)"
		f_lact = "Lactose (g) (food)"
		f_malt = "Maltose (g) (food)"
		f_sucr = "Sucrose (g) (food)"
		f_star = "Starch (g) (food)"
		f_tsugar = "Total Sugars (g) (food)"
		f_dfib = "Total Dietary Fiber (g) (food)"
		f_wsdf = "Soluble Dietary Fiber (g) (food)"
		f_ifib = "Insoluble Dietary Fiber (g) (food)"
		f_pect = "Pectins (g) (food)"
		f_va = "Total Vitamin A Activity (International Units) (IU) (food)"
		f_acar = "Alpha-Carotene (provitamin A carotenoid) (ug) (food)"
		f_bceq = "Beta-Carotene Equivalents (ug) (food)"
		f_bcar = "Beta-Carotene (provitamin A carotenoid) (ug) (food)"
		f_rl = "Retinol (ug) (food)"
		f_varae = "Total Vitamin A Activity (Retinol Activity Equivalents)(ug) (food)"
		f_vare = "Total Vitamin A Activity (Retinol Equivalents) (ug) (food)"
		f_bcry = "Beta-Cryptoxanthin (provitamin A caroteniod) (ug) (food)"
		f_lyco = "Lycopene (ug) (food)"
		f_lz = "Lutein + Zeaxanthin (ug) (food)"
		f_vb6 = "Vitamin B-6 (pyridoxine, pyridoxyl, & pyridoxamine) (mg) (food)"
		f_vb12 = "Vitamin B-12 (cobalamin) (ug) (food)"
		f_fol = "Total Folate (ug) (food)"
		f_dfe = "Dietary Folate Equivalents (ug) (food)"
		f_nfol = "Natural Folate (ug) (food)"
		f_sfol = "Synthetic Folate (ug) (food)"
		f_nia = "Niacin (vitamin B3) (mg) (food)"
		f_niaeq = "Niacin Equivalents (mg) (food)"
		f_pant = "Pantothenic acid (mg) (food)"
		f_thi = "Thiamin (vitamin B1) (mg) (food)"
		f_rib = "Riboflavin (vitamin B2) (mg) (food)"
		f_choline = "Choline (mg) (food)"
		f_ttc = "Total Alpha-Tocopherol Equivalents (mg) (food)"
		f_atc = "Vitamin E (Total Alpha-Tocopherol) (mg) (food)"
		f_natatoc = "Natural Alpha-Tocopherol (mg) (food)"
		f_synatoc = "Synthetic Alpha-Tocopherol (mg) (food)"
		f_btc = "Beta-Tocopherol (mg) (food)"
		f_dtc = "Delta-Tocopherol (mg) (food)"
		f_gtc = "Gamma-Tocopherol (mg) (food)"
		f_vc = "Vitamin C (ascorbic acid) (mg) (food)"
		f_vd = "Vitamin D (calciferol) (ug) (food)"
		f_vite = "Vitamin E (International Units) (IU) (food)"
		f_vk = "Vitamin K (phylloquinone) (ug) (food)"
		f_ca = "Calcium (mg) (food)"
		f_cu = "Copper (mg) (food)"
		f_fe = "Iron (mg) (food)"
		f_k = "Potassium (mg) (food)"
		f_na = "Sodium (mg) (food)"
		f_mg = "Magnesium (mg) (food)"
		f_mn = "Manganese (mg) (food)"
		f_se = "Selenium (ug) (food)"
		f_zn = "Zinc (mg) (food)"
		f_p = "Phosphorus (mg) (food)"
		f_s04_0 = "SFA 4:0 (butyric acid) (g) (food)"
		f_s06_0 = "SFA 6:0 (caproic acid) (g) (food)"
		f_s08_0 = "SFA 8:0 (caprylic acid) (g) (food)"
		f_s10_0 = "SFA 10:0 (capric acid) (g) (food)"
		f_s12_0 = "SFA 12:0 (lauric acid) (g) (food)"
		f_s14_0 = "SFA 14:0 (myristic acid) (g) (food)"
		f_s16_0 = "SFA 16:0 (palmitic acid) (g) (food)"
		f_s17_0 = "SFA 17:0 (margaric acid) (g) (food)"
		f_s18_0 = "SFA 18:0 (stearic acid) (g) (food)"
		f_s20_0 = "SFA 20:0 (arachidic acid) (g) (food)"
		f_s22_0 = "SFA 22:0 (behenic acid) (g) (food)"
		f_m14_1 = "MUFA 14:1 (myristoleic acid) (g) (food)"
		f_m16_1 = "MUFA 16:1 (palmitoleic acid) (g) (food)"
		f_m18_1 = "MUFA 18:1 (oleic acid) (g) (food)"
		f_m20_1 = "MUFA 20:1 (gadoleic acid) (g) (food)"
		f_m22_1 = "MUFA 22:1 (erucic acid) (g) (food)"
		f_p18_2 = "PUFA 18:2 (linoleic acid) (g) (food)"
		f_p18_3 = "PUFA 18:3 (linolenic acid) (g) (food)"
		f_p18_4 = "PUFA 18:4 (parinaric acid) (g) (food)"
		f_p20_4 = "PUFA 20:4 (arachidonic acid) (g) (food)"
		f_p20_5 = "PUFA 20:5 (eicosapentaenoic acid [EPA]) (g) (food)"
		f_p22_5 = "PUFA 22:5 (docosapentaenoic acid [DPA]) (g) (food)"
		f_p22_6 = "PUFA 22:6 (docosahexaenoic acid [DHA]) (g) (food)"
		f_f161t = "TRANS 16:1 (trans-hexadecenoic acid) (g) (food)"
		f_f181t = "TRANS 18:1 (trans-octadecenoic acid [elaidic acid]) (g) (food)"
		f_f182t = "TRANS 18:2 (trans-octadecadienoic acid (g) (food)"
		f_ttfa = "Total Trans-Fatty Acids (TRANS) (g) (food)"
		f_omega3 = "Omega-3 Fatty Acids (g) (food)"
		f_cyst = "Cystine (g) (food)"
		f_glut = "Glutamic Acid (g) (food)"
		f_glyc = "Glycine (g) (food)"
		f_isol = "Isoleucine (g) (food)"
		f_hist = "Histidine (g) (food)"
		f_leuc = "Leucine (g) (food)"
		f_lysi = "Lysine (g) (food)"
		f_meth = "Methionine (g) (food)"
		f_phen = "Phenylalanine (g) (food)"
		f_prol = "Proline (g) (food)"
		f_seri = "Serine (g) (food)"
		f_thre = "Threonine (g) (food)"
		f_tryp = "Tryptophan (g) (food)"
		f_alan = "Alanine (g) (food)"
		f_argi = "Arginine (g) (food)"
		f_aspa = "Aspartic Acid (g) (food)"
		f_tyro = "Tyrosine (g) (food)"
		f_vali = "Valine (g) (food)"
		f_mh3 = "3-Methylhistidine (mg) (food)"
		f_aspt = "Aspartame (mg) (food)"
		f_sacc = "Saccharin (mg) (food)"
		f_glyt = "Glycitein (mg) (food)"
		f_coum = "Coumestrol (mg) (food)"
		f_daid = "Daidzein (mg) (food)"
		f_betaine = "Betaine (mg) (food)"
		f_bioa = "Biochanin A (mg) (food)"
		f_formon = "Formononetin (mg) (food)"
		f_geni = "Genistein (mg) (food)"
		f_eryth = "Erythritol (g) (food)"
		f_maltito = "Maltitol (g) (food)"
		f_mani = "Mannitol (g) (food)"
		f_inos = "Inositol (g) (food)"
		f_isom = "Isomalt (g) (food)"
		f_lactl = "Lactitol (g) (food)"
		f_pini = "Pinitol (g) (food)"
		f_sorb = "Sorbitol (g) (food)"
		f_xyli = "Xylitol (g) (food)"
		f_acho = "Available Carbohydrate (g) (food)"
		f_asugar = "Added Sugars (g) (food)"
		f_sucl = "Sucralose (mg) (food)"
		f_acesk = "Acesulfame Potassium (mg) (food)"
		f_oxal = "Oxalic Acid (mg) (food)"
		f_phyt = "Phytic Acid (mg) (food)"
		f_sp = "Sucrose polyester (g) (food)"
		f_caf = "Caffeine (mg) (food)"
		f_ash = "Ash (g) (food)"
		f_w = "Water (g) (food)"
		f_nitr = "Nitrogen (g) (food)"
		f_grain_tot = "Grain Serving: Total Grain (servings) (food)"
		f_grain_who = "Grain Serving: Whole Grain (servings) (food)"
		f_grain_nwh = "Grain Serving: Non Whole Grain (servings) (food)"
		f_gl = "Deitary Glycemic load (food)"
		f_gi = "Dietary Glycemic Index (food)"
		age_cat = "Sex category"
		diet_type = "specific diet regimen"
		meal_place_brk = "usual place for breakfast"
		meal_place_lun = "usual place for lunch"
		meal_place_din = "usual place for dinner/supper"
		supp_use = "yes to supplement use question"
		supdur_1 = "Duration of multi-vitamin use"
		supdur_2 = "Duration of mult-vitamin Senior formula use"
		supdur_3 = "Duration of Stress Tab, B-Complex use"
		supdur_4 = "Duration of Calcium-Vitamin D use"
		supdur_5 = "Duration of Vitamin A use"
		supdur_6 = "Duration of Vitamin C use"
		supdur_7 = "Duration of Vitamin D use"
		supdur_8 = "Duration of Vitamin E use"
		supdur_9 = "Duration of Folic Acid use"
		supdur_10 = "Duration of Vitamin B6 use"
		supdur_11 = "Duration of Vitamin B12 use"
		supdur_12 = "Duration of Calcium use"
		supdur_13 = "Duration of Magnesium use"
		supdur_14 = "Duration of Potassium use"
		supdur_15 = "Duration of Iron use"
		supdur_16 = "Duration of Selenium use"
		supdur_17 = "Duration of Fish oil use"
		supdur_18 = "Duration of Ca containing antacid use"
		supdur_19 = "Duration of Mg containing antacid use"
		frt_variety = "number of fruits selected for consumption"
		frt_frq_reported = "servings of fruit reported in fruit section */"
		veg_variety = "number of vegetables selected for consumption"
		veg_frq_reported = "servings of veg reported in vegetable section (includes lettuce) */"
		invalid = "0/1 Invalid questionnaire"
	;
RUN;


        DATA nutr_blsaallf;
            SET WORK.IMPORT;
        RUN;
        