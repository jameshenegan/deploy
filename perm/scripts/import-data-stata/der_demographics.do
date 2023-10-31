clear
import delimited "../data-csv/der_demographics.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable brthyr "Year of Birth"

label variable brthmo "Month of Birth"

label variable age "Age at time of visit (years)"

label variable baselineage "Age at baseline visit (years)"

label variable sex "Sex (M, F)"

label variable male "Male Indicator (1=M, 0=F)"
label define _LE12h08KHRcl 1 "Male" 0 "Female"
label values male _LE12h08KHRcl

label variable race "Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
label define _vjv4Qbzx66 6 "White" 8 "Unknown or not reported" 3 "Black or African American" 1 "Other Asian or Pacific Islander" 5 "Hispanic" 2 "American Indian or Alaskan Native" 9 "Asian" 7 "More than one race"
label values race _vjv4Qbzx66

label variable race3cat "Race Category (White, Black, Other)"
label define _m5vI32609HG6 1 "White" 2 "Black or African American" 3 "Other"
label values race3cat _m5vI32609HG6

label variable black "Black Race Indicator (1=Black, 0=Non-Black)"
label define _HLhks73TZHTD 0 "NonBlack" 1 "Black"
label values black _HLhks73TZHTD

label variable ethnicity "Spanish Hispanic or Latino Ethnicity"
label define _h7ddIRwAr5au 0 "Not reported / Unknown" 1 "Not Hispanic or Latino" 2 "Hispanic or Latino"
label values ethnicity _h7ddIRwAr5au

label variable borninus "Born in the United States"
label define _VCD1DlJ2pweh 1 "Born In US" 0 "Born Outside US"
label values borninus _VCD1DlJ2pweh

label variable englishfirstlang "English was First Language"
label define _Fe7lY34Xj05V 1 "Yes" 0 "No"
label values englishfirstlang _Fe7lY34Xj05V

label variable maritalstatus "Marital Status"
label define _VdyJ62Ao699N 1 "Married" 5 "Widowed" 4 "Divorced" 6 "Never married" 2 "Living with a partner" 3 "Separated"
label values maritalstatus _VdyJ62Ao699N

label variable householdsize "Size of Household"
label define _SRuPC2R33hi4 1 "1 other" 0 "Lives alone" 2 "2 others" 3 "3 or more others" 8 "Don't know" 7 "Refused"
label values householdsize _SRuPC2R33hi4

label variable housingtype "Type of Housing"
label define _ZTvT1ue2xC4f 1 "Single family home" 2 "Co-op, condominium, apartment" 3 "Continuing care community" 4 "Assisted living" 5 "Long term care facility" 8 "Don't know" 7 "refused"
label values housingtype _ZTvT1ue2xC4f

label variable smkstat "Current smoking status (3-level)"
label define _K9KhtD1w9f4m 0 "Never smoked" 1 "Former Smoker" 2 "Current Smoker"
label values smkstat _K9KhtD1w9f4m

label variable smokehx "Smoking history (4-level)"
label define _i03wMlL7OQmU 0 "Never smoked" 1 "Quit 10+ yrs ago" 3 "Current smoker" 2 "Quit <10 yrs ago"
label values smokehx _i03wMlL7OQmU

label variable smoker "Current smoking status (2-level)"
label define _B485uu05yqaO 0 "Non-Smoker" 1 "Smoker"
label values smoker _B485uu05yqaO

label variable alcoholhx "Drinking history (4-level)"
label define _hdsQl1XFL9 2 "Current Drinker" 0 "Non-Drinker" 1 "Former Drinker"
label values alcoholhx _hdsQl1XFL9

label variable drinker "Current drinking status (2-level)"
label define _k3vviASsMu 1 "Drinker" 0 "Non-Drinker"
label values drinker _k3vviASsMu

label variable alcohol "Drinks per week"
label define _oEtwcNNBCT 0 "less than one" 1 "1-3 drinks" 2 "4-7 drinks" 3 "8-14 drinks" 4 "more than 14"
label values alcohol _oEtwcNNBCT

label variable edyrsdegree "Highest grade in school completed by the participant defined by final degree"

label variable education "Years of education as defined by final degree0: No Formal Schooling 0-11 degree years 12: High School (or GED equivalent): 12-13 degree years14: Two Year College/Associate's Degree: 14-15 degree years16: Four Year College: 16-17 degree years18: Master's Degree: 18 degree years 19: Law Degree: 19 degree years20: MD or PhD: 20 degree years21: Multiple Graduate Degrees: 21+ degree years"
label define _Xw74aUOacwK6 18 "Master's degree" 16 "four year college" 20 "MD or PhD" 12 "high school (or GED equivalent)" 14 "two year college / Associate's degree" 21 "multiple graduate degrees" 19 "Law degree" 0 "no formal schooling" 77 "refused" 88 "unknown"
label values education _Xw74aUOacwK6

label variable educ3cat "Education Category (<HS, HS, HS+)"
label define _A55uwt7pkIIt 2 ">High School" 1 "High School/GED" 0 "<High School"
label values educ3cat _A55uwt7pkIIt

label variable educ5cat "Education Category (5-Level)"
label define _TnmnAB9MN0TU 4 "Post college" 3 "College grad" 1 "High school" 2 "Some college" 0 "Less than high school"
label values educ5cat _TnmnAB9MN0TU

