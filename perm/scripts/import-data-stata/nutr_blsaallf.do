clear
import delimited "../data-csv/nutr_blsaallf.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit number"

label variable f_gramamt "Gram Amount of Food (g) (food)"

label variable f_kcal "Energy (kcal) (food)"

label variable f_kj "Energy (kilojoules) (kj) (food)"

label variable f_tcho "Total Carbohydrate (g) (food)"

label variable f_fat "Total Fat (g) (food)"

label variable f_pro "Total Protein (g) (food)"

label variable f_vpro "Vegetable Protein (g) (food)"

label variable f_apro "Animal Protein (g) (food)"

label variable f_alc "Alcohol (g) (food)"

label variable f_chol "Cholesterol (mg) (food)"

label variable f_sfa "Total Saturated Fatty Acids (SFA) (g) (food)"

label variable f_mfa "Total Monounsaturated Fatty Acids (MUFA) (g) (food)"

label variable f_pfa "Total Polyunsaturated Fatty Acids (PUFA) (g) (food)"

label variable f_fruc "Fructose (g) (food)"

label variable f_gala "Galactose (g) (food)"

label variable f_gluc "Glucose (g) (food)"

label variable f_lact "Lactose (g) (food)"

label variable f_malt "Maltose (g) (food)"

label variable f_sucr "Sucrose (g) (food)"

label variable f_star "Starch (g) (food)"

label variable f_tsugar "Total Sugars (g) (food)"

label variable f_dfib "Total Dietary Fiber (g) (food)"

label variable f_wsdf "Soluble Dietary Fiber (g) (food)"

label variable f_ifib "Insoluble Dietary Fiber (g) (food)"

label variable f_pect "Pectins (g) (food)"

label variable f_va "Total Vitamin A Activity (International Units) (IU) (food)"

label variable f_acar "Alpha-Carotene (provitamin A carotenoid) (ug) (food)"

label variable f_bceq "Beta-Carotene Equivalents (ug) (food)"

label variable f_bcar "Beta-Carotene (provitamin A carotenoid) (ug) (food)"

label variable f_rl "Retinol (ug) (food)"

label variable f_varae "Total Vitamin A Activity (Retinol Activity Equivalents)(ug) (food)"

label variable f_vare "Total Vitamin A Activity (Retinol Equivalents) (ug) (food)"

label variable f_bcry "Beta-Cryptoxanthin (provitamin A caroteniod) (ug) (food)"

label variable f_lyco "Lycopene (ug) (food)"

label variable f_lz "Lutein + Zeaxanthin (ug) (food)"

label variable f_vb6 "Vitamin B-6 (pyridoxine, pyridoxyl, & pyridoxamine) (mg) (food)"

label variable f_vb12 "Vitamin B-12 (cobalamin) (ug) (food)"

label variable f_fol "Total Folate (ug) (food)"

label variable f_dfe "Dietary Folate Equivalents (ug) (food)"

label variable f_nfol "Natural Folate (ug) (food)"

label variable f_sfol "Synthetic Folate (ug) (food)"

label variable f_nia "Niacin (vitamin B3) (mg) (food)"

label variable f_niaeq "Niacin Equivalents (mg) (food)"

label variable f_pant "Pantothenic acid (mg) (food)"

label variable f_thi "Thiamin (vitamin B1) (mg) (food)"

label variable f_rib "Riboflavin (vitamin B2) (mg) (food)"

label variable f_choline "Choline (mg) (food)"

label variable f_ttc "Total Alpha-Tocopherol Equivalents (mg) (food)"

label variable f_atc "Vitamin E (Total Alpha-Tocopherol) (mg) (food)"

label variable f_natatoc "Natural Alpha-Tocopherol (mg) (food)"

label variable f_synatoc "Synthetic Alpha-Tocopherol (mg) (food)"

label variable f_btc "Beta-Tocopherol (mg) (food)"

label variable f_dtc "Delta-Tocopherol (mg) (food)"

label variable f_gtc "Gamma-Tocopherol (mg) (food)"

label variable f_vc "Vitamin C (ascorbic acid) (mg) (food)"

label variable f_vd "Vitamin D (calciferol) (ug) (food)"

label variable f_vite "Vitamin E (International Units) (IU) (food)"

label variable f_vk "Vitamin K (phylloquinone) (ug) (food)"

label variable f_ca "Calcium (mg) (food)"

label variable f_cu "Copper (mg) (food)"

label variable f_fe "Iron (mg) (food)"

label variable f_k "Potassium (mg) (food)"

label variable f_na "Sodium (mg) (food)"

label variable f_mg "Magnesium (mg) (food)"

label variable f_mn "Manganese (mg) (food)"

label variable f_se "Selenium (ug) (food)"

label variable f_zn "Zinc (mg) (food)"

label variable f_p "Phosphorus (mg) (food)"

label variable f_s04_0 "SFA 4:0 (butyric acid) (g) (food)"

label variable f_s06_0 "SFA 6:0 (caproic acid) (g) (food)"

label variable f_s08_0 "SFA 8:0 (caprylic acid) (g) (food)"

label variable f_s10_0 "SFA 10:0 (capric acid) (g) (food)"

label variable f_s12_0 "SFA 12:0 (lauric acid) (g) (food)"

label variable f_s14_0 "SFA 14:0 (myristic acid) (g) (food)"

label variable f_s16_0 "SFA 16:0 (palmitic acid) (g) (food)"

label variable f_s17_0 "SFA 17:0 (margaric acid) (g) (food)"

label variable f_s18_0 "SFA 18:0 (stearic acid) (g) (food)"

label variable f_s20_0 "SFA 20:0 (arachidic acid) (g) (food)"

label variable f_s22_0 "SFA 22:0 (behenic acid) (g) (food)"

label variable f_m14_1 "MUFA 14:1 (myristoleic acid) (g) (food)"

label variable f_m16_1 "MUFA 16:1 (palmitoleic acid) (g) (food)"

label variable f_m18_1 "MUFA 18:1 (oleic acid) (g) (food)"

label variable f_m20_1 "MUFA 20:1 (gadoleic acid) (g) (food)"

label variable f_m22_1 "MUFA 22:1 (erucic acid) (g) (food)"

label variable f_p18_2 "PUFA 18:2 (linoleic acid) (g) (food)"

label variable f_p18_3 "PUFA 18:3 (linolenic acid) (g) (food)"

label variable f_p18_4 "PUFA 18:4 (parinaric acid) (g) (food)"

label variable f_p20_4 "PUFA 20:4 (arachidonic acid) (g) (food)"

label variable f_p20_5 "PUFA 20:5 (eicosapentaenoic acid [EPA]) (g) (food)"

label variable f_p22_5 "PUFA 22:5 (docosapentaenoic acid [DPA]) (g) (food)"

label variable f_p22_6 "PUFA 22:6 (docosahexaenoic acid [DHA]) (g) (food)"

label variable f_f161t "TRANS 16:1 (trans-hexadecenoic acid) (g) (food)"

label variable f_f181t "TRANS 18:1 (trans-octadecenoic acid [elaidic acid]) (g) (food)"

label variable f_f182t "TRANS 18:2 (trans-octadecadienoic acid (g) (food)"

label variable f_ttfa "Total Trans-Fatty Acids (TRANS) (g) (food)"

label variable f_omega3 "Omega-3 Fatty Acids (g) (food)"

label variable f_cyst "Cystine (g) (food)"

label variable f_glut "Glutamic Acid (g) (food)"

label variable f_glyc "Glycine (g) (food)"

label variable f_isol "Isoleucine (g) (food)"

label variable f_hist "Histidine (g) (food)"

label variable f_leuc "Leucine (g) (food)"

label variable f_lysi "Lysine (g) (food)"

label variable f_meth "Methionine (g) (food)"

label variable f_phen "Phenylalanine (g) (food)"

label variable f_prol "Proline (g) (food)"

label variable f_seri "Serine (g) (food)"

label variable f_thre "Threonine (g) (food)"

label variable f_tryp "Tryptophan (g) (food)"

label variable f_alan "Alanine (g) (food)"

label variable f_argi "Arginine (g) (food)"

label variable f_aspa "Aspartic Acid (g) (food)"

label variable f_tyro "Tyrosine (g) (food)"

label variable f_vali "Valine (g) (food)"

label variable f_mh3 "3-Methylhistidine (mg) (food)"

label variable f_aspt "Aspartame (mg) (food)"

label variable f_sacc "Saccharin (mg) (food)"

label variable f_glyt "Glycitein (mg) (food)"

label variable f_coum "Coumestrol (mg) (food)"

label variable f_daid "Daidzein (mg) (food)"

label variable f_betaine "Betaine (mg) (food)"

label variable f_bioa "Biochanin A (mg) (food)"

label variable f_formon "Formononetin (mg) (food)"

label variable f_geni "Genistein (mg) (food)"

label variable f_eryth "Erythritol (g) (food)"

label variable f_maltito "Maltitol (g) (food)"

label variable f_mani "Mannitol (g) (food)"

label variable f_inos "Inositol (g) (food)"

label variable f_isom "Isomalt (g) (food)"

label variable f_lactl "Lactitol (g) (food)"

label variable f_pini "Pinitol (g) (food)"

label variable f_sorb "Sorbitol (g) (food)"

label variable f_xyli "Xylitol (g) (food)"

label variable f_acho "Available Carbohydrate (g) (food)"

label variable f_asugar "Added Sugars (g) (food)"

label variable f_sucl "Sucralose (mg) (food)"

label variable f_acesk "Acesulfame Potassium (mg) (food)"

label variable f_oxal "Oxalic Acid (mg) (food)"

label variable f_phyt "Phytic Acid (mg) (food)"

label variable f_sp "Sucrose polyester (g) (food)"

label variable f_caf "Caffeine (mg) (food)"

label variable f_ash "Ash (g) (food)"

label variable f_w "Water (g) (food)"

label variable f_nitr "Nitrogen (g) (food)"

label variable f_grain_tot "Grain Serving: Total Grain (servings) (food)"

label variable f_grain_who "Grain Serving: Whole Grain (servings) (food)"

label variable f_grain_nwh "Grain Serving: Non Whole Grain (servings) (food)"

label variable f_gl "Deitary Glycemic load (food)"

label variable f_gi "Dietary Glycemic Index (food)"

label variable age_cat "Sex category"

label variable diet_type "specific diet regimen"

label variable meal_place_brk "usual place for breakfast"

label variable meal_place_lun "usual place for lunch"

label variable meal_place_din "usual place for dinner/supper"

label variable supp_use "yes to supplement use question"

label variable supdur_1 "Duration of multi-vitamin use"

label variable supdur_2 "Duration of mult-vitamin Senior formula use"

label variable supdur_3 "Duration of Stress Tab, B-Complex use"

label variable supdur_4 "Duration of Calcium-Vitamin D use"

label variable supdur_5 "Duration of Vitamin A use"

label variable supdur_6 "Duration of Vitamin C use"

label variable supdur_7 "Duration of Vitamin D use"

label variable supdur_8 "Duration of Vitamin E use"

label variable supdur_9 "Duration of Folic Acid use"

label variable supdur_10 "Duration of Vitamin B6 use"

label variable supdur_11 "Duration of Vitamin B12 use"

label variable supdur_12 "Duration of Calcium use"

label variable supdur_13 "Duration of Magnesium use"

label variable supdur_14 "Duration of Potassium use"

label variable supdur_15 "Duration of Iron use"

label variable supdur_16 "Duration of Selenium use"

label variable supdur_17 "Duration of Fish oil use"

label variable supdur_18 "Duration of Ca containing antacid use"

label variable supdur_19 "Duration of Mg containing antacid use"

label variable frt_variety "number of fruits selected for consumption"

label variable frt_frq_reported "servings of fruit reported in fruit section */"

label variable veg_variety "number of vegetables selected for consumption"

label variable veg_frq_reported "servings of veg reported in vegetable section (includes lettuce) */"

label variable invalid "0/1 Invalid questionnaire"

