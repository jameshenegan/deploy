clear
import delimited "../data-csv/oc_dfaqcuinventory.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_dfainv "CRF Version"

label variable everused "Have you ever used cannabis"
label define _dprollcB1F 0 "No" 1 "Yes"
label values everused _dprollcB1F

label variable lastusage "When did you last use cannabis"
label define _mJDln4pSs0 1 "Over a year ago" 7 "last week" 5 "1 - 3 months ago" 9 "yesterday" 8 "this week" 6 "less than 1 month ago" 4 "3 - 6 months ago " 2 "9 - 12 months ago" 3 "6 - 9 months ago" 10 "today*" 11 "I am currently high*"
label values lastusage _mJDln4pSs0

label variable usagetoday "How high are you right now"
label define _CCGwy4UM17 0 "I am not at all high" 1 "I am a little bit high" 2 "I am moderately high" 3 "I am very high" 4 "I am extremely high"
label values usagetoday _CCGwy4UM17

label variable avguse "Average frequency you currently use cannabis"
label define _Ojt6cLZIxY 0 "I do not use cannabis" 1 "less than once a year" 3 "once every 3-6 months (2-4 times/yr)" 2 "once a year" 12 "more than once a day" 6 "2 - 3 times a month" 4 "once every 2 months (6 times/yr)" 8 "twice a week" 9 "3 - 4 times a week" 10 "5 - 6 times a week " 11 "once a day" 5 "once a month (12 times/yr)" 7 "once a week"
label values avguse _Ojt6cLZIxY

label variable howlongfreq "How long have you been using cannabis at this frequency"
label define _u0QtRe0Juw 12 "more than 20 years" 1 "less than 1 month" 6 "1 - 2 years" 7 "2 - 3 years" 11 "15 - 20 years" 8 "3 - 5 years" 9 "5 - 10 years" 10 "10 - 15 years" 5 "9 - 12 months" 4 "6 - 9 months" 2 "1 - 3 months" 3 "3 - 6 months"
label values howlongfreq _u0QtRe0Juw

label variable beforelongfreq "Before the period of time you indicated above how frequently did you use cannabis"
label define _bJeET1brSm 0 "I do not use cannabis" 1 "less than once a year" 3 "once every 3-6 months (2-4 times/yr)" 6 "2 - 3 times a month" 2 "once a year" 8 "twice a week" 9 "3 - 4 times a week" 5 "once a month (12 times/yr)" 7 "once a week" 4 "once every 2 months (6 times/yr)" 11 "once a day" 10 "5 - 6 times a week " 12 "more than once a day"
label values beforelongfreq _bJeET1brSm

label variable pastweek "How many days of the past week did you use cannabis"
label define _ftFth6guF1 0 "0 days" 1 "1 day" 7 "7 days" 2 "2 days" 3 "3 days" 4 "4 days" 5 "5 days" 6 "6 days"
label values pastweek _ftFth6guF1

label variable dayspastmth "How many days of the past month did you use cannabis"

label variable entirelife "How many times have you used cannabis in your entire life"
label define _iO6jMg05SY 1 "1 - 5 times in my life" 3 "11 - 50 times in my life" 2 "6 - 10 times in my life" 5 "101 - 500 times in my life" 4 "51 -100 times in my life" 8 "2001 - 5000 times in my life" 6 "501 - 1000 times in my life" 7 "1001 - 2000 times in my life" 9 "5001 - 10000 times in my life" 10 "More than 10000 times in my life"
label values entirelife _iO6jMg05SY

label variable duringweek "Pattern of cannabis use throughout the week"
label define _IFBo9SCL3T 0 "I do not use cannabis at all" 3 "I use cannabis on weekends and weekdays" 1 "I only use cannabis on weekends" 2 "I only use cannabis on weekdays"
label values duringweek _IFBo9SCL3T

label variable preusehours "How many hours after waking up do you typically first use cannabis"
label define _IYU2kZIYED 0 "I do not use cannabis at all" 1 "12 - 18 hours after waking up" 2 "9 - 12 hours after waking up" 5 "1 - 3 hours after waking up" 3 "6 - 9 hours after waking up" 4 "3 - 6 hours after waking up" 8 "immediately upon waking up" 6 "within 1 hour of waking up" 7 "within 1/2 hour of waking up"
label values preusehours _IYU2kZIYED

label variable weekday "How many times a day on a typical weekday do you use cannabis"

label variable weekend "How many times a day on a typical weekend do you use cannabis"

label variable pmethod "What is the primary method you use to ingest cannabis"
label define _w46Bxw6wfa 0 "I do not use cannabis" 1 "Joints" 7 "Edibles" 3 "Hand pipe" 6 "Vaporizer (e.g. Volcano Vape pen)" 4 "Bong (water pipe)" 8 "Other" 2 "Blunts (cigar sized joints)" 5 "Hookah"
label values pmethod _w46Bxw6wfa

label variable othmethod "Other methods of use at least 25 percent"

label variable pform "Primary form of cannabis you use"

label variable oform "Other forms of cannabis you use at least 25 percent"

label variable oforms "Other form Other"

label variable sessionamt "In a typical session how much marijuana do you personally use"

label variable dayamt "On a typical day how much marijuana do you personally use"

label variable weekamt "In a typical week how much marijuana do you personally use"

label variable numsessions "On a typical day how many sessions do you have"

label variable thcamt "Average THC content of marijuana you typically use"
label define _FI6Xku4IJv 1 "0 - 4%" 5 "20 - 24%" 6 "25 - 30%" 2 "5 - 9%" 7 "greater than 30%" 4 " 15 - 19%" 3 "10 - 14%"
label values thcamt _FI6Xku4IJv

label variable sessionhits "Session Cannabis concentrates how many hits do you personally take"

label variable dayhits "Day Cannabis concentrates how many hits do you personally take"

label variable yesterdayhits "Yesterday Cannabis concentrates how many hits did you personally take"

label variable daynumsessions "Day cannabis concentrates how many sessions do you have"

label variable avgconthcamt "Concentrates THC content"
label define _GmdkrHjP2w 3 "20 - 29%" 1 "0 - 9%" 8 "0 - 79%" 6 "50 - 59%" 2 "10 - 19%" 10 "greater than 90%" 4 "30 - 39%" 5 "40 - 49%" 7 "60 - 69%" 9 "80 - 90%"
label values avgconthcamt _GmdkrHjP2w

label variable sessionmilligrams "Edibles how many milligrams of THC do you ingest in a typical session"

label variable currentage "Current age"

label variable canntotalyears "How many years in total have you used cannabis"

label variable agetriedcannabis "How old were you when you FIRST tried cannabis"

label variable regusedlifetime "Has there been any time in your life when you used cannabis regularly (2 or more times per month for 6 months or longer)?"
label define _xOYsVzAGTd 0 "No" 1 "Yes"
label values regusedlifetime _xOYsVzAGTd

label variable startedyears "How old were you when you FIRST STARTED using cannabis regularly (2 or more times/month)?"

label variable regused6mth "Has there been any time in your life when you used cannabis on a daily or near daily basis for 6 months or longer"
label define _EILxWgY6E8 0 "No" 1 "Yes"
label values regused6mth _EILxWgY6E8

label variable dailyuseage "How old were you when you FIRST STARTED using cannabis on a daily or nearly basis"

label variable beforeage16 "What is the frequency that you used cannabis before the age of 16"
label define _sus7SYQD9b 12 "never" 6 "2 - 3 times a month" 9 "once every 3-6 months (2-4 times/yr.)" 11 "less than once a year" 7 "once a month" 10 "once a year" 4 "twice a week" 5 "once a week" 8 "once every 2 months (6 times/yr.)" 3 "3 - 4 times a week" 0 "more than once a day" 1 "once a day" 2 "5 - 6 times a week"
label values beforeage16 _sus7SYQD9b

label variable medicinaluse "Do you have a physician's recommendation to use cannabis for medicinal purposes"
label define _ok2QAWgcDV 0 "No" 1 "Yes" 2 "Yes but I use it for both medicinal and recreational purposes"
label values medicinaluse _ok2QAWgcDV

label variable recpercentuse "What percentage of the time do you use cannabis for recreational (rather than medicinal) purposes"

label variable canabistypeuse "What type of medical cannabis do you use"
label define _HGzy9WXhzg 3 "Both THC and CBC" 1 "THC only" 2 "CBD only"
label values canabistypeuse _HGzy9WXhzg

label variable conthcamt "If you use THC only what is the average THC content"
label define _LQF7q6ZWFw 3 "20 - 29%" 7 "60 - 69%" 1 "0 - 9%" 10 "greater than 90%" 2 "10 - 19%" 4 "30 - 39%" 5 "40 - 49%" 6 "50 - 59%" 8 "0 - 79%" 9 "80 - 90%"
label values conthcamt _LQF7q6ZWFw

label variable concbdamt "If you use CBD only what is the average CBD content"

label variable conboththcamt "If you use both THC and CBD, what is the average THC content"
label define _H8526vSlEP 1 "0 - 9%" 8 "0 - 79%" 6 "50 - 59%" 3 "20 - 29%" 10 "greater than 90%" 2 "10 - 19%" 4 "30 - 39%" 5 "40 - 49%" 7 "60 - 69%" 9 "80 - 90%"
label values conboththcamt _H8526vSlEP

label variable conbothcbdamt "If you use both THC and CBD, what is the average CBD content"
label define _v8vJkCRYdV 2 "10 - 19%" 3 "20 - 29%" 6 "50 - 59%" 1 "0 - 9%" 10 "greater than 90%" 4 "30 - 39%" 5 "40 - 49%" 7 "60 - 69%" 8 "0 - 79%" 9 "80 - 90%"
label values conbothcbdamt _v8vJkCRYdV

label variable oform_0 "Other forms of cannabis you use at least 25 percent : None (Checkbox Indicator)"

label variable oform_a "Other forms of cannabis you use at least 25 percent : Marijuana (Checkbox Indicator)"

label variable oform_b "Other forms of cannabis you use at least 25 percent : Concentrates (e.g. Oil Was Shatter Butane Hash Oil Dabs) (Checkbox Indicator)"

label variable oform_c "Other forms of cannabis you use at least 25 percent : Edibles (Checkbox Indicator)"

label variable oform_d "Other forms of cannabis you use at least 25 percent : Other (Checkbox Indicator)"

label variable othmethod_0 "Other methods of use at least 25 percent : None (Checkbox Indicator)"

label variable othmethod_1 "Other methods of use at least 25 percent : Joints (Checkbox Indicator)"

label variable othmethod_2 "Other methods of use at least 25 percent : Blunts (cigar sized joints) (Checkbox Indicator)"

label variable othmethod_3 "Other methods of use at least 25 percent : Hand pipe (Checkbox Indicator)"

label variable othmethod_4 "Other methods of use at least 25 percent : Bong (water pipe) (Checkbox Indicator)"

label variable othmethod_5 "Other methods of use at least 25 percent : Hookah (Checkbox Indicator)"

label variable othmethod_6 "Other methods of use at least 25 percent : Vaporizer (e.g. Volcano Vape pen) (Checkbox Indicator)"

label variable othmethod_7 "Other methods of use at least 25 percent : Edibles (Checkbox Indicator)"

label variable othmethod_8 "Other methods of use at least 25 percent : Other (Checkbox Indicator)"

