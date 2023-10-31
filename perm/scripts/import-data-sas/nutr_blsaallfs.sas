%let path_to_file = '../data-csv/nutr_blsaallfs.csv';
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

	INFORMAT fs_gramamt BEST32.;
	FORMAT fs_gramamt BEST12.;

	INFORMAT fs_kcal BEST32.;
	FORMAT fs_kcal BEST12.;

	INFORMAT fs_kj BEST32.;
	FORMAT fs_kj BEST12.;

	INFORMAT fs_tcho BEST32.;
	FORMAT fs_tcho BEST12.;

	INFORMAT fs_fat BEST32.;
	FORMAT fs_fat BEST12.;

	INFORMAT fs_pro BEST32.;
	FORMAT fs_pro BEST12.;

	INFORMAT fs_vpro BEST32.;
	FORMAT fs_vpro BEST12.;

	INFORMAT fs_apro BEST32.;
	FORMAT fs_apro BEST12.;

	INFORMAT fs_alc BEST32.;
	FORMAT fs_alc BEST12.;

	INFORMAT fs_chol BEST32.;
	FORMAT fs_chol BEST12.;

	INFORMAT fs_sfa BEST32.;
	FORMAT fs_sfa BEST12.;

	INFORMAT fs_mfa BEST32.;
	FORMAT fs_mfa BEST12.;

	INFORMAT fs_pfa BEST32.;
	FORMAT fs_pfa BEST12.;

	INFORMAT fs_fruc BEST32.;
	FORMAT fs_fruc BEST12.;

	INFORMAT fs_gala BEST32.;
	FORMAT fs_gala BEST12.;

	INFORMAT fs_gluc BEST32.;
	FORMAT fs_gluc BEST12.;

	INFORMAT fs_lact BEST32.;
	FORMAT fs_lact BEST12.;

	INFORMAT fs_malt BEST32.;
	FORMAT fs_malt BEST12.;

	INFORMAT fs_sucr BEST32.;
	FORMAT fs_sucr BEST12.;

	INFORMAT fs_star BEST32.;
	FORMAT fs_star BEST12.;

	INFORMAT fs_tsugar BEST32.;
	FORMAT fs_tsugar BEST12.;

	INFORMAT fs_dfib BEST32.;
	FORMAT fs_dfib BEST12.;

	INFORMAT fs_wsdf BEST32.;
	FORMAT fs_wsdf BEST12.;

	INFORMAT fs_ifib BEST32.;
	FORMAT fs_ifib BEST12.;

	INFORMAT fs_pect BEST32.;
	FORMAT fs_pect BEST12.;

	INFORMAT fs_va BEST32.;
	FORMAT fs_va BEST12.;

	INFORMAT fs_acar BEST32.;
	FORMAT fs_acar BEST12.;

	INFORMAT fs_bceq BEST32.;
	FORMAT fs_bceq BEST12.;

	INFORMAT fs_bcar BEST32.;
	FORMAT fs_bcar BEST12.;

	INFORMAT fs_rl BEST32.;
	FORMAT fs_rl BEST12.;

	INFORMAT fs_varae BEST32.;
	FORMAT fs_varae BEST12.;

	INFORMAT fs_vare BEST32.;
	FORMAT fs_vare BEST12.;

	INFORMAT fs_bcry BEST32.;
	FORMAT fs_bcry BEST12.;

	INFORMAT fs_lyco BEST32.;
	FORMAT fs_lyco BEST12.;

	INFORMAT fs_lz BEST32.;
	FORMAT fs_lz BEST12.;

	INFORMAT fs_vb6 BEST32.;
	FORMAT fs_vb6 BEST12.;

	INFORMAT fs_vb12 BEST32.;
	FORMAT fs_vb12 BEST12.;

	INFORMAT fs_fol BEST32.;
	FORMAT fs_fol BEST12.;

	INFORMAT fs_dfe BEST32.;
	FORMAT fs_dfe BEST12.;

	INFORMAT fs_nfol BEST32.;
	FORMAT fs_nfol BEST12.;

	INFORMAT fs_sfol BEST32.;
	FORMAT fs_sfol BEST12.;

	INFORMAT fs_nia BEST32.;
	FORMAT fs_nia BEST12.;

	INFORMAT fs_niaeq BEST32.;
	FORMAT fs_niaeq BEST12.;

	INFORMAT fs_pant BEST32.;
	FORMAT fs_pant BEST12.;

	INFORMAT fs_thi BEST32.;
	FORMAT fs_thi BEST12.;

	INFORMAT fs_rib BEST32.;
	FORMAT fs_rib BEST12.;

	INFORMAT fs_choline BEST32.;
	FORMAT fs_choline BEST12.;

	INFORMAT fs_ttc BEST32.;
	FORMAT fs_ttc BEST12.;

	INFORMAT fs_atc BEST32.;
	FORMAT fs_atc BEST12.;

	INFORMAT fs_natatoc BEST32.;
	FORMAT fs_natatoc BEST12.;

	INFORMAT fs_synatoc BEST32.;
	FORMAT fs_synatoc BEST12.;

	INFORMAT fs_btc BEST32.;
	FORMAT fs_btc BEST12.;

	INFORMAT fs_dtc BEST32.;
	FORMAT fs_dtc BEST12.;

	INFORMAT fs_gtc BEST32.;
	FORMAT fs_gtc BEST12.;

	INFORMAT fs_vc BEST32.;
	FORMAT fs_vc BEST12.;

	INFORMAT fs_vd BEST32.;
	FORMAT fs_vd BEST12.;

	INFORMAT fs_vite BEST32.;
	FORMAT fs_vite BEST12.;

	INFORMAT fs_vk BEST32.;
	FORMAT fs_vk BEST12.;

	INFORMAT fs_ca BEST32.;
	FORMAT fs_ca BEST12.;

	INFORMAT fs_cu BEST32.;
	FORMAT fs_cu BEST12.;

	INFORMAT fs_fe BEST32.;
	FORMAT fs_fe BEST12.;

	INFORMAT fs_k BEST32.;
	FORMAT fs_k BEST12.;

	INFORMAT fs_na BEST32.;
	FORMAT fs_na BEST12.;

	INFORMAT fs_mg BEST32.;
	FORMAT fs_mg BEST12.;

	INFORMAT fs_mn BEST32.;
	FORMAT fs_mn BEST12.;

	INFORMAT fs_se BEST32.;
	FORMAT fs_se BEST12.;

	INFORMAT fs_zn BEST32.;
	FORMAT fs_zn BEST12.;

	INFORMAT fs_p BEST32.;
	FORMAT fs_p BEST12.;

	INFORMAT fs_s04_0 BEST32.;
	FORMAT fs_s04_0 BEST12.;

	INFORMAT fs_s06_0 BEST32.;
	FORMAT fs_s06_0 BEST12.;

	INFORMAT fs_s08_0 BEST32.;
	FORMAT fs_s08_0 BEST12.;

	INFORMAT fs_s10_0 BEST32.;
	FORMAT fs_s10_0 BEST12.;

	INFORMAT fs_s12_0 BEST32.;
	FORMAT fs_s12_0 BEST12.;

	INFORMAT fs_s14_0 BEST32.;
	FORMAT fs_s14_0 BEST12.;

	INFORMAT fs_s16_0 BEST32.;
	FORMAT fs_s16_0 BEST12.;

	INFORMAT fs_s17_0 BEST32.;
	FORMAT fs_s17_0 BEST12.;

	INFORMAT fs_s18_0 BEST32.;
	FORMAT fs_s18_0 BEST12.;

	INFORMAT fs_s20_0 BEST32.;
	FORMAT fs_s20_0 BEST12.;

	INFORMAT fs_s22_0 BEST32.;
	FORMAT fs_s22_0 BEST12.;

	INFORMAT fs_m14_1 BEST32.;
	FORMAT fs_m14_1 BEST12.;

	INFORMAT fs_m16_1 BEST32.;
	FORMAT fs_m16_1 BEST12.;

	INFORMAT fs_m18_1 BEST32.;
	FORMAT fs_m18_1 BEST12.;

	INFORMAT fs_m20_1 BEST32.;
	FORMAT fs_m20_1 BEST12.;

	INFORMAT fs_m22_1 BEST32.;
	FORMAT fs_m22_1 BEST12.;

	INFORMAT fs_p18_2 BEST32.;
	FORMAT fs_p18_2 BEST12.;

	INFORMAT fs_p18_3 BEST32.;
	FORMAT fs_p18_3 BEST12.;

	INFORMAT fs_p18_4 BEST32.;
	FORMAT fs_p18_4 BEST12.;

	INFORMAT fs_p20_4 BEST32.;
	FORMAT fs_p20_4 BEST12.;

	INFORMAT fs_p20_5 BEST32.;
	FORMAT fs_p20_5 BEST12.;

	INFORMAT fs_p22_5 BEST32.;
	FORMAT fs_p22_5 BEST12.;

	INFORMAT fs_p22_6 BEST32.;
	FORMAT fs_p22_6 BEST12.;

	INFORMAT fs_f161t BEST32.;
	FORMAT fs_f161t BEST12.;

	INFORMAT fs_f181t BEST32.;
	FORMAT fs_f181t BEST12.;

	INFORMAT fs_f182t BEST32.;
	FORMAT fs_f182t BEST12.;

	INFORMAT fs_ttfa BEST32.;
	FORMAT fs_ttfa BEST12.;

	INFORMAT fs_omega3 BEST32.;
	FORMAT fs_omega3 BEST12.;

	INFORMAT fs_cyst BEST32.;
	FORMAT fs_cyst BEST12.;

	INFORMAT fs_glut BEST32.;
	FORMAT fs_glut BEST12.;

	INFORMAT fs_glyc BEST32.;
	FORMAT fs_glyc BEST12.;

	INFORMAT fs_isol BEST32.;
	FORMAT fs_isol BEST12.;

	INFORMAT fs_hist BEST32.;
	FORMAT fs_hist BEST12.;

	INFORMAT fs_leuc BEST32.;
	FORMAT fs_leuc BEST12.;

	INFORMAT fs_lysi BEST32.;
	FORMAT fs_lysi BEST12.;

	INFORMAT fs_meth BEST32.;
	FORMAT fs_meth BEST12.;

	INFORMAT fs_phen BEST32.;
	FORMAT fs_phen BEST12.;

	INFORMAT fs_prol BEST32.;
	FORMAT fs_prol BEST12.;

	INFORMAT fs_seri BEST32.;
	FORMAT fs_seri BEST12.;

	INFORMAT fs_thre BEST32.;
	FORMAT fs_thre BEST12.;

	INFORMAT fs_tryp BEST32.;
	FORMAT fs_tryp BEST12.;

	INFORMAT fs_alan BEST32.;
	FORMAT fs_alan BEST12.;

	INFORMAT fs_argi BEST32.;
	FORMAT fs_argi BEST12.;

	INFORMAT fs_aspa BEST32.;
	FORMAT fs_aspa BEST12.;

	INFORMAT fs_tyro BEST32.;
	FORMAT fs_tyro BEST12.;

	INFORMAT fs_vali BEST32.;
	FORMAT fs_vali BEST12.;

	INFORMAT fs_mh3 BEST32.;
	FORMAT fs_mh3 BEST12.;

	INFORMAT fs_aspt BEST32.;
	FORMAT fs_aspt BEST12.;

	INFORMAT fs_sacc BEST32.;
	FORMAT fs_sacc BEST12.;

	INFORMAT fs_glyt BEST32.;
	FORMAT fs_glyt BEST12.;

	INFORMAT fs_coum BEST32.;
	FORMAT fs_coum BEST12.;

	INFORMAT fs_daid BEST32.;
	FORMAT fs_daid BEST12.;

	INFORMAT fs_betaine BEST32.;
	FORMAT fs_betaine BEST12.;

	INFORMAT fs_bioa BEST32.;
	FORMAT fs_bioa BEST12.;

	INFORMAT fs_formon BEST32.;
	FORMAT fs_formon BEST12.;

	INFORMAT fs_geni BEST32.;
	FORMAT fs_geni BEST12.;

	INFORMAT fs_eryth BEST32.;
	FORMAT fs_eryth BEST12.;

	INFORMAT fs_maltito BEST32.;
	FORMAT fs_maltito BEST12.;

	INFORMAT fs_mani BEST32.;
	FORMAT fs_mani BEST12.;

	INFORMAT fs_inos BEST32.;
	FORMAT fs_inos BEST12.;

	INFORMAT fs_isom BEST32.;
	FORMAT fs_isom BEST12.;

	INFORMAT fs_lactl BEST32.;
	FORMAT fs_lactl BEST12.;

	INFORMAT fs_pini BEST32.;
	FORMAT fs_pini BEST12.;

	INFORMAT fs_sorb BEST32.;
	FORMAT fs_sorb BEST12.;

	INFORMAT fs_xyli BEST32.;
	FORMAT fs_xyli BEST12.;

	INFORMAT fs_acho BEST32.;
	FORMAT fs_acho BEST12.;

	INFORMAT fs_asugar BEST32.;
	FORMAT fs_asugar BEST12.;

	INFORMAT fs_sucl BEST32.;
	FORMAT fs_sucl BEST12.;

	INFORMAT fs_acesk BEST32.;
	FORMAT fs_acesk BEST12.;

	INFORMAT fs_oxal BEST32.;
	FORMAT fs_oxal BEST12.;

	INFORMAT fs_phyt BEST32.;
	FORMAT fs_phyt BEST12.;

	INFORMAT fs_sp BEST32.;
	FORMAT fs_sp BEST12.;

	INFORMAT fs_caf BEST32.;
	FORMAT fs_caf BEST12.;

	INFORMAT fs_ash BEST32.;
	FORMAT fs_ash BEST12.;

	INFORMAT fs_w BEST32.;
	FORMAT fs_w BEST12.;

	INFORMAT fs_nitr BEST32.;
	FORMAT fs_nitr BEST12.;

	INFORMAT fs_grain_tot BEST32.;
	FORMAT fs_grain_tot BEST12.;

	INFORMAT fs_grain_who BEST32.;
	FORMAT fs_grain_who BEST12.;

	INFORMAT fs_grain_nwh BEST32.;
	FORMAT fs_grain_nwh BEST12.;

	INFORMAT fs_gl BEST32.;
	FORMAT fs_gl BEST12.;

	INFORMAT fs_gi BEST32.;
	FORMAT fs_gi BEST12.;

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
		fs_gramamt
		fs_kcal
		fs_kj
		fs_tcho
		fs_fat
		fs_pro
		fs_vpro
		fs_apro
		fs_alc
		fs_chol
		fs_sfa
		fs_mfa
		fs_pfa
		fs_fruc
		fs_gala
		fs_gluc
		fs_lact
		fs_malt
		fs_sucr
		fs_star
		fs_tsugar
		fs_dfib
		fs_wsdf
		fs_ifib
		fs_pect
		fs_va
		fs_acar
		fs_bceq
		fs_bcar
		fs_rl
		fs_varae
		fs_vare
		fs_bcry
		fs_lyco
		fs_lz
		fs_vb6
		fs_vb12
		fs_fol
		fs_dfe
		fs_nfol
		fs_sfol
		fs_nia
		fs_niaeq
		fs_pant
		fs_thi
		fs_rib
		fs_choline
		fs_ttc
		fs_atc
		fs_natatoc
		fs_synatoc
		fs_btc
		fs_dtc
		fs_gtc
		fs_vc
		fs_vd
		fs_vite
		fs_vk
		fs_ca
		fs_cu
		fs_fe
		fs_k
		fs_na
		fs_mg
		fs_mn
		fs_se
		fs_zn
		fs_p
		fs_s04_0
		fs_s06_0
		fs_s08_0
		fs_s10_0
		fs_s12_0
		fs_s14_0
		fs_s16_0
		fs_s17_0
		fs_s18_0
		fs_s20_0
		fs_s22_0
		fs_m14_1
		fs_m16_1
		fs_m18_1
		fs_m20_1
		fs_m22_1
		fs_p18_2
		fs_p18_3
		fs_p18_4
		fs_p20_4
		fs_p20_5
		fs_p22_5
		fs_p22_6
		fs_f161t
		fs_f181t
		fs_f182t
		fs_ttfa
		fs_omega3
		fs_cyst
		fs_glut
		fs_glyc
		fs_isol
		fs_hist
		fs_leuc
		fs_lysi
		fs_meth
		fs_phen
		fs_prol
		fs_seri
		fs_thre
		fs_tryp
		fs_alan
		fs_argi
		fs_aspa
		fs_tyro
		fs_vali
		fs_mh3
		fs_aspt
		fs_sacc
		fs_glyt
		fs_coum
		fs_daid
		fs_betaine
		fs_bioa
		fs_formon
		fs_geni
		fs_eryth
		fs_maltito
		fs_mani
		fs_inos
		fs_isom
		fs_lactl
		fs_pini
		fs_sorb
		fs_xyli
		fs_acho
		fs_asugar
		fs_sucl
		fs_acesk
		fs_oxal
		fs_phyt
		fs_sp
		fs_caf
		fs_ash
		fs_w
		fs_nitr
		fs_grain_tot
		fs_grain_who
		fs_grain_nwh
		fs_gl
		fs_gi
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
		fs_gramamt = "Gram Amount of Food (g) (food+supps)"
		fs_kcal = "Energy (kcal) (food+supps)"
		fs_kj = "Energy (kilojoules) (kj) (food+supps)"
		fs_tcho = "Total Carbohydrate (g) (food+supps)"
		fs_fat = "Total Fat (g) (food+supps)"
		fs_pro = "Total Protein (g) (food+supps)"
		fs_vpro = "Vegetable Protein (g) (food+supps)"
		fs_apro = "Animal Protein (g) (food+supps)"
		fs_alc = "Alcohol (g) (food+supps)"
		fs_chol = "Cholesterol (mg) (food+supps)"
		fs_sfa = "Total Saturated Fatty Acids (SFA) (g) (food+supps)"
		fs_mfa = "Total Monounsaturated Fatty Acids (MUFA) (g) (food+supps)"
		fs_pfa = "Total Polyunsaturated Fatty Acids (PUFA) (g) (food+supps)"
		fs_fruc = "Fructose (g) (food+supps)"
		fs_gala = "Galactose (g) (food+supps)"
		fs_gluc = "Glucose (g) (food+supps)"
		fs_lact = "Lactose (g) (food+supps)"
		fs_malt = "Maltose (g) (food+supps)"
		fs_sucr = "Sucrose (g) (food+supps)"
		fs_star = "Starch (g) (food+supps)"
		fs_tsugar = "Total Sugars (g) (food+supps)"
		fs_dfib = "Total Dietary Fiber (g) (food+supps)"
		fs_wsdf = "Soluble Dietary Fiber (g) (food+supps)"
		fs_ifib = "Insoluble Dietary Fiber (g) (food+supps)"
		fs_pect = "Pectins (g) (food+supps)"
		fs_va = "Total Vitamin A Activity (International Units) (IU) (food+supps)"
		fs_acar = "Alpha-Carotene (provitamin A carotenoid) (ug) (food+supps)"
		fs_bceq = "Beta-Carotene Equivalents (ug) (food+supps)"
		fs_bcar = "Beta-Carotene (provitamin A carotenoid) (ug) (food+supps)"
		fs_rl = "Retinol (ug) (food+supps)"
		fs_varae = "Total Vitamin A Activity (Retinol Activity Equivalents)(ug) (food+supps)"
		fs_vare = "Total Vitamin A Activity (Retinol Equivalents) (ug) (food+supps)"
		fs_bcry = "Beta-Cryptoxanthin (provitamin A caroteniod) (ug) (food+supps)"
		fs_lyco = "Lycopene (ug) (food+supps)"
		fs_lz = "Lutein + Zeaxanthin (ug) (food+supps)"
		fs_vb6 = "Vitamin B-6 (pyridoxine, pyridoxyl, & pyridoxamine) (mg) (food+supps)"
		fs_vb12 = "Vitamin B-12 (cobalamin) (ug) (food+supps)"
		fs_fol = "Total Folate (ug) (food+supps)"
		fs_dfe = "Dietary Folate Equivalents (ug) (food+supps)"
		fs_nfol = "Natural Folate (ug) (food+supps)"
		fs_sfol = "Synthetic Folate (ug) (food+supps)"
		fs_nia = "Niacin (vitamin B3) (mg) (food+supps)"
		fs_niaeq = "Niacin Equivalents (mg) (food+supps)"
		fs_pant = "Pantothenic acid (mg) (food+supps)"
		fs_thi = "Thiamin (vitamin B1) (mg) (food+supps)"
		fs_rib = "Riboflavin (vitamin B2) (mg) (food+supps)"
		fs_choline = "Choline (mg) (food+supps)"
		fs_ttc = "Total Alpha-Tocopherol Equivalents (mg) (food+supps)"
		fs_atc = "Vitamin E (Total Alpha-Tocopherol) (mg) (food+supps)"
		fs_natatoc = "Natural Alpha-Tocopherol (mg) (food+supps)"
		fs_synatoc = "Synthetic Alpha-Tocopherol (mg) (food+supps)"
		fs_btc = "Beta-Tocopherol (mg) (food+supps)"
		fs_dtc = "Delta-Tocopherol (mg) (food+supps)"
		fs_gtc = "Gamma-Tocopherol (mg) (food+supps)"
		fs_vc = "Vitamin C (ascorbic acid) (mg) (food+supps)"
		fs_vd = "Vitamin D (calciferol) (ug) (food+supps)"
		fs_vite = "Vitamin E (International Units) (IU) (food+supps)"
		fs_vk = "Vitamin K (phylloquinone) (ug) (food+supps)"
		fs_ca = "Calcium (mg) (food+supps)"
		fs_cu = "Copper (mg) (food+supps)"
		fs_fe = "Iron (mg) (food+supps)"
		fs_k = "Potassium (mg) (food+supps)"
		fs_na = "Sodium (mg) (food+supps)"
		fs_mg = "Magnesium (mg) (food+supps)"
		fs_mn = "Manganese (mg) (food+supps)"
		fs_se = "Selenium (ug) (food+supps)"
		fs_zn = "Zinc (mg) (food+supps)"
		fs_p = "Phosphorus (mg) (food+supps)"
		fs_s04_0 = "SFA 4:0 (butyric acid) (g) (food+supps)"
		fs_s06_0 = "SFA 6:0 (caproic acid) (g) (food+supps)"
		fs_s08_0 = "SFA 8:0 (caprylic acid) (g) (food+supps)"
		fs_s10_0 = "SFA 10:0 (capric acid) (g) (food+supps)"
		fs_s12_0 = "SFA 12:0 (lauric acid) (g) (food+supps)"
		fs_s14_0 = "SFA 14:0 (myristic acid) (g) (food+supps)"
		fs_s16_0 = "SFA 16:0 (palmitic acid) (g) (food+supps)"
		fs_s17_0 = "SFA 17:0 (margaric acid) (g) (food+supps)"
		fs_s18_0 = "SFA 18:0 (stearic acid) (g) (food+supps)"
		fs_s20_0 = "SFA 20:0 (arachidic acid) (g) (food+supps)"
		fs_s22_0 = "SFA 22:0 (behenic acid) (g) (food+supps)"
		fs_m14_1 = "MUFA 14:1 (myristoleic acid) (g) (food+supps)"
		fs_m16_1 = "MUFA 16:1 (palmitoleic acid) (g) (food+supps)"
		fs_m18_1 = "MUFA 18:1 (oleic acid) (g) (food+supps)"
		fs_m20_1 = "MUFA 20:1 (gadoleic acid) (g) (food+supps)"
		fs_m22_1 = "MUFA 22:1 (erucic acid) (g) (food+supps)"
		fs_p18_2 = "PUFA 18:2 (linoleic acid) (g) (food+supps)"
		fs_p18_3 = "PUFA 18:3 (linolenic acid) (g) (food+supps)"
		fs_p18_4 = "PUFA 18:4 (parinaric acid) (g) (food+supps)"
		fs_p20_4 = "PUFA 20:4 (arachidonic acid) (g) (food+supps)"
		fs_p20_5 = "PUFA 20:5 (eicosapentaenoic acid [EPA]) (g) (food+supps)"
		fs_p22_5 = "PUFA 22:5 (docosapentaenoic acid [DPA]) (g) (food+supps)"
		fs_p22_6 = "PUFA 22:6 (docosahexaenoic acid [DHA]) (g) (food+supps)"
		fs_f161t = "TRANS 16:1 (trans-hexadecenoic acid) (g) (food+supps)"
		fs_f181t = "TRANS 18:1 (trans-octadecenoic acid [elaidic acid]) (g) (food+supps)"
		fs_f182t = "TRANS 18:2 (trans-octadecadienoic acid (g) (food+supps)"
		fs_ttfa = "Total Trans-Fatty Acids (TRANS) (g) (food+supps)"
		fs_omega3 = "Omega-3 Fatty Acids (g) (food+supps)"
		fs_cyst = "Cystine (g) (food+supps)"
		fs_glut = "Glutamic Acid (g) (food+supps)"
		fs_glyc = "Glycine (g) (food+supps)"
		fs_isol = "Isoleucine (g) (food+supps)"
		fs_hist = "Histidine (g) (food+supps)"
		fs_leuc = "Leucine (g) (food+supps)"
		fs_lysi = "Lysine (g) (food+supps)"
		fs_meth = "Methionine (g) (food+supps)"
		fs_phen = "Phenylalanine (g) (food+supps)"
		fs_prol = "Proline (g) (food+supps)"
		fs_seri = "Serine (g) (food+supps)"
		fs_thre = "Threonine (g) (food+supps)"
		fs_tryp = "Tryptophan (g) (food+supps)"
		fs_alan = "Alanine (g) (food+supps)"
		fs_argi = "Arginine (g) (food+supps)"
		fs_aspa = "Aspartic Acid (g) (food+supps)"
		fs_tyro = "Tyrosine (g) (food+supps)"
		fs_vali = "Valine (g) (food+supps)"
		fs_mh3 = "3-Methylhistidine (mg) (food+supps)"
		fs_aspt = "Aspartame (mg) (food+supps)"
		fs_sacc = "Saccharin (mg) (food+supps)"
		fs_glyt = "Glycitein (mg) (food+supps)"
		fs_coum = "Coumestrol (mg) (food+supps)"
		fs_daid = "Daidzein (mg) (food+supps)"
		fs_betaine = "Betaine (mg) (food+supps)"
		fs_bioa = "Biochanin A (mg) (food+supps)"
		fs_formon = "Formononetin (mg) (food+supps)"
		fs_geni = "Genistein (mg) (food+supps)"
		fs_eryth = "Erythritol (g) (food+supps)"
		fs_maltito = "Maltitol (g) (food+supps)"
		fs_mani = "Mannitol (g) (food+supps)"
		fs_inos = "Inositol (g) (food+supps)"
		fs_isom = "Isomalt (g) (food+supps)"
		fs_lactl = "Lactitol (g) (food+supps)"
		fs_pini = "Pinitol (g) (food+supps)"
		fs_sorb = "Sorbitol (g) (food+supps)"
		fs_xyli = "Xylitol (g) (food+supps)"
		fs_acho = "Available Carbohydrate (g) (food+supps)"
		fs_asugar = "Added Sugars (g) (food+supps)"
		fs_sucl = "Sucralose (mg) (food+supps)"
		fs_acesk = "Acesulfame Potassium (mg) (food+supps)"
		fs_oxal = "Oxalic Acid (mg) (food+supps)"
		fs_phyt = "Phytic Acid (mg) (food+supps)"
		fs_sp = "Sucrose polyester (g) (food+supps)"
		fs_caf = "Caffeine (mg) (food+supps)"
		fs_ash = "Ash (g) (food+supps)"
		fs_w = "Water (g) (food+supps)"
		fs_nitr = "Nitrogen (g) (food+supps)"
		fs_grain_tot = "Grain Serving: Total Grain (servings) (food+supps)"
		fs_grain_who = "Grain Serving: Whole Grain (servings) (food+supps)"
		fs_grain_nwh = "Grain Serving: Non Whole Grain (servings) (food+supps)"
		fs_gl = "Deitary Glycemic load (food+supps)"
		fs_gi = "Dietary Glycemic Index (food+supps)"
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


        DATA nutr_blsaallfs;
            SET WORK.IMPORT;
        RUN;
        