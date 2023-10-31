clear
import delimited "../data-csv/nutr_ffq.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable redcap_survey_identifier "Survey Identifier"

label variable tufts_food_frequency_v_0 "Survey Timestamp"

label variable sex "Sex"
label define _cOPFF9W4uX 2 "Female" 1 "Male"
label values sex _cOPFF9W4uX

label variable age_cat "Age"
label define _dhtwqWqbhJ 5 ">80" 4 "71-80" 3 "51-70" 2 "31-50" 1 "19-30"
label values age_cat _dhtwqWqbhJ

label variable protocol "Protocol Number"

label variable intvid "Interviewer ID"

label variable frt_sadj___1 "Which of the following fruits do you eat only in the summer? (choice=watermelon)"
label define _AE35l4sGgA 1 "Checked" 0 "Unchecked"
label values frt_sadj___1 _AE35l4sGgA

label variable frt_sadj___2 "Which of the following fruits do you eat only in the summer? (choice=strawberries)"
label define _3ISJshThTp 0 "Unchecked" 1 "Checked"
label values frt_sadj___2 _3ISJshThTp

label variable frt_sadj___3 "Which of the following fruits do you eat only in the summer? (choice=other berries)"
label define _oJGSuCLnts 0 "Unchecked" 1 "Checked"
label values frt_sadj___3 _oJGSuCLnts

label variable frt_sadj___4 "Which of the following fruits do you eat only in the summer? (choice=cantaloupe)"
label define _55mlfJTSsq 0 "Unchecked" 1 "Checked"
label values frt_sadj___4 _55mlfJTSsq

label variable frt_sadj___5 "Which of the following fruits do you eat only in the summer? (choice=honeydew)"
label define _Dp0q2pBQXd 0 "Unchecked" 1 "Checked"
label values frt_sadj___5 _Dp0q2pBQXd

label variable frt_sadj___6 "Which of the following fruits do you eat only in the summer? (choice=cherries)"
label define _HBHIqliZCs 0 "Unchecked" 1 "Checked"
label values frt_sadj___6 _HBHIqliZCs

label variable frt_sadj___7 "Which of the following fruits do you eat only in the summer? (choice=plums)"
label define _Ht6EtfxN1t 0 "Unchecked" 1 "Checked"
label values frt_sadj___7 _Ht6EtfxN1t

label variable frt_sadj___8 "Which of the following fruits do you eat only in the summer? (choice=grapes)"
label define _LSmtO0qqwS 0 "Unchecked" 1 "Checked"
label values frt_sadj___8 _LSmtO0qqwS

label variable fdfrq1 "Apples, applesauce, pears"
label define _lbMp9v68GW 3 "2-3x per month" 5 "2x per week" 6 "3-4x per week" 4 "1x per week" 2 "1x per month" 1 "< 1x per month" 8 "1x per day" 7 "5-6x per week" 0 "Never" 9 "2+x per day"
label values fdfrq1 _lbMp9v68GW

label variable fdfrq2 "Bananas"
label define _oBqHidn9Ip 6 "3-4x per week" 5 "2x per week" 8 "1x per day" 3 "2-3x per month" 4 "1x per week" 7 "5-6x per week" 0 "Never" 1 "< 1x per month" 2 "1x per month" 9 "2+x per day"
label values fdfrq2 _oBqHidn9Ip

label variable fdfrq3 "Oranges, tangerines"
label define _n5naGbdt03 3 "2-3x per month" 1 "< 1x per month" 4 "1x per week" 2 "1x per month" 5 "2x per week" 0 "Never" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq3 _n5naGbdt03

label variable fdfrq4 "Grapefruit (white or pink)"
label define _fVDeezCYGQ 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq4 _fVDeezCYGQ

label variable fdfrq5 "Peaches, nectarines, apricots (e.g. fresh, canned, or frozen)"
label define _ZtUGHjuB3d 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq5 _ZtUGHjuB3d

label variable fdfrq6 "Plums"
label define _TPEeAdGDqN 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq6 _TPEeAdGDqN

label variable fdfrq7 "Grapes"
label define _VCyn9GrZQw 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 0 "Never" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq7 _VCyn9GrZQw

label variable fdfrq8 "Avocado, fresh (incl. guacamole)"
label define _DKbUsPjtVS 0 "Never" 3 "2-3x per month" 1 "< 1x per month" 4 "1x per week" 2 "1x per month" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq8 _DKbUsPjtVS

label variable fdfrq9 "Kiwi"
label define _W1fCjNxuIR 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day" 7 "5-6x per week"
label values fdfrq9 _W1fCjNxuIR

label variable fdfrq10 "Papaya"
label define _S7HQ5Tw06J 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 8 "1x per day" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq10 _S7HQ5Tw06J

label variable fdfrq11 "Mango"
label define _kaC9TcdzaF 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq11 _kaC9TcdzaF

label variable fdfrq12 "Dried fruit (e.g., raisins, prunes, apricots)"
label define _VzH4PfGcQh 1 "< 1x per month" 3 "2-3x per month" 0 "Never" 2 "1x per month" 5 "2x per week" 6 "3-4x per week" 4 "1x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq12 _VzH4PfGcQh

label variable fdfrq13 "Cantaloupe"
label define _mQFljmP96n 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq13 _mQFljmP96n

label variable fdfrq14 "Honeydew melon"
label define _QjSEcN1bXo 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq14 _QjSEcN1bXo

label variable fdfrq15 "Watermelon"
label define _zkx3VZYhlg 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq15 _zkx3VZYhlg

label variable fdfrq16 "Cherries"
label define _oY50pdkjbA 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq16 _oY50pdkjbA

label variable fdfrq17 "Strawberries"
label define _c68Ql4O0Sf 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 1 "< 1x per month" 6 "3-4x per week" 0 "Never" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq17 _c68Ql4O0Sf

label variable fdfrq18 "Other berries (e.g. blueberries, raspberries)"
label define _fREhIKKkhf 3 "2-3x per month" 1 "< 1x per month" 6 "3-4x per week" 5 "2x per week" 2 "1x per month" 4 "1x per week" 8 "1x per day" 0 "Never" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq18 _fREhIKKkhf

label variable fdfrq19 "Any other fruit (e.g., canned, mixed fruit, pineapple, fruit cocktail)"
label define _NMF3yyntPE 1 "< 1x per month" 0 "Never" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq19 _NMF3yyntPE

label variable fdpor12 "If you eat dried fruit, your portion is usually closest to ..."
label define _hAV03bFQxw 1 "1/8 CUP" 2 "1/4 CUP" 4 "1/2 CUP or more" 3 "3/8 CUP"
label values fdpor12 _hAV03bFQxw

label variable fdpor13 "If you eat cantaloupe or honeydew, your portion is usually closest to ... (1 wedge = 1/4 melon)"
label define _h8Tws9Nypm 2 "1 wedge or 3/4 CUP" 1 "1/2 wedge or 1/2 CUP" 3 "1 1/2 wedges or 1 CUP" 4 "2 or more wedges or 1 1/2 cups or more"
label values fdpor13 _h8Tws9Nypm

label variable fdpor15 "If you eat watermelon, your portion is usually closest to ... (1 med. slice watermelon = 71/2'' dia x 1'' thick)"
label define _fBQtQBAy34 2 "1 med. slice/wedge" 3 "1 lg.slice/wedge" 1 "1 sm. slice or 1/2 wedge" 4 "> 1 lg. slice/wedge"
label values fdpor15 _fBQtQBAy34

label variable fdpor16 "If you eat strawberries, cherries, and/or other berries, your portion is usually closest to ..."
label define _ZgR8mvikAA 1 "1/2 cup" 2 "1 cup" 3 "1&1/2cups" 4 "2 cups or more"
label values fdpor16 _ZgR8mvikAA

label variable fdpor19 "If you eat any other cut up or canned fruit, your portion is usually closest to ..."
label define _qTgcVtuQLS 1 "1/2 cup" 2 "1 cup" 3 "1&1/2cups" 4 "2 cups or more"
label values fdpor19 _qTgcVtuQLS

label variable fdfrq20 "Cold cereal (e.g. cornflakes, granola)"
label define _UcV4J3oIsl 1 "< 1x per month" 0 "Never" 6 "3-4x per week" 8 "1x per day" 3 "2-3x per month" 5 "2x per week" 7 "5-6x per week" 4 "1x per week" 2 "1x per month" 9 "2+x per day"
label values fdfrq20 _UcV4J3oIsl

label variable fdfrq22 "Grits (hominy) or other cornmeal cereal"
label define _csRBKbY4AE 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq22 _csRBKbY4AE

label variable fdfrq23 "Oatmeal (plain or flavored)"
label define _j2KdvIsCGX 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq23 _j2KdvIsCGX

label variable fdfrq24 "Other hot cereal (e.g. Cream of Wheat/Rice)"
label define _ACe0TXcQAH 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq24 _ACe0TXcQAH

label variable fdfrq28 "Sugar; added to hot or cold cereal"
label define _A437IP0m5w 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq28 _A437IP0m5w

label variable fdfrq29 "Cereal or granola bars (e.g. Milk'n Cereal bars, fruit bars, Pop-Tarts)"
label define _WqlgWHJtQn 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq29 _WqlgWHJtQn

label variable fdfrq30 "Meal replacement/energy bars (e.g. PowerBars, Atkins bars, Slim-Fast bars)"
label define _ayWlgcZlIu 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq30 _ayWlgcZlIu

label variable fdpor20 "If you eat cold cereal, your portion is usually closest to ... (1 individual box = approx. 3/4 cup)"
label define _pns3l9MynL 2 "3/4 cup" 3 "1&1/2cups" 1 "1/2 cup" 4 "2 cups or more"
label values fdpor20 _pns3l9MynL

label variable fdpor21 "If you add milk to cold cereal, the amount added is usually closest to..."
label define _3d2T84r7BC 2 "1/2 cup" 1 "1/4 cup" 3 "1 cup" 4 "1&1/2cups"
label values fdpor21 _3d2T84r7BC

label variable choice1 "If you eat oatmeal, it is usually ..."
label define _9MYfFdfSPx 1 "regular/old-fashioned" 2 "quick" 3 "instant/fortified"
label values choice1 _9MYfFdfSPx

label variable fdpor22 "If you eat hot cereal (e.g. oatmeal, grits or other hot cereals), your portion is usually closest to ... (1 packet = 3/4 cup cooked)"
label define _Lz8NTDLKX9 2 "3/4 cup" 1 "1/2 cup" 3 "1&1/2cups" 4 "2 cups or more"
label values fdpor22 _Lz8NTDLKX9

label variable fdpor25 "If you add milk to hot cereal (incl. during cooking), the amount added is usually closest to ..."
label define _bgSSNbaBzt 1 "1/4 cup" 2 "1/2 cup" 3 "1 cup" 4 "1&1/2cups"
label values fdpor25 _bgSSNbaBzt

label variable fdpor29 "If you eat granola bars, cereal bars, fruit bars, and/or Pop-Tarts, your portion is usually closest to..."
label define _ckTkCCfKO8 2 "1 bar" 1 "1/2 bar" 4 "2 bars or more" 3 "1&1/2 bars"
label values fdpor29 _ckTkCCfKO8

label variable choice2 "If you eat meal replacement/energy bars, they are usually..."
label define _BY34vGCQZh 2 "low-carb/high protein (e.g., Atkins)" 1 "high-carb/low fat (e.g., PowerBars)" 3 "low-calorie/ weight loss (e.g., Slim-Fast)"
label values choice2 _BY34vGCQZh

label variable fdpor30 "If you eat meal replacement/energy bars, your portion is usually closest to..."
label define _DG46ybXLC1 2 "1 bar" 1 "1/2 bar" 4 "2 bars or more" 3 "1 1/2 bars"
label values fdpor30 _DG46ybXLC1

label variable choice3 "If you eat cold breakfast cereal, what types(e.g., brand name and type) do you eat most often (e.g. Kellogg's corn flakes)     *Only select this answer if you do not know that brand name. If you do know the brand name, then proceed to the next question."
label define _k0yFdK5PP4 1 "Do not know brand name"
label values choice3 _k0yFdK5PP4

label variable open_end1 "If you eat cold breakfast cereal, what types (brand name and type) do you eat most often (first choice)?"
label define _fdUCxr3jNc 1 "Default cereal" 2 "All Bran Cereal (Kelloggs)" 3 "Alpha-Bits" 4 "Apple Cinnamon Cheerios" 5 "Apple Jacks (Kellogg's)" 6 "Banana Nut Crunch Cereal (Post)" 7 "Basic 4 Cereal" 8 "Bran cereal 100% (Nabisco)" 9 "Bran Chex" 10 "Cap'n Crunch" 11 "Cheerios (General Mills)" 12 "Cocoa Krispies" 13 "Cocoa Pebbles" 14 "Cocoa Puffs" 15 "Complete Oat Bran Flakes (Kellogg's)" 16 "Complete Wheat Bran Flakes (Kellogg's)" 17 "Cookie-Crisp" 18 "Corn Chex Cereal (Ralston)" 19 "Corn Flakes (Kellogg's)" 20 "Corn Pops" 21 "Cracklin Oat Bran (Kellogg's)" 22 "Crispix Cereal (Kellogg's)" 23 "Crispy Rice" 24 "Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)" 25 "Fiber One (General Mills)" 26 "Frosted Cheerios" 27 "Frosted Flakes (Kellogg's)" 28 "Frosted Mini Wheat Cereal (Kelloggs)" 29 "Fruit And Fiber Dates Raisins and Walnuts (Post)" 30 "Fruit Loops (Kellogg's)" 31 "Fruity Pebbles" 32 "Golden Grahams" 33 "Golden Sugar Crisps (Post)" 34 "Grape-nut Flakes Cereal (Post)" 35 "Great Grains Raisin Date and Pecan (Post)" 36 "Honey Bunches of Oats" 37 "Honey Bunches of Oats with Almonds (Post)" 38 "Honey Graham Oh's Cereal" 39 "Honey Graham Oh's cereal (Quaker)" 40 "Honey Nut Cheerios" 41 "Honey Nut Oat Rings" 42 "Honey Nut Oats (Quaker)" 43 "Honey Smacks" 44 "Honeycomb Cereal (Post)" 45 "Just right Fruit & Nut cereal (Kelloggs)" 46 "King Vitamin" 47 "Kix" 48 "Life (Cinnamon)" 49 "Life (Plain)" 50 "Lucky Charms" 51 "Malt-O-Meal Corn Bursts" 52 "Malt-O-Meal Golden Puffs (formerly Sugar Puffs)" 53 "Mueslix Apple And Almond Crunch (Kellogg's)" 54 "Multi Bran Chex Cereal" 55 "Multi Grain Cheerios (Kellogg's)" 56 "Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)" 57 "Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kellogg's)" 58 "Oat Bran Flakes (Health Valley)" 59 "Oatmeal Crisp with Almonds" 60 "Oatmeal Crisp with Apple Cinnamon (General Mills)" 61 "Oatmeal Crisp with Raisin (General Mills)" 62 "Product 19 (Kellogg's)" 63 "Raisin Bran (Post)" 64 "Raisin Square Cereal" 65 "Reese's Peanut Butter Puffs Cereal" 66 "Rice Chex" 67 "Rice Krispies" 68 "Shredded Wheat 100%" 69 "Special K (Kellogg's)" 70 "Sweet Puffs Quaker" 71 "Toasted Oat Cereal (Quaker)" 72 "Total Corn Flakes" 73 "Total Raisin Bran (General Mills)" 74 "Trix" 75 "Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kellogg's)" 76 "Wheat Chex" 77 "Wheat Puffed Plain" 78 "Wheaties Cereal"
label values open_end1 _fdUCxr3jNc

label variable open_end2 "If you eat cold breakfast cereal, what type (brand name and type) do you eat most often (second choice)?"
label define _uvGyYkpmNJ 1 "Default cereal" 2 "All Bran Cereal (Kelloggs)" 3 "Alpha-Bits" 4 "Apple Cinnamon Cheerios" 5 "Apple Jacks (Kellogg's)" 6 "Banana Nut Crunch Cereal (Post)" 7 "Basic 4 Cereal" 8 "Bran cereal 100% (Nabisco)" 9 "Bran Chex" 10 "Cap'n Crunch" 11 "Cheerios (General Mills)" 12 "Cocoa Krispies" 13 "Cocoa Pebbles" 14 "Cocoa Puffs" 15 "Complete Oat Bran Flakes (Kellogg's)" 16 "Complete Wheat Bran Flakes (Kellogg's)" 17 "Cookie-Crisp" 18 "Corn Chex Cereal (Ralston)" 19 "Corn Flakes (Kellogg's)" 20 "Corn Pops" 21 "Cracklin Oat Bran (Kellogg's)" 22 "Crispix Cereal (Kellogg's)" 23 "Crispy Rice" 24 "Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)" 25 "Fiber One (General Mills)" 26 "Frosted Cheerios" 27 "Frosted Flakes (Kellogg's)" 28 "Frosted Mini Wheat Cereal (Kelloggs)" 29 "Fruit And Fiber Dates Raisins and Walnuts (Post)" 30 "Fruit Loops (Kellogg's)" 31 "Fruity Pebbles" 32 "Golden Grahams" 33 "Golden Sugar Crisps (Post)" 34 "Grape-nut Flakes Cereal (Post)" 35 "Great Grains Raisin Date and Pecan (Post)" 36 "Honey Bunches of Oats" 37 "Honey Bunches of Oats with Almonds (Post)" 38 "Honey Graham Oh's Cereal" 39 "Honey Graham Oh's cereal (Quaker)" 40 "Honey Nut Cheerios" 41 "Honey Nut Oat Rings" 42 "Honey Nut Oats (Quaker)" 43 "Honey Smacks" 44 "Honeycomb Cereal (Post)" 45 "Just right Fruit & Nut cereal (Kelloggs)" 46 "King Vitamin" 47 "Kix" 48 "Life (Cinnamon)" 49 "Life (Plain)" 50 "Lucky Charms" 51 "Malt-O-Meal Corn Bursts" 52 "Malt-O-Meal Golden Puffs (formerly Sugar Puffs)" 53 "Mueslix Apple And Almond Crunch (Kellogg's)" 54 "Multi Bran Chex Cereal" 55 "Multi Grain Cheerios (Kellogg's)" 56 "Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)" 57 "Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kellogg's)" 58 "Oat Bran Flakes (Health Valley)" 59 "Oatmeal Crisp with Almonds" 60 "Oatmeal Crisp with Apple Cinnamon (General Mills)" 61 "Oatmeal Crisp with Raisin (General Mills)" 62 "Product 19 (Kellogg's)" 63 "Raisin Bran (Post)" 64 "Raisin Square Cereal" 65 "Reese's Peanut Butter Puffs Cereal" 66 "Rice Chex" 67 "Rice Krispies" 68 "Shredded Wheat 100%" 69 "Special K (Kellogg's)" 70 "Sweet Puffs Quaker" 71 "Toasted Oat Cereal (Quaker)" 72 "Total Corn Flakes" 73 "Total Raisin Bran (General Mills)" 74 "Trix" 75 "Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kellogg's)" 76 "Wheat Chex" 77 "Wheat Puffed Plain" 78 "Wheaties Cereal"
label values open_end2 _uvGyYkpmNJ

label variable fdfrq31 "100% whole wheat bread"
label define _rRCEJ3HMHN 0 "Never" 1 "< 1x per month" 5 "2x per week" 3 "2-3x per month" 6 "3-4x per week" 4 "1x per week" 2 "1x per month" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq31 _rRCEJ3HMHN

label variable fdfrq32 "Wheat bread, not 100% whole wheat"
label define _grSaeotkxx 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq32 _grSaeotkxx

label variable fdfrq33 "Multigrain, rye, pumpernickel bread"
label define _dZUQpc8Tx7 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 4 "1x per week" 2 "1x per month" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq33 _dZUQpc8Tx7

label variable fdfrq34 "White bread (incl. seed breads, cinnamon raisin bread)"
label define _w59xqcehEn 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq34 _w59xqcehEn

label variable fdfrq35 "Bagels"
label define _JU1A7dLcqh 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq35 _JU1A7dLcqh

label variable fdfrq36 "Biscuits"
label define _sT2ltA2e22 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 8 "1x per day" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq36 _sT2ltA2e22

label variable fdfrq37 "Tortillas, wraps (corn, white, or wheat flour)"
label define _QMwFupnDRl 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq37 _QMwFupnDRl

label variable fdfrq38 "Croutons, garlic bread"
label define _3aKTmFbfBx 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq38 _3aKTmFbfBx

label variable fdfrq39 "Pancakes, waffles, french toast"
label define _WV93e1GiqF 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq39 _WV93e1GiqF

label variable choice4 "If you eat bread, it is usually..."
label define _o4Ix0TDtk8 1 "regular/commercial" 2 "homemade/bakery" 3 "light/reduced calorie" 4 "low carb"
label values choice4 _o4Ix0TDtk8

label variable fdpor31 "If you eat bread, your portion is usually closest to..."
label define _xIvMK1mhvj 2 "2 slices or pieces" 1 "1 slice or piece" 3 "3 slices or pieces" 4 "4 slices or pieces or more"
label values fdpor31 _xIvMK1mhvj

label variable fdpor35 "If you eat bagels, your portion is usually closest to ... (1 medium = Dunkin Donuts bagel)"
label define _ZsjR8s45z0 2 "1 medium" 1 "1/2 medium" 3 "1 large" 4 "2 medium or more"
label values fdpor35 _ZsjR8s45z0

label variable fdpor36 "If you eat biscuits, your portion is usually closest to... (1 medium biscuit = 3 diameter)"
label define _0PRsComfev 2 "1 medium" 1 "1/2 medium" 3 "1 large" 4 "2 medium or more"
label values fdpor36 _0PRsComfev

label variable choice5 "If you eat tortillas or wraps, they are usually made from..."
label define _QS64W4l2ZB 2 "corn flour" 1 "white flour" 3 "whole wheat flour" 4 "other"
label values choice5 _QS64W4l2ZB

label variable fdpor37 "If you eat tortillas, your portion is usually clostest... (1 medium = 8 diameter)"
label define _Bu1dtCeJwh 1 "1 medium" 2 "2 medium or 1 large" 3 "3 medium" 4 "4 medium or 2 large or more"
label values fdpor37 _Bu1dtCeJwh

label variable fdpor39 "If you eat pancakes, waffles, and/or french toast, your portion is usually closest to ... (1 pancake/waffle = 4 diameter)"
label define _0lCx6AM13h 2 "2 pancakes, waffles or slices of french toast" 3 "3 pancakes, waffles or slices of french toast" 1 "1 pancake, waffle or slice of french toast" 4 "4 pancakes, waffles or slices of french toast or more"
label values fdpor39 _0lCx6AM13h

label variable fdpor40 "If you add butter or margarine to breads, bagels and/or pancakes, your portion per slice/piece is usually ... (1 tsp = 1 pat)"
label define _9kNESqDWW2 2 "1 pat" 1 "1/2 pat" 3 "1&1/2 pats" 4 "2 pats or more"
label values fdpor40 _9kNESqDWW2

label variable fdpor41 "If you add cream cheese to breads and/or bagels, your portion per slice/piece is usually ..."
label define _MZCZke9m2Y 1 "1 tablespoon" 2 "2 tablespoons" 3 "3 tablespoons" 4 "4 tablespoons or more"
label values fdpor41 _MZCZke9m2Y

label variable fdfrq42 "Salad greens (e.g. lettuce, raw spinach, mixed greens)"
label define _SR8WYgTDsP 6 "3-4x per week" 7 "5-6x per week" 5 "2x per week" 8 "1x per day" 3 "2-3x per month" 4 "1x per week" 2 "1x per month" 0 "Never" 9 "2+x per day" 1 "< 1x per month"
label values fdfrq42 _SR8WYgTDsP

label variable fdfrq43 "Mustard greens, turnip greens, collards, leafy greens"
label define _eXIQ2RFdhY 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq43 _eXIQ2RFdhY

label variable fdfrq44 "Spinach, cooked (not raw)"
label define _IbuEfwaxgC 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq44 _IbuEfwaxgC

label variable fdfrq45 "Tomatoes, raw"
label define _RwZGXHQgTR 6 "3-4x per week" 5 "2x per week" 3 "2-3x per month" 4 "1x per week" 7 "5-6x per week" 8 "1x per day" 2 "1x per month" 0 "Never" 1 "< 1x per month" 9 "2+x per day"
label values fdfrq45 _RwZGXHQgTR

label variable fdfrq46 "Tomatoes, canned or cooked"
label define _cr0pzGTdQc 3 "2-3x per month" 1 "< 1x per month" 4 "1x per week" 2 "1x per month" 0 "Never" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq46 _cr0pzGTdQc

label variable fdfrq47 "Carrots, raw"
label define _9Mh5fakdBg 3 "2-3x per month" 6 "3-4x per week" 4 "1x per week" 1 "< 1x per month" 5 "2x per week" 2 "1x per month" 0 "Never" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq47 _9Mh5fakdBg

label variable fdfrq48 "Carrots, cooked"
label define _U5bHKMnFaY 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq48 _U5bHKMnFaY

label variable fdfrq49 "String beans, green beans"
label define _nnszJjfi6V 3 "2-3x per month" 4 "1x per week" 2 "1x per month" 5 "2x per week" 1 "< 1x per month" 0 "Never" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq49 _nnszJjfi6V

label variable fdfrq50 "Green peas, fresh, canned, or frozen"
label define _Sz509xx2Y6 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq50 _Sz509xx2Y6

label variable fdfrq51 "Corn, fresh, canned, or frozen"
label define _GTzbQ3KlqI 3 "2-3x per month" 2 "1x per month" 1 "< 1x per month" 4 "1x per week" 5 "2x per week" 0 "Never" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq51 _GTzbQ3KlqI

label variable fdfrq52 "Peppers (sweet)"
label define _w4FO0qykbf 3 "2-3x per month" 4 "1x per week" 0 "Never" 2 "1x per month" 1 "< 1x per month" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq52 _w4FO0qykbf

label variable fdfrq53 "Broccoli, brussel sprouts, fresh or frozen"
label define _Pxt0YWfplE 4 "1x per week" 3 "2-3x per month" 5 "2x per week" 6 "3-4x per week" 2 "1x per month" 0 "Never" 1 "< 1x per month" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq53 _Pxt0YWfplE

label variable fdfrq54 "Cauliflower"
label define _6CiO4oRPiO 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq54 _6CiO4oRPiO

label variable fdfrq55 "Coleslaw"
label define _0FgvHoE8hk 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq55 _0FgvHoE8hk

label variable fdfrq56 "Green cabbage (other than coleslaw)"
label define _cQHkqprFda 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq56 _cQHkqprFda

label variable fdfrq57 "Red cabbage"
label define _31C6pCqepR 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq57 _31C6pCqepR

label variable fdfrq58 "Beets"
label define _nIYykmrT7a 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq58 _nIYykmrT7a

label variable fdfrq59 "Asparagus"
label define _zc3kjDtOSR 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day" 8 "1x per day"
label values fdfrq59 _zc3kjDtOSR

label variable fdfrq60 "Mushrooms"
label define _yvFAFJE1eA 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq60 _yvFAFJE1eA

label variable fdfrq61 "Eggplant"
label define _rEd7P3QrQa 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq61 _rEd7P3QrQa

label variable fdfrq62 "Fried onion rings"
label define _MyVyi8DRA7 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq62 _MyVyi8DRA7

label variable fdfrq63 "Onions or leeks (other than fried onion rings)"
label define _wFBs6iBs05 3 "2-3x per month" 6 "3-4x per week" 5 "2x per week" 4 "1x per week" 0 "Never" 1 "< 1x per month" 2 "1x per month" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq63 _wFBs6iBs05

label variable fdfrq64 "Winter squash (e.g., butternut, acorn, hubbard)"
label define _2as3wH2J7p 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq64 _2as3wH2J7p

label variable fdfrq65 "Summer squash (e.g., yellow zucchini)"
label define _NyTUGRh73J 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq65 _NyTUGRh73J

label variable fdfrq66 "Okra"
label define _rZgS4pk46b 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq66 _rZgS4pk46b

label variable fdfrq67 "Other vegetables (e.g., cucumbers, celery, radish)"
label define _SreEJaUggQ 3 "2-3x per month" 6 "3-4x per week" 5 "2x per week" 4 "1x per week" 2 "1x per month" 7 "5-6x per week" 1 "< 1x per month" 0 "Never" 8 "1x per day" 9 "2+x per day"
label values fdfrq67 _SreEJaUggQ

label variable choice6___1 "If you eat salad greens, they are usually ... (choose all that apply) (choice=Iceberg lettuce)"
label define _O54EcwzCAm 0 "Unchecked" 1 "Checked"
label values choice6___1 _O54EcwzCAm

label variable choice6___2 "If you eat salad greens, they are usually ... (choose all that apply) (choice=Romaince lettuce)"
label define _ak6RhCIBOj 1 "Checked" 0 "Unchecked"
label values choice6___2 _ak6RhCIBOj

label variable choice6___3 "If you eat salad greens, they are usually ... (choose all that apply) (choice=Spinach (raw))"
label define _WWKnY149EO 1 "Checked" 0 "Unchecked"
label values choice6___3 _WWKnY149EO

label variable choice6___4 "If you eat salad greens, they are usually ... (choose all that apply) (choice=Other greens, mixed greens/mesclun)"
label define _fMcaGWXXDi 1 "Checked" 0 "Unchecked"
label values choice6___4 _fMcaGWXXDi

label variable fdpor42 "If you eat salad greens, your portion is usually closest to ..."
label define _8Loh6TDmNB 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more" 1 "1/2 cup"
label values fdpor42 _8Loh6TDmNB

label variable fdpor43 "If you eat cooked greens (e.g. mustard greens, turnip greens, collards, spinach) your portion is usually closest to ..."
label define _ykk8PFcjLD 2 "1/2 cup" 3 "3/4 cup" 4 "1 cup or more" 1 "1/4 cup"
label values fdpor43 _ykk8PFcjLD

label variable fdpor45 "If you eat raw tomatoes, your portion is usually closest to ... (1 cherry tomato = approx. 1 slice or wedge)"
label define _Ho4PCIJygN 2 "2 slices or wedges" 3 "3 slices or wedges" 4 "4 slices or wedges or more" 1 "1 slice or wedge"
label values fdpor45 _Ho4PCIJygN

label variable choice10___1 "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet green)"
label define _wcwFFcjSMF 1 "Checked" 0 "Unchecked"
label values choice10___1 _wcwFFcjSMF

label variable choice10___2 "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet red)"
label define _6hc7vKwZQn 1 "Checked" 0 "Unchecked"
label values choice10___2 _6hc7vKwZQn

label variable choice10___3 "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet yellow or orange)"
label define _vk4mfW2ILR 1 "Checked" 0 "Unchecked"
label values choice10___3 _vk4mfW2ILR

label variable fdpor62 "If you eat fried onion rings, your portion is usually closest to..."
label define _DoD78IzQD3 1 "sm order (1/2 cup)" 2 "med order (1 cup)" 3 "lg order (1 1/2 cups)" 4 "supersize (2 cups)"
label values fdpor62 _DoD78IzQD3

label variable fdpor46 "Your usual portion size for most cooked vegetables is closest to ..."
label define _L4eeq2Lzg3 2 "1/2 cup" 3 "3/4 cup" 4 "1 cup or more" 1 "1/4 cup"
label values fdpor46 _L4eeq2Lzg3

label variable choice13___1 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Carrots)"
label define _0DjgfVp44m 0 "Unchecked" 1 "Checked"
label values choice13___1 _0DjgfVp44m

label variable choice13___2 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=String beans)"
label define _1iySKr7vZL 0 "Unchecked" 1 "Checked"
label values choice13___2 _1iySKr7vZL

label variable choice13___3 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Peas)"
label define _pzxSlQxXJI 0 "Unchecked" 1 "Checked"
label values choice13___3 _pzxSlQxXJI

label variable choice13___4 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Corn)"
label define _Ebaa6NH9Ob 0 "Unchecked" 1 "Checked"
label values choice13___4 _Ebaa6NH9Ob

label variable choice13___5 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Broccoli)"
label define _WYxMRDUxdi 0 "Unchecked" 1 "Checked"
label values choice13___5 _WYxMRDUxdi

label variable choice13___6 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cauliflower)"
label define _1KaJdbaMDo 0 "Unchecked" 1 "Checked"
label values choice13___6 _1KaJdbaMDo

label variable choice13___7 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cabbage)"
label define _imNQ10k7Xs 0 "Unchecked" 1 "Checked"
label values choice13___7 _imNQ10k7Xs

label variable choice13___8 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Squash)"
label define _RzrWW3FZlW 0 "Unchecked" 1 "Checked"
label values choice13___8 _RzrWW3FZlW

label variable choice21 "If you add spreads or oils to any of the previous items after cooking, your portion is usually... (1 teaspoon = 1 pat)"
label define _bIObY0mdMP 1 "1" 2 "2" 3 "3" 4 "4" 9 "9" 5 "5" 6 "6" 7 "7" 8 "8"
label values choice21 _bIObY0mdMP

label variable fdfrq68 "Chili (with or without meat)"
label define _N2er2FXFJx 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 9 "2+x per day" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week"
label values fdfrq68 _N2er2FXFJx

label variable fdfrq69 "Beans (e.g., pinto, black, white, kidney, lima)"
label define _ElJrbj1SWp 3 "2-3x per month" 2 "1x per month" 1 "< 1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq69 _ElJrbj1SWp

label variable fdfrq70 "Peas, not green (e.g. cowpeas or black-eyed)"
label define _GiBYXanFp1 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq70 _GiBYXanFp1

label variable fdfrq71 "Tofu, soy burgers, or meat-substitutes"
label define _q734sUPTGu 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq71 _q734sUPTGu

label variable fdfrq72 "Potato salad"
label define _wAT19tMfCn 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq72 _wAT19tMfCn

label variable fdfrq73 "Mashed or scalloped potatoes"
label define _Ue9ETpb44l 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq73 _Ue9ETpb44l

label variable fdfrq74 "Fast food french fries"
label define _axqhMDvmAT 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq74 _axqhMDvmAT

label variable fdfrq75 "Homemade french fries, hash browns (incl. frozen, restaurant)"
label define _vF7BgeeOfE 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq75 _vF7BgeeOfE

label variable fdfrq76 "Fast food stuffed baked potato"
label define _cy5obwbapV 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq76 _cy5obwbapV

label variable fdfrq77 "Other potatoes (e.e., baked, boiled, roasted)"
label define _vxDRKzIkQQ 3 "2-3x per month" 2 "1x per month" 1 "< 1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq77 _vxDRKzIkQQ

label variable fdfrq78 "Sweet potatoes, yams"
label define _IhGj6UMxt1 3 "2-3x per month" 2 "1x per month" 1 "< 1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq78 _IhGj6UMxt1

label variable fdfrq79 "Plantains, green bananas"
label define _6SSRGFCAtk 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 7 "5-6x per week" 9 "2+x per day" 6 "3-4x per week" 8 "1x per day"
label values fdfrq79 _6SSRGFCAtk

label variable fdfrq80 "Pasteles"
label define _xpPmlUjaxy 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq80 _xpPmlUjaxy

label variable fdfrq81 "Root crops (e.g., cassava, name, yautia, tannier)"
label define _VFvbkrd5xl 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 7 "5-6x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq81 _VFvbkrd5xl

label variable fdpor68 "If you eat chili, your portion is usually closest to..."
label define _qs4PBqfQOi 2 "1 cup" 3 "1 1/2 cups" 1 "1/2 cup" 4 "2 cups or more"
label values fdpor68 _qs4PBqfQOi

label variable choice22___1 "If you eat beans, they are usually prepared ... (choose all that apply) (choice=plain, unseasoned)"
label define _8p9UvWPEq8 0 "Unchecked" 1 "Checked"
label values choice22___1 _8p9UvWPEq8

label variable choice22___2 "If you eat beans, they are usually prepared ... (choose all that apply) (choice=Puerto Rican style)"
label define _EKCQNykzEt 0 "Unchecked" 1 "Checked"
label values choice22___2 _EKCQNykzEt

label variable choice22___3 "If you eat beans, they are usually prepared ... (choose all that apply) (choice=baked)"
label define _fY4BJ3QRsz 0 "Unchecked" 1 "Checked"
label values choice22___3 _fY4BJ3QRsz

label variable choice22___4 "If you eat beans, they are usually prepared ... (choose all that apply) (choice=refried)"
label define _Gc5fFi8cUf 0 "Unchecked" 1 "Checked"
label values choice22___4 _Gc5fFi8cUf

label variable fdpor69 "If you eat beans (plain, baked, refried or other) and/or peas, your portion is usually closest to ..."
label define _gomsCNNiZW 1 "1/2 cup" 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor69 _gomsCNNiZW

label variable fdpor71 "If you eat tofu, soy burgers, or soy meat substitute, your portion is usually closest to... (1 burger = approx. 3 ounces)"
label define _7UzDpW0TXR 1 "3 ounces" 2 "6 ounces" 3 "9 ounces" 4 "12 ounces or more"
label values fdpor71 _7UzDpW0TXR

label variable fdpor74 "If you eat french fries, home fries, and/or hash browns, your portion is usually closest to..."
label define _mNM3qVHGFT 1 "1/2 cup (sm. order)" 2 "1 cup (med. order)" 3 "1 1/2 cups (lg. order)" 4 "2 cups (super size)"
label values fdpor74 _mNM3qVHGFT

label variable fdpor76 "If you eat potatoes (other than fried) and/or root crops, your portion is usually closest to ..."
label define _s71kKxayKT 2 "1 cup" 1 "1/2 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor76 _s71kKxayKT

label variable choice23___1 "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, boiled/baked)"
label define _oXXOJqlqvV 0 "Unchecked" 1 "Checked"
label values choice23___1 _oXXOJqlqvV

label variable choice23___2 "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, fried)"
label define _Qsde0gZiSK 0 "Unchecked" 1 "Checked"
label values choice23___2 _Qsde0gZiSK

label variable choice23___3 "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, boiled/baked)"
label define _6TNOHB5PSY 0 "Unchecked" 1 "Checked"
label values choice23___3 _6TNOHB5PSY

label variable choice23___4 "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, fried)"
label define _UBwIJ9maqH 0 "Unchecked" 1 "Checked"
label values choice23___4 _UBwIJ9maqH

label variable fdpor79 "If you eat plantains and/or green bananas, your portion is usually closest to ..."
label define _vLMYPwghql 2 "1/2 plantain or 3 slices" 1 "1/4 plantain or 1 slice" 3 "1 plantain or 6 slices" 4 "1 1/2 plantains or 9 slices or more"
label values fdpor79 _vLMYPwghql

label variable fdpor80 "If you eat pasteles, your portion is usually closest to ..."
label define _dUu8CbMMQZ 1 "1 each" 2 "2 each" 3 "3 each" 4 "4 each or more"
label values fdpor80 _dUu8CbMMQZ

label variable choice27___1 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Potatoes)"
label define _JGpc2S66Sb 0 "Unchecked" 1 "Checked"
label values choice27___1 _JGpc2S66Sb

label variable choice27___2 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Sweet potatoes)"
label define _N6G2wWppMi 0 "Unchecked" 1 "Checked"
label values choice27___2 _N6G2wWppMi

label variable choice27___3 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Plantains)"
label define _tgT358Dbfv 0 "Unchecked" 1 "Checked"
label values choice27___3 _tgT358Dbfv

label variable choice27___4 "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Other root crops)"
label define _6zpqqXp5Y2 0 "Unchecked" 1 "Checked"
label values choice27___4 _6zpqqXp5Y2

label variable fdfrq82 "Rice cooked with beans or pigeon peas (mixed dish)"
label define _T0CwDyPBqm 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq82 _T0CwDyPBqm

label variable fdfrq83 "Rice with beef or pork"
label define _9cy76Vd1nO 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq83 _9cy76Vd1nO

label variable fdfrq84 "Rice with chicken"
label define _oVciQeNmga 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq84 _oVciQeNmga

label variable fdfrq85 "Other mixed dishes with rice (incl. Jambalaya)"
label define _d1zY31RzLA 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq85 _d1zY31RzLA

label variable fdfrq86 "Fried rice (incl. Chinese style)"
label define _3Sn5gCHLL1 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq86 _3Sn5gCHLL1

label variable fdfrq87 "Flavored rice (e.g. Rice-a-Roni, Spanish, rice pilaf)"
label define _xSiPb9DBfk 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq87 _xSiPb9DBfk

label variable fdfrq88 "White rice"
label define _OrvvTzYKPI 1 "< 1x per month" 0 "Never" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq88 _OrvvTzYKPI

label variable fdfrq89 "Brown rice"
label define _sHLYxmfbH6 1 "< 1x per month" 3 "2-3x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq89 _sHLYxmfbH6

label variable fdfrq90 "Pasta (e.g. spaghetti, macaroni, linguini)"
label define _J6EUEAK6Ug 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 1 "< 1x per month" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq90 _J6EUEAK6Ug

label variable fdfrq91 "Pasta mixed dishes (e.g. lasagna, ravioli, baked ziti)"
label define _n3Q2rJ4TNJ 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq91 _n3Q2rJ4TNJ

label variable fdfrq92 "Lo mein or rice noodles (incl. Chinese style)"
label define _8pw3462t3J 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq92 _8pw3462t3J

label variable fdfrq93 "Macaroni salad, pasta salad"
label define _hnOdU2hZTY 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq93 _hnOdU2hZTY

label variable fdfrq94 "Mexican foods (e.g. burritos, tacos, tamales, enchiladas)"
label define _YRWo1pHRvf 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 9 "2+x per day" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day"
label values fdfrq94 _YRWo1pHRvf

label variable fdfrq95 "Pizza"
label define _K5zKBMub5t 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq95 _K5zKBMub5t

label variable fdfrq96 "Eggrolls, turnovers"
label define _qEgw5ThIhB 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq96 _qEgw5ThIhB

label variable fdpor82 "If you eat mixed dishes made with rice, your portion is usually closest to ..."
label define _WffZR12MUc 1 "1 cup" 2 "2 cups" 3 "3 cups" 4 "4 cups or more"
label values fdpor82 _WffZR12MUc

label variable fdpor86 "If you eat plain, fried or flavored rice, your portion (cooked) is usually closest to ..."
label define _lQS9xcEWnH 1 "1/2 cup" 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor86 _lQS9xcEWnH

label variable fdpor90 "If you eat pasta or mixed pasta dishes (e.g. lasagna), your portion is usually closest to ..."
label define _pUROHX1ZAP 1 "1 cup" 2 "2 cups" 3 "3 cups" 4 "4 cups or more"
label values fdpor90 _pUROHX1ZAP

label variable choice31___1 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Plain (no sauce))"
label define _jVSqqZbpCz 0 "Unchecked" 1 "Checked"
label values choice31___1 _jVSqqZbpCz

label variable choice31___2 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Butter and/or olive oil)"
label define _3f8u0jbT7a 0 "Unchecked" 1 "Checked"
label values choice31___2 _3f8u0jbT7a

label variable choice31___3 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce (no meat))"
label define _yqKT8UtLar 1 "Checked" 0 "Unchecked"
label values choice31___3 _yqKT8UtLar

label variable choice31___4 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce with meat)"
label define _KRWxKWxnoL 1 "Checked" 0 "Unchecked"
label values choice31___4 _KRWxKWxnoL

label variable choice31___5 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Clam sauce)"
label define _SEdT7bT44N 0 "Unchecked" 1 "Checked"
label values choice31___5 _SEdT7bT44N

label variable choice31___6 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Pesto sauce)"
label define _qefwZK5EWc 0 "Unchecked" 1 "Checked"
label values choice31___6 _qefwZK5EWc

label variable choice31___7 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cream sauce)"
label define _hkOovTkqG6 0 "Unchecked" 1 "Checked"
label values choice31___7 _hkOovTkqG6

label variable choice31___8 "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cheese sauce (e.g. macaroni and cheese))"
label define _UXWxgb7Wfz 0 "Unchecked" 1 "Checked"
label values choice31___8 _UXWxgb7Wfz

label variable fdpor93 "If you eat macaroni salad or pasta salad, your portion is usually closest to ..."
label define _nNI9AmmLGe 1 "1/2 cup" 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor93 _nNI9AmmLGe

label variable choice39___1 "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Burritos)"
label define _rOZYIsnGpa 0 "Unchecked" 1 "Checked"
label values choice39___1 _rOZYIsnGpa

label variable choice39___2 "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tacos)"
label define _sHJO6xEy2T 1 "Checked" 0 "Unchecked"
label values choice39___2 _sHJO6xEy2T

label variable choice39___3 "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tamales)"
label define _naP5pRP8JD 0 "Unchecked" 1 "Checked"
label values choice39___3 _naP5pRP8JD

label variable choice39___4 "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Enchiladas)"
label define _NEuo1Ad830 0 "Unchecked" 1 "Checked"
label values choice39___4 _NEuo1Ad830

label variable choice39___5 "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Quesadillas)"
label define _kmltWw9mEA 0 "Unchecked" 1 "Checked"
label values choice39___5 _kmltWw9mEA

label variable fdpor94 "If you eat Mexican foods (incl. burritos, tacos, tamales, enchiladas), your portion is usually closest to ..."
label define _ZdSdVPISUt 2 "2 each" 1 "1 each" 3 "3 each" 4 "4 each or more"
label values fdpor94 _ZdSdVPISUt

label variable choice44___1 "If you eat pizza, it is usually ... (choice=Plain cheese)"
label define _f8ScMZXBFs 0 "Unchecked" 1 "Checked"
label values choice44___1 _f8ScMZXBFs

label variable choice44___2 "If you eat pizza, it is usually ... (choice=With meat)"
label define _9KTFriG80x 0 "Unchecked" 1 "Checked"
label values choice44___2 _9KTFriG80x

label variable choice44___3 "If you eat pizza, it is usually ... (choice=With vegetables)"
label define _vwuUz3EILJ 0 "Unchecked" 1 "Checked"
label values choice44___3 _vwuUz3EILJ

label variable choice44___4 "If you eat pizza, it is usually ... (choice=With vegetables and meat)"
label define _sd26Fa09TR 0 "Unchecked" 1 "Checked"
label values choice44___4 _sd26Fa09TR

label variable fdpor95 "If you eat pizza, your portion is usually closest to ... (1 slice = 1/8 of a large pizza)"
label define _P1cPSZ1RyP 2 "2 slices" 3 "3 slices" 1 "1 slice" 4 "4 slices or more"
label values fdpor95 _P1cPSZ1RyP

label variable fdpor96 "If you eat eggrolls and/or turnovers, your portion is usually closest to ..."
label define _FiDYnDDuon 1 "1 each" 2 "2 each" 3 "3 each" 4 "4 each or more"
label values fdpor96 _FiDYnDDuon

label variable fdfrq97 "Fast food burgers"
label define _qXxEZWuZGE 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq97 _qXxEZWuZGE

label variable fdfrq98 "Ground beef (including homemade patty, meatballs, meatloaf)"
label define _qzeUNvHucU 3 "2-3x per month" 2 "1x per month" 1 "< 1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq98 _qzeUNvHucU

label variable fdfrq99 "Mixed dishes with beef or pork (e.g. beef stew, pot pies)"
label define _hisGZFKola 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq99 _hisGZFKola

label variable fdfrq100 "Beef: steak or roast"
label define _L4GiByTLJf 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq100 _L4GiByTLJf

label variable fdfrq101 "Ground pork"
label define _XD1NjoR0Bb 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq101 _XD1NjoR0Bb

label variable fdfrq102 "Pork: chops or roast"
label define _1sl4FnPzRV 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq102 _1sl4FnPzRV

label variable fdfrq103 "Mixed dishes with pork"
label define _LZC7AMARks 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq103 _LZC7AMARks

label variable fdfrq104 "Ham (not including cold cuts/luncheon meat)"
label define _KhBNfCLQMx 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq104 _KhBNfCLQMx

label variable fdfrq105 "Ribs: beef or pork"
label define _b9lRyPhQTY 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 7 "5-6x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq105 _b9lRyPhQTY

label variable fdfrq106 "Lamb: chops or leg"
label define _AHJTpMq17f 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq106 _AHJTpMq17f

label variable fdfrq107 "Liver (beef)"
label define _G1RcJGlK0x 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq107 _G1RcJGlK0x

label variable fdfrq108 "Other organ meats (e.g. tongue, kidney, chitterlings)"
label define _k8FfjpmXct 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 7 "5-6x per week" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq108 _k8FfjpmXct

label variable choice48 "If you eat fast food burgers, they are usually ... (If you add cheese to the burger, indicate below the corresponding item)"
label define _uyi4vuG5Am 1 "Regular single burger" 5 "Cheeseburger" 6 "Double or 1/4 pound burger w/ cheese" 2 "Double or 1/4 pound burger" 3 "Whopper" 7 "Whopper w/ cheese" 8 "Big Mac w/ cheese" 4 "Big Mac"
label values choice48 _uyi4vuG5Am

label variable choice49 "If you eat homemade patties and/or ground beef or pork (including meatloaf), the meat is usually ..."
label define _PqonOkIPiF 2 "Lean" 1 "Regular" 3 "Extra lean"
label values choice49 _PqonOkIPiF

label variable fdpor98 "If you eat homemade patties and/or ground beef or pork, your portion is usually closest to ..."
label define _KSffcVNPTS 2 "1 med. patty or 6 ounces" 1 "1 small patty or 3 ounces" 3 "1 large patty or 9 ounces" 4 "2 patties or 12 ounces or more"
label values fdpor98 _KSffcVNPTS

label variable choice50___1 "If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=American style)"
label define _UMJydaX83U 1 "Checked" 0 "Unchecked"
label values choice50___1 _UMJydaX83U

label variable choice50___2 "If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=Puerto Rican style)"
label define _YbkyMunC38 0 "Unchecked" 1 "Checked"
label values choice50___2 _YbkyMunC38

label variable fdpor99 "If you eat mixed dishes with beef or pork (incl. meat pies), your portion is usually closest to ..."
label define _NjVOv7RsGi 1 "1 cup" 2 "2 cups" 3 "3 cups" 4 "4 cups or more"
label values fdpor99 _NjVOv7RsGi

label variable fdpor100 "If you eat beef, pork or lamb, your portion is usually closest to (edible portion) ... (3 oz. is about the size of 1 deck of cards)"
label define _gbt0CctOxF 2 "4 ounces" 1 "2 ounces" 3 "6 ounces" 4 "8 ounces or more"
label values fdpor100 _gbt0CctOxF

label variable fdpor107 "If you eat liver and/or other organ meats, your portion is usually closest to ..."
label define _yD7kIWCaij 2 "4 ounces" 1 "2 ounces" 3 "6 ounces" 4 "8 ounces or more"
label values fdpor107 _yD7kIWCaij

label variable fdfrq109 "Fast food chicken"
label define _4dmoYmyoyK 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq109 _4dmoYmyoyK

label variable fdfrq110 "Ground chicken/turkey (including homemade patty, meatballs, and/or meatloaf)"
label define _L47pR729zc 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq110 _L47pR729zc

label variable fdfrq111 "Mixed dishes made with chicken (e.g. pot pie, chicken and dumplings, chicken stew)"
label define _fyNOA8BV4G 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day" 8 "1x per day"
label values fdfrq111 _fyNOA8BV4G

label variable fdfrq112 "Chicken or turkey: roasted, broiled, grilled, baked"
label define _26J0PSXKVc 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 2 "1x per month" 6 "3-4x per week" 1 "< 1x per month" 0 "Never" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq112 _26J0PSXKVc

label variable fdfrq113 "Fried chicken (including fast food nuggets, KFC)"
label define _Agx4BHKkyW 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq113 _Agx4BHKkyW

label variable fdfrq114 "Chicken or turkey salad"
label define _dZoXrQHXpL 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq114 _dZoXrQHXpL

label variable fdfrq115 "Liver (chicken)"
label define _I0w8CRi3i5 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq115 _I0w8CRi3i5

label variable fdpor110 "If you eat homemade patties and/or ground chicken/turkey (including meatloaf), your portion is usually closest to ..."
label define _OwLSxq2g3I 2 "1 med. patty or 6 ounces" 1 "1 small patty or 3 ounces" 3 "1 large patty or 9 ounces" 4 "2 patties or 12 ounces or more"
label values fdpor110 _OwLSxq2g3I

label variable choice52___1 "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=American style)"
label define _9azw0Z2UDX 1 "Checked" 0 "Unchecked"
label values choice52___1 _9azw0Z2UDX

label variable choice52___2 "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=Puerto Rican style)"
label define _Yxw7E7VSS0 0 "Unchecked" 1 "Checked"
label values choice52___2 _Yxw7E7VSS0

label variable choice52___3 "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=other)"
label define _mJ7cgdZuau 0 "Unchecked" 1 "Checked"
label values choice52___3 _mJ7cgdZuau

label variable fdpor111 "If you eat other mixed dishes with chicken/turkey (incl. meat pies), your portion is usually closest to ..."
label define _Hq9XmPWv4c 2 "1 cup" 1 "1/2 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor111 _Hq9XmPWv4c

label variable choice55 "If you eat chicken or turkey, roasted, broiled, grilled and/or baked, it is usually ..."
label define _0UNGAgAjP5 3 "Both" 1 "White meat" 2 "Dark meat"
label values choice55 _0UNGAgAjP5

label variable choice56 "Do you eat the skin on chicken or turkey?"
label define _TF7AFMSElo 2 "Sometimes" 1 "Never" 3 "Often/always"
label values choice56 _TF7AFMSElo

label variable fdpor112 "If you eat chicken or turkey, roasted, baked, and/or fried, your portion is usually closest to (edible portion) ..."
label define _kdhMhkKRj6 2 "4 ounces (1 piece of breast or 1 whole leg = drumstick & thigh)" 3 "6 ounces" 1 "2 ounces (1 drumstick or thigh)" 4 "8 ounces or more"
label values fdpor112 _kdhMhkKRj6

label variable fdpor114 "If you eat chicken salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
label define _VQeCjxHHpb 1 "1/2 cup" 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor114 _VQeCjxHHpb

label variable fdpor115 "If you eat chicken liver, your portion is usually closest to ..."
label define _ieAS4pN0OF 1 "1 ounce" 2 "2 ounces" 3 "3 ounces" 4 "4 ounces"
label values fdpor115 _ieAS4pN0OF

label variable fdfrq116 "Fast food fish sandwich"
label define _cLwGyNUWRF 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq116 _cLwGyNUWRF

label variable fdfrq117 "Shellfish, fried (e.g. fried clams, shrimp, scallops)"
label define _ZLFvP31Uv9 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq117 _ZLFvP31Uv9

label variable fdfrq118 "Shellfish, not fried (e.g. lobster, scallops, shrimp, clams)"
label define _uUhKNHdhr0 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq118 _uUhKNHdhr0

label variable fdfrq119 "Fish, fried (e.g. battered and fried fillets)"
label define _Sm7lD2AP17 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq119 _Sm7lD2AP17

label variable fdfrq120 "Salmon (fresh or canned)"
label define _8RJ6nl4sVJ 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 1 "< 1x per month" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq120 _8RJ6nl4sVJ

label variable fdfrq121 "Tuna (fresh or canned, not tuna salad)"
label define _CjsljMdNz8 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq121 _CjsljMdNz8

label variable fdfrq122 "Tuna salad (incl. in a sandwich, sub or wrap)"
label define _LbjjhUVrQQ 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq122 _LbjjhUVrQQ

label variable fdfrq123 "Bacalao (salted cod fish)"
label define _hidzdqzqtX 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq123 _hidzdqzqtX

label variable fdfrq124 "Sardines"
label define _bvT1hbVcYZ 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 7 "5-6x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq124 _bvT1hbVcYZ

label variable fdfrq125 "Other fish, not fried (e.g. halibut, cod, haddock, sole)"
label define _TePHGygZ0Y 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq125 _TePHGygZ0Y

label variable fdpor117 "If you eat shellfish, your portion is usually closest to ..."
label define _UT0dNDkcCo 2 "6 ounces or 1 cup" 1 "3 ounces or 1/2 cup" 3 "9 ounces or 1 1/2 cups" 4 "12 ounces or 2 cups or more"
label values fdpor117 _UT0dNDkcCo

label variable fdpor119 "If you eat fish, your portion is usually closest to (1 fillet = approx. 3 ounces) ..."
label define _wAyKGdGQTf 2 "6 ounces or 1 cup" 1 "3 ounces or 1/2 cup" 3 "9 ounces or 1 1/2 cups" 4 "12 ounces or 2 cups or more"
label values fdpor119 _wAyKGdGQTf

label variable choice57 "If you eat canned tuna and/or other canned fish, it is usually"
label define _gSueWi0Q45 2 "Water packed" 3 "Either" 1 "Oil packed"
label values choice57 _gSueWi0Q45

label variable fdpor122 "If you eat tuna salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
label define _GeveM5MrNw 1 "1/2 cup" 2 "1 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor122 _GeveM5MrNw

label variable fdpor124 "If you eat sardines, your portion is usually closest to (1 can = 3.5 ounces) ..."
label define _oDSEzYzM6K 4 "1 can or more" 2 "1/2 can" 1 "1/4 can" 3 "3/4 can"
label values fdpor124 _oDSEzYzM6K

label variable fdfrq126 "Chicken or turkey cold cuts (luncheon meat)"
label define _Ouytsl3ftT 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq126 _Ouytsl3ftT

label variable fdfrq127 "Roast beef cold cuts (luncheon meat)"
label define _2fPHRRnQep 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq127 _2fPHRRnQep

label variable fdfrq128 "Ham cold cuts (luncheon meat)"
label define _V9P1Phh1RR 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq128 _V9P1Phh1RR

label variable fdfrq129 "Other luncheon meats (e.g. Salami, Bologna)"
label define _G76197MnuB 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq129 _G76197MnuB

label variable fdfrq130 "Hot dogs"
label define _6fXyDslJne 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq130 _6fXyDslJne

label variable fdfrq131 "Sausage (not breakfast type)"
label define _VJvKqZ8VaX 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq131 _VJvKqZ8VaX

label variable fdfrq132 "Breakfast sausage"
label define _pd4xdOT19G 1 "< 1x per month" 0 "Never" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq132 _pd4xdOT19G

label variable fdfrq133 "Bacon, beef jerky (e.g., Slim Jim, Big Jerk)"
label define _O5PsywqtRq 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq133 _O5PsywqtRq

label variable choice58 "If you eat luncheon meat, it is usually ..."
label define _PulmjTgESH 1 "Regular" 2 "Lean/lowfat" 3 "Extra lean" 4 "Fat free"
label values choice58 _PulmjTgESH

label variable choice59 "Do you add cheese to your luncheon meat sandwiches?"
label define _FPV6vjV0us 2 "Sometimes" 3 "Often/always" 1 "Never"
label values choice59 _FPV6vjV0us

label variable fdpor126 "If you eat luncheon meat, your portion is usually closest to ..."
label define _IVryNHk5Ut 2 "2 slices" 1 "1 slice" 3 "3 slices" 4 "4slices or more"
label values fdpor126 _IVryNHk5Ut

label variable choice60 "If you eat hot dogs, bacon and/or sausage they are usually ..."
label define _SIXc1hvjGa 1 "Regular" 3 "Chicken or turkey" 2 "Lowfat"
label values choice60 _SIXc1hvjGa

label variable fdpor130 "If you eat hot dogs and/or sausage your portion is usually closest to ..."
label define _ml2I8Pjpne 1 "1 each" 2 "2 each" 3 "3 each" 4 "4 each or more"
label values fdpor130 _ml2I8Pjpne

label variable fdpor132 "If you eat bacon, beef jerky and/or breakfast sausage, your portion is usually closest to ..."
label define _g8tIQeWsgI 2 "2 slices or pieces" 3 "3 slices or pieces" 1 "1 slice or piece" 4 "4 slices or pieces or more"
label values fdpor132 _g8tIQeWsgI

label variable fdfrq134 "Mayonnaise or tartar sauce (added to sandwiches or used as dip)"
label define _SiKDrQkFpi 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq134 _SiKDrQkFpi

label variable fdfrq135 "Salad dressing"
label define _aFOBNqRZnn 6 "3-4x per week" 3 "2-3x per month" 5 "2x per week" 0 "Never" 4 "1x per week" 1 "< 1x per month" 7 "5-6x per week" 2 "1x per month" 8 "1x per day" 9 "2+x per day"
label values fdfrq135 _aFOBNqRZnn

label variable fdfrq136 "Sour cream"
label define _YuiJKNbwy5 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq136 _YuiJKNbwy5

label variable fdfrq137 "Cranberry sauce"
label define _DhejPn1IAe 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq137 _DhejPn1IAe

label variable fdfrq138 "Soy sauce, teriyaki sauce, barbeque sauce"
label define _eMN9OxMzpF 1 "< 1x per month" 3 "2-3x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq138 _eMN9OxMzpF

label variable fdfrq139 "Ketchup"
label define _P3AvltmWVw 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq139 _P3AvltmWVw

label variable fdfrq140 "Mustard"
label define _feWdbsdqnx 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq140 _feWdbsdqnx

label variable fdfrq141 "Sauerkraut"
label define _z5KGLuRIGb 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq141 _z5KGLuRIGb

label variable fdfrq142 "Pickles, relish, horseradish"
label define _IvqeDhXcGW 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq142 _IvqeDhXcGW

label variable fdfrq143 "Olives"
label define _6fvZPd4VZ9 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq143 _6fvZPd4VZ9

label variable fdfrq144 "Garlic, fresh or powder"
label define _6sSGVkraal 0 "Never" 3 "2-3x per month" 1 "< 1x per month" 6 "3-4x per week" 5 "2x per week" 4 "1x per week" 2 "1x per month" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq144 _6sSGVkraal

label variable fdfrq145 "Sweet & sour sauce, duck sauce"
label define _waPysGJL1i 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq145 _waPysGJL1i

label variable fdfrq146 "Salsa"
label define _p8CAsionaJ 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq146 _p8CAsionaJ

label variable fdfrq147 "Hot peppers (e.g. jalapeno)"
label define _c9218kKGmi 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq147 _c9218kKGmi

label variable fdfrq148 "Green tomato or green chile sauce"
label define _2C4XBsaNyM 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq148 _2C4XBsaNyM

label variable fdfrq149 "Gravy or white sauce (on meat, potatoes, rice and/or biscuits)"
label define _RzIce4U6nq 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq149 _RzIce4U6nq

label variable fdfrq150 "Lemon, lime; wedge or juice"
label define _pcjAAVe0eL 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 2 "1x per month" 6 "3-4x per week" 5 "2x per week" 4 "1x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq150 _pcjAAVe0eL

label variable fdfrq151 "Herbs, fresh or dried (e.g. cilantro)"
label define _67F5pJgjhx 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 6 "3-4x per week" 4 "1x per week" 5 "2x per week" 7 "5-6x per week" 2 "1x per month" 8 "1x per day" 9 "2+x per day"
label values fdfrq151 _67F5pJgjhx

label variable choice61 "If you use mayonnaise or sour cream, it is usually ..."
label define _d9f7mnBv8k 1 "Regular" 2 "Reduced fat/light" 3 "Fat free"
label values choice61 _d9f7mnBv8k

label variable fdpor134 "If you use mayonnaise or sour cream, your portion is usually closest to ..."
label define _wTUTI3J8oz 1 "1 tablespoon" 2 "2 tablespoons" 3 "3 tablespoons" 4 "4 tablespoons or more"
label values fdpor134 _wTUTI3J8oz

label variable choice62 "If you use salad dressing, it is usually ..."
label define _Kf9GmilEjr 3 "Both" 2 "Clear" 1 "Creamy"
label values choice62 _Kf9GmilEjr

label variable choice63 "If you use salad dressing, it is usually ..."
label define _kLAmcEATt5 1 "Regular" 2 "Reduced fat/low calorie" 3 "Fat free"
label values choice63 _kLAmcEATt5

label variable fdpor135 "If you use salad dressing, your portion is usually closest to ..."
label define _QNOy7HxY04 2 "2 tablespoons" 1 "1 tablespoon" 3 "3 tablespoons" 4 "4 tablespoons or more"
label values fdpor135 _QNOy7HxY04

label variable fdpor136 "If you use sauces, ketchup, mustard and/or relish, your portion is usually closest to ..."
label define _lcb9ZTi8Lk 2 "2 teaspoons" 1 "1 teaspoon" 3 "3 teaspoons" 4 "4 teaspoons or more"
label values fdpor136 _lcb9ZTi8Lk

label variable fdpor144 "If you use salsa, hot peppers and/or duck sauce, your portion is usually closest to ..."
label define _Yg2hU4LmD8 1 "1 tablespoon" 2 "2 tablespoons" 3 "3 tablespoons" 4 "4 tablespoons or more"
label values fdpor144 _Yg2hU4LmD8

label variable fdpor149 "If you use gravy or white sauce, your portion is usually closest to ..."
label define _3UC4cynMIC 1 "1/4 cup" 2 "1/2 cup" 3 "3/4 cup" 4 "1 cup or more"
label values fdpor149 _3UC4cynMIC

label variable choice64 "If you cook with garlic and/or herbs, you use mostly ..."
label define _akla0olhsZ 3 "Both" 1 "Fresh" 2 "Dried"
label values choice64 _akla0olhsZ

label variable fdfrq152 "New England clam or fish chowder (cream-based)"
label define _ELLb8FDej9 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq152 _ELLb8FDej9

label variable fdfrq153 "Manhattan clam chowder (tomato-based)"
label define _t1I7g5pNHE 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq153 _t1I7g5pNHE

label variable fdfrq154 "Other cream-based soup (e.g. corn chowder, cream of vegetable)"
label define _UGIXFndbL3 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 8 "1x per day" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq154 _UGIXFndbL3

label variable fdfrq155 "Bean, pea or lentil soup"
label define _YBzOcKXJ76 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq155 _YBzOcKXJ76

label variable fdfrq156 "Other homemade or home-style soup, with meat or chicken (e.g. gumbo)"
label define _ZZ9QsBjYdM 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq156 _ZZ9QsBjYdM

label variable fdfrq157 "Other homemade or home-style soup, without meat"
label define _RZkKqxeE3k 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq157 _RZkKqxeE3k

label variable fdfrq158 "Chicken noodle, ramen noodle and/or chicken rice soup; canned or instant"
label define _J1UWZ72bjB 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq158 _J1UWZ72bjB

label variable fdfrq159 "Vegetable and/or tomato based soup; canned or instant (e.g. veg. beef, minestrone)"
label define _0ynF1Pc39u 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq159 _0ynF1Pc39u

label variable fdpor152 "If you eat homemade or home-style soup, with or without meat, your portion is usually closest to ..."
label define _BXOH1dUraV 1 "1 cup" 2 "2 cups" 3 "3 cups" 4 "4 cups or more"
label values fdpor152 _BXOH1dUraV

label variable fdpor158 "If you eat canned soup, your portion (prepared amount) is usually closest to ..."
label define _VuTv98oCyR 2 "1 cup" 3 "1 1/2 cups" 1 "1/2 cup" 4 "2 cups or more"
label values fdpor158 _VuTv98oCyR

label variable fdfrq160 "Milk, plain (including soymilk; as beverage, not in cereal or coffee/tea)"
label define _CaffrHflmS 0 "Never" 1 "< 1x per month" 8 "1x per day" 6 "3-4x per week" 3 "2-3x per month" 2 "1x per month" 5 "2x per week" 4 "1x per week" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq160 _CaffrHflmS

label variable fdfrq161 "Chocolate or flavored milk"
label define _fOOY45tHGb 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 8 "1x per day" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq161 _fOOY45tHGb

label variable fdfrq162 "Cheese, hard (e.g. cheddar, parmesan, swiss)"
label define _bZSsStANBw 3 "2-3x per month" 5 "2x per week" 6 "3-4x per week" 4 "1x per week" 1 "< 1x per month" 0 "Never" 2 "1x per month" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq162 _bZSsStANBw

label variable fdfrq163 "Cheese, processed (American slices, Velveeta)"
label define _oMepdVKYsB 0 "Never" 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq163 _oMepdVKYsB

label variable fdfrq164 "Cheese, soft (e.g. feta, mozzarella, brie, farmer's)"
label define _Yaylr9imfF 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 0 "Never" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq164 _Yaylr9imfF

label variable fdfrq165 "Cheese spreads or dips"
label define _XCUav1WLna 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq165 _XCUav1WLna

label variable fdfrq166 "Cottage cheese"
label define _kM2dAPKftH 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq166 _kM2dAPKftH

label variable fdfrq167 "Yogurt (not frozen)"
label define _HVtVv0Dwy0 0 "Never" 3 "2-3x per month" 1 "< 1x per month" 5 "2x per week" 6 "3-4x per week" 4 "1x per week" 2 "1x per month" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq167 _HVtVv0Dwy0

label variable fdfrq168 "Egg substitute"
label define _L7T1LRrFir 0 "Never" 1 "< 1x per month" 2 "1x per month" 6 "3-4x per week" 4 "1x per week" 3 "2-3x per month" 5 "2x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq168 _L7T1LRrFir

label variable fdfrq169 "Eggs (e.g. soft or hard-boiled)"
label define _CF9Auvs3da 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 2 "1x per month" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq169 _CF9Auvs3da

label variable fdfrq170 "Eggs (e.g. fried, scrambled, omelets)"
label define _5y57t8ctpQ 4 "1x per week" 3 "2-3x per month" 5 "2x per week" 6 "3-4x per week" 2 "1x per month" 0 "Never" 1 "< 1x per month" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq170 _5y57t8ctpQ

label variable fdfrq171 "Egg salad (incl. in a sandwich, sub or wrap)"
label define _MlHEc2VX1L 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq171 _MlHEc2VX1L

label variable fdfrq172 "Fast food egg sandwich"
label define _Kk571nsInI 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 9 "2+x per day" 7 "5-6x per week" 8 "1x per day"
label values fdfrq172 _Kk571nsInI

label variable choice65 "If you drink milk and/or flavored milk, it is usually ..."
label define _pfTC0scDkv 1 "Skim/nonfat or 1%" 2 "2%" 3 "Whole" 4 "Soymilk"
label values choice65 _pfTC0scDkv

label variable fdpor160 "If you drink milk and/or flavored milk, your portion is usually closest to ..."
label define _NR3LwelD8Q 2 "8 fl. ounces (1 cup)" 1 "4 fl. Ounces" 3 "12 fl. ounces" 4 "16 fl. ounces or more"
label values fdpor160 _NR3LwelD8Q

label variable choice66 "If you eat cheese, it is usually ..."
label define _4eb2wbuTre 1 "Regular" 2 "Low/reduced fat" 3 "Nonfat/fat free"
label values choice66 _4eb2wbuTre

label variable fdpor162 "If you eat cheese, your portion is usually closest to ..."
label define _HfHObjcToW 2 "2 slices or 3 tablespoons" 1 "1 slice or 2 tablespoons" 3 "3 slices or 4 tablespoons" 4 "4 slices or 5 tablespoons or more"
label values fdpor162 _HfHObjcToW

label variable fdpor166 "If you eat cottage cheese, your portion is usually closest to ..."
label define _YBaVM5Cm6p 2 "1/2 cup" 1 "1/4 cup" 3 "3/4 cup" 4 "1 cup or more"
label values fdpor166 _YBaVM5Cm6p

label variable choice67 "If you eat yogurt, it is usually ..."
label define _ibUTkWzSYP 1 "Regular" 2 "Low/reduced fat" 3 "Nonfat/fat free" 4 "Light/no sugar added"
label values choice67 _ibUTkWzSYP

label variable fdpor167 "If you eat yogurt, your portion is usually closest to (1 yogurt container = 1 cup) ..."
label define _qCD6AnhVuG 2 "1 cup" 1 "1/2 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor167 _qCD6AnhVuG

label variable fdpor168 "If you eat eggs and/or egg substitute, your portion is usually closest to ... (1/4 cup raw egg substitute = 1 egg)"
label define _J60QQsx58j 2 "2 eggs" 1 "1 egg" 3 "3 eggs" 4 "4 eggs or more"
label values fdpor168 _J60QQsx58j

label variable fdpor171 "If you eat egg salad, your portion is usually closest to ..."
label define _ZbH1uZdZhY 2 "1/2 cup" 1 "1/4 cup" 3 "3/4 cup" 4 "1 cup or more"
label values fdpor171 _ZbH1uZdZhY

label variable fdfrq173 "Fast food shakes"
label define _geCWxCy7Lc 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 7 "5-6x per week" 6 "3-4x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq173 _geCWxCy7Lc

label variable fdfrq174 "Ice cream"
label define _RXCxgyFLZ3 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 0 "Never" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq174 _RXCxgyFLZ3

label variable fdfrq175 "Frozen yogurt"
label define _SfUhPoA2z2 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq175 _SfUhPoA2z2

label variable fdfrq176 "Sherbet"
label define _NxnTdegDPw 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq176 _NxnTdegDPw

label variable fdfrq177 "Jell-O, sorbet, popsicles"
label define _UUYmC0uPxJ 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 9 "2+x per day" 8 "1x per day"
label values fdfrq177 _UUYmC0uPxJ

label variable fdfrq178 "Pudding, custard (flan), cheesecake"
label define _ML8OpwMvAu 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq178 _ML8OpwMvAu

label variable fdfrq179 "Doughnuts, Danish"
label define _iVhbEOOq4x 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq179 _iVhbEOOq4x

label variable fdfrq180 "Cookies (homemade or store-bought; e.g. Oreos, Chips-A-Hoy)"
label define _G9lWFN8yXC 3 "2-3x per month" 1 "< 1x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 0 "Never" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq180 _G9lWFN8yXC

label variable fdfrq181 "Quick breads, muffins (e.g. corn bread, blueberry or bran muffin)"
label define _fAjhcpPPLU 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq181 _fAjhcpPPLU

label variable fdfrq182 "Cakes, brownies, sweet rolls"
label define _fCvceiSsgT 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq182 _fCvceiSsgT

label variable fdfrq183 "Sweet potato pie, pumpkin pie"
label define _1wwNIroL0D 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq183 _1wwNIroL0D

label variable fdfrq184 "Fruit pies, cobblers, crisps (including fast food pies)"
label define _BFwiZkj8gD 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq184 _BFwiZkj8gD

label variable fdfrq185 "Chocolate candy"
label define _LyLCTlilrF 1 "< 1x per month" 3 "2-3x per month" 6 "3-4x per week" 4 "1x per week" 5 "2x per week" 0 "Never" 2 "1x per month" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq185 _LyLCTlilrF

label variable fdfrq186 "Other candy"
label define _fyIpF8BBR0 1 "< 1x per month" 0 "Never" 3 "2-3x per month" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq186 _fyIpF8BBR0

label variable fdfrq187 "Jelly, jam, honey, syrup"
label define _9yEAM3SdK6 1 "< 1x per month" 3 "2-3x per month" 4 "1x per week" 2 "1x per month" 5 "2x per week" 0 "Never" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq187 _9yEAM3SdK6

label variable choice68 "If you eat ice cream, frozen yogurt and/or pudding, it is usually ..."
label define _TU5Vm6jVxp 1 "Regular" 2 "Light/low fat" 4 "Sugar free/no sugar added" 3 "Fat free"
label values choice68 _TU5Vm6jVxp

label variable fdpor174 "If you eat ice cream, frozen yogurt, sherbet, Jell-O and/or pudding, your portion is usually closest to ..."
label define _MuxsdDUfMi 2 "1 cup" 1 "1/2 cup" 3 "1 1/2 cups" 4 "2 cups or more"
label values fdpor174 _MuxsdDUfMi

label variable fdpor179 "If you eat doughnuts, your portion is usually closest to ..."
label define _txaQCc3l4n 1 "1 doughnut" 2 "2 doughnuts" 3 "3 doughnuts" 4 "4 doughnuts"
label values fdpor179 _txaQCc3l4n

label variable choice69 "If you eat cakes, cookies, sweet rolls and/or muffins, they are usually ..."
label define _WGjHwrpwRJ 1 "Regular" 2 "Light/low fat" 4 "Sugar free/no sugar added" 3 "Fat free"
label values choice69 _WGjHwrpwRJ

label variable fdpor181 "If you eat quick bread or muffins, your portion is usually closest to ..."
label define _aGR2YYpmcQ 1 "Small muffin or 1 piece" 2 "Medium muffin or 2 pieces" 3 "Large muffin or 3 pieces" 4 "2 medium muffins or 4 pieces or more"
label values fdpor181 _aGR2YYpmcQ

label variable fdpor180 "If you eat cookies, your portion is usually closest to (1 medium cookie = approx. 2 1/4 dia) ..."
label define _s3ERAaqgT1 2 "2 medium cookies" 1 "1 medium cookie" 3 "3 medium cookies" 4 "4 medium or 1 large cookie or more"
label values fdpor180 _s3ERAaqgT1

label variable fdpor182 "If you eat cake, sweet rolls and/or pie, your portion is usually closest to ..."
label define _umezLA46rc 2 "1 regular piece or 1 medium roll" 1 "1/2 piece or 1 small roll" 3 "1 large piece or 1 large roll" 4 "2 regular pieces or 2+ rolls"
label values fdpor182 _umezLA46rc

label variable fdpor185 "If you eat chocolate candy and/or other candy, your portion is usually closest to ..."
label define _aMz9dzJLN8 1 "1/2 regular bar or package or 1 snack size" 2 "1 regular bar or package" 3 "1 1/2 regular bars or packages or 1 king size" 4 "2 bars or packages or more"
label values fdpor185 _aMz9dzJLN8

label variable fdpor187 "If you use jelly, jam, honey, and/or syrup, your portion is usually closest to ..."
label define _YLXFWrCyHn 2 "1 tablespoon" 1 "1 teaspoon" 3 "2 tablespoons" 4 "3 tablespoons or more"
label values fdpor187 _YLXFWrCyHn

label variable fdfrq188 "Potato chips (all types)"
label define _MWTccjG5A0 1 "< 1x per month" 3 "2-3x per month" 2 "1x per month" 0 "Never" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq188 _MWTccjG5A0

label variable fdfrq189 "Crackers, matzo"
label define _AEIT8sRY1X 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq189 _AEIT8sRY1X

label variable fdfrq190 "Tortilla chips, corn chips (including Doritos, Fritos)"
label define _9pkE8gjlGp 1 "< 1x per month" 3 "2-3x per month" 0 "Never" 2 "1x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq190 _9pkE8gjlGp

label variable fdfrq191 "Popcorn"
label define _uV4SElDqys 1 "< 1x per month" 2 "1x per month" 0 "Never" 3 "2-3x per month" 4 "1x per week" 5 "2x per week" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq191 _uV4SElDqys

label variable fdfrq192 "Rice Cakes"
label define _9jZik7Ntrc 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq192 _9jZik7Ntrc

label variable fdfrq193 "Pretzels"
label define _v6uL2g3lQ4 1 "< 1x per month" 0 "Never" 2 "1x per month" 3 "2-3x per month" 4 "1x per week" 6 "3-4x per week" 5 "2x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq193 _v6uL2g3lQ4

label variable fdfrq194 "Coconut meat, dried and sweetened"
label define _A97a1CvYff 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq194 _A97a1CvYff

label variable fdfrq195 "Nuts (incl. peanuts, walnuts, cashews, pistachios)"
label define _6GUfe5eWrI 6 "3-4x per week" 8 "1x per day" 3 "2-3x per month" 5 "2x per week" 7 "5-6x per week" 4 "1x per week" 2 "1x per month" 1 "< 1x per month" 9 "2+x per day" 0 "Never"
label values fdfrq195 _6GUfe5eWrI

label variable fdfrq196 "Sunflower seeds"
label define _gLPO1WZLdS 0 "Never" 1 "< 1x per month" 2 "1x per month" 3 "2-3x per month" 5 "2x per week" 4 "1x per week" 6 "3-4x per week" 8 "1x per day" 7 "5-6x per week" 9 "2+x per day"
label values fdfrq196 _gLPO1WZLdS

label variable fdfrq197 "Peanut butter"
label define _hl6odnMJee 3 "2-3x per month" 1 "< 1x per month" 0 "Never" 5 "2x per week" 4 "1x per week" 2 "1x per month" 6 "3-4x per week" 7 "5-6x per week" 8 "1x per day" 9 "2+x per day"
label values fdfrq197 _hl6odnMJee

label variable fdpor188 "If you eat chips (potato or corn), your portion is usually closest to (1 ounce = approx. 28 chips or 1 snack-size bag) ..."
label define _PzAYqTs6fY 1 "1 ounce" 2 "2 ounces" 3 "3 ounces" 4 "4 ounces or more"
label values fdpor188 _PzAYqTs6fY

label variable choice70 "If you eat popcorn, it is usually ..."
label define _ONsBNjUvRf 2 "Regular (with butter or oil)" 1 "Lowfat" 3 "Movie theater style"
label values choice70 _ONsBNjUvRf

label variable fdpor191 "If you eat popcorn, your portion is usually closest to ..."
label define _qtcnueu8n9 2 "2 1/2 cups (1 snack-size bag)" 1 "1 cup" 3 "5 cups" 4 "7 1/2 cups (1 microwave bag) or more"
label values fdpor191 _qtcnueu8n9

label variable fdpor189 "If you eat crackers, your portion is usually closest to ..."
label define _VCp9zSFtxI 2 "6 crackers" 1 "3 crackers" 3 "9 crackers" 4 "12 crackers or more"
label values fdpor189 _VCp9zSFtxI

label variable choice71___1 "If you eat nuts, they are usually (choose all that apply) ... (choice=Peanuts)"
label define _970FWOyFOk 1 "Checked" 0 "Unchecked"
label values choice71___1 _970FWOyFOk

label variable choice71___2 "If you eat nuts, they are usually (choose all that apply) ... (choice=Walnuts)"
label define _pqIAsX7t4h 1 "Checked" 0 "Unchecked"
label values choice71___2 _pqIAsX7t4h

label variable choice71___3 "If you eat nuts, they are usually (choose all that apply) ... (choice=Almonds)"
label define _F2WJMTw1Gw 1 "Checked" 0 "Unchecked"
label values choice71___3 _F2WJMTw1Gw

label variable choice71___4 "If you eat nuts, they are usually (choose all that apply) ... (choice=Pecans)"
label define _2istQtGXBD 1 "Checked" 0 "Unchecked"
label values choice71___4 _2istQtGXBD

label variable choice71___5 "If you eat nuts, they are usually (choose all that apply) ... (choice=Cashews)"
label define _SLcVGwzkZd 1 "Checked" 0 "Unchecked"
label values choice71___5 _SLcVGwzkZd

label variable choice71___6 "If you eat nuts, they are usually (choose all that apply) ... (choice=Pistachios)"
label define _aas5ZUjE7m 0 "Unchecked" 1 "Checked"
label values choice71___6 _aas5ZUjE7m

label variable choice71___7 "If you eat nuts, they are usually (choose all that apply) ... (choice=Mixed Nuts)"
label define _ffO7oIqZZo 1 "Checked" 0 "Unchecked"
label values choice71___7 _ffO7oIqZZo

label variable fdpor194 "If you eat nuts and/or seeds, your portion (without shells) is usually closest to (2 tablespoons = approx. 1 ounce) ..."
label define _48YqUfNWm7 2 "2 tablespoons" 3 "3 tablespoons" 4 "4 tablespoons or more" 1 "1 tablespoon"
label values fdpor194 _48YqUfNWm7

label variable fdpor197 "If you eat peanut butter, your portion is usually closest to ..."
label define _Lj8Ew8Qw9i 1 "2 tablespoons" 2 "4 tablespoons" 3 "6 tablespoons" 4 "8 tablespoons or more"
label values fdpor197 _Lj8Ew8Qw9i

label variable choice78 "If you eat snacks, they are usually ..."
label define _EpOPfTARrV 1 "Regular" 2 "Baked/lowfat" 3 "Fat free" 4 "Low carb"
label values choice78 _EpOPfTARrV

label variable bvfrq1 "Orange juice (100% juice, not fruit drinks)"
label define _KVxC649par 1 "< 1x per month" 0 "Never" 2 "1-3x per month" 6 "1x per day" 4 "2-4x per week" 3 "1x per week" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq1 _KVxC649par

label variable bvfrq2 "Grapefruit juice (100% juice)"
label define _mt1ebPIk7k 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 8 "4-5x per day" 7 "2-3x per day" 9 "6+x per day"
label values bvfrq2 _mt1ebPIk7k

label variable bvfrq3 "Prune Juice"
label define _ZphD6BFmEP 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 6 "1x per day" 3 "1x per week" 4 "2-4x per week" 7 "2-3x per day" 5 "5-6x per week" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq3 _ZphD6BFmEP

label variable bvfrq4 "Tomato or vegetable juice (e.g.V-8)"
label define _FL3BMAQ8Cy 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq4 _FL3BMAQ8Cy

label variable bvfrq5 "Grape juice (100% juice)"
label define _PLuXuDdZoE 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 9 "6+x per day" 8 "4-5x per day" 7 "2-3x per day"
label values bvfrq5 _PLuXuDdZoE

label variable bvfrq6 "Apple juice (100% juice)"
label define _R5zhsBEhho 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq6 _R5zhsBEhho

label variable bvfrq7 "Cranberry juice (including cranberry juice cocktail)"
label define _IUxDdZHIir 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq7 _IUxDdZHIir

label variable bvfrq8 "Nectars (e.g. peach, pear, guava, mango)"
label define _0lCKqm89LY 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq8 _0lCKqm89LY

label variable bvfrq9 "Other 100% fruit juices and/or blends"
label define _1hruVmw0Qp 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq9 _1hruVmw0Qp

label variable bvfrq10 "Fortified fruit drinks (e.g. Sunny Delight, Hi-C)"
label define _1iNcINLL7D 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq10 _1iNcINLL7D

label variable bvfrq11 "Non-fortified fruit drinks (e.g. lemonade, Kool-aid)"
label define _sUGoQW1Uj2 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq11 _sUGoQW1Uj2

label variable bvfrq12 "Soft drinks, regular (e.g. cola, 7-up, ginger ale)"
label define _MZgtFdZhG1 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq12 _MZgtFdZhG1

label variable bvfrq13 "Soft drinks, diet"
label define _5z1qKKwl5r 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 6 "1x per day" 3 "1x per week" 5 "5-6x per week" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq13 _5z1qKKwl5r

label variable bvfrq14 "Sports drinks or energy drinks (e.g. Gatorade, Powerade, Red Bull)"
label define _GADwsgqarx 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 6 "1x per day" 5 "5-6x per week" 8 "4-5x per day" 7 "2-3x per day" 9 "6+x per day"
label values bvfrq14 _GADwsgqarx

label variable bvfrq15 "Bottled or powdered iced tea, pre-sweetened (not fresh brewed)"
label define _tsiLpc2wUD 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq15 _tsiLpc2wUD

label variable bvfrq16 "Bottled or powdered iced tea, unsweetened or diet (not fresh brewed)"
label define _0Rs8SLr71s 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq16 _0Rs8SLr71s

label variable bvfrq17 "Non-alcoholic beer (e.g. Malta)"
label define _vAlO9clrPY 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 5 "5-6x per week" 4 "2-4x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq17 _vAlO9clrPY

label variable bvfrq18 "Meal replacement beverages (e.g. Slim-Fast, Atkins)"
label define _snSGCSjI9t 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 6 "1x per day" 3 "1x per week" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq18 _snSGCSjI9t

label variable bvfrq19 "Water (including tap, filtered, bottled)"
label define _EmujjNRdBz 8 "4-5x per day" 7 "2-3x per day" 9 "6+x per day" 6 "1x per day" 0 "Never" 5 "5-6x per week" 4 "2-4x per week" 2 "1-3x per month" 3 "1x per week" 1 "< 1x per month"
label values bvfrq19 _EmujjNRdBz

label variable choice79 "If you drink 100% orange juice, it is usually..."
label define _fjuSFyYEPm 1 "regular" 2 "fortified with calcium and/or vitamin D" 3 "fortified with other vitamins/minerals"
label values choice79 _fjuSFyYEPm

label variable bvpor1 "If you drink fruit juice and/or vegetable juices, your portion is usually closest to (8 fl. ounces = 1 cup) ..."
label define _cB4AfMRbIU 1 "4 fl. Ounces" 2 "8 fl. ounces" 3 "12 fl. ounces" 4 "16 fl. ounces or more"
label values bvpor1 _cB4AfMRbIU

label variable choice80 "If you drink soft drinks, regular or diet, they are usually ..."
label define _VGJzwmjAuU 1 "cola" 4 "other caffeine-free non-cola (e.g., 7-Up, orange, ginger ale)" 2 "caffeine-free cola" 3 "other caffeinated non-cola (e.g. Mountain Dew)"
label values choice80 _VGJzwmjAuU

label variable bvpor10 "If you drink soft drinks and/or other cold beverages (including fruit drinks, sports drinks), your portion (before adding ice) is usually closest to (1 can = 12 fl. ounce) ..."
label define _U1KFdPgA8e 1 "8 fl. ounces" 2 "12 fl. ounces" 3 "16 fl. ounces" 4 "24 fl. ounces or more"
label values bvpor10 _U1KFdPgA8e

label variable choice81 "Do you add ice to your soft drinks?"
label define _hcarKMMyKw 2 "sometimes" 3 "always" 1 "never"
label values choice81 _hcarKMMyKw

label variable choice82 "If you drink meal replacement beverages or shakes, they are usually ..."
label define _iZFePDqiAL 2 "High protein type (e.g. Atkins)" 3 "Standard, balanced nutrition type (e.g. Carnation Instant Breakfast, Ensure, Snapple-a-Day)" 1 "Weight loss type (e.g. Slim-Fast)"
label values choice82 _iZFePDqiAL

label variable bvpor18 "If you drink meal replacement beverages or shakes, your portion is usually closest to ..."
label define _VC0cztdP8F 2 "1 can or 1 scoop powder" 1 "1/2 can or 1/2 scoop powder" 4 "2 cans or 2 scoops powder" 3 "1 1/2 cans or 1 1/2 scoops powder"
label values bvpor18 _VC0cztdP8F

label variable choice83 "If you drink water, it is usually ..."
label define _KbRRFWnK2J 1 "tap" 2 "bottled, purified (e.g., Aquafina, Dasani)" 3 "bottled, spring (e.g., Poland Spring, Evian)" 4 "bottled, carbonated (e.g., soda water)" 5 "bottled, mineral (e.g., Perrier)"
label values choice83 _KbRRFWnK2J

label variable bvpor19 "If you drink water, your portion is usually closest to (8 fl. ounces = 1 cup; 1 liter = 33 fl. ounces) ..."
label define _4frTWMQlXI 2 "8 fl. ounces" 3 "12 fl. ounces" 1 "4 fl. Ounces" 4 "16 fl. ounces or more"
label values bvpor19 _4frTWMQlXI

label variable bvfrq20 "Beer"
label define _PIsFfXLQNw 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq20 _PIsFfXLQNw

label variable bvfrq21 "Wine coolers"
label define _RRaKHRGMwu 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 6 "1x per day" 4 "2-4x per week" 7 "2-3x per day" 5 "5-6x per week" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq21 _RRaKHRGMwu

label variable bvfrq22 "Wine (red)"
label define _WI08ZgmrHE 0 "Never" 1 "< 1x per month" 4 "2-4x per week" 2 "1-3x per month" 3 "1x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq22 _WI08ZgmrHE

label variable bvfrq23 "Wine (white)"
label define _EhCybG3xJ9 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 5 "5-6x per week" 6 "1x per day" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq23 _EhCybG3xJ9

label variable bvfrq24 "Mixed drinks"
label define _oALc5jnoBx 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 5 "5-6x per week" 7 "2-3x per day" 6 "1x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq24 _oALc5jnoBx

label variable bvfrq25 "Other alcohol (e.g., whiskey, vodka, brandy)"
label define _t9AXxcorwY 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq25 _t9AXxcorwY

label variable choice84 "If you drink beer, it is usually..."
label define _dTlyzU5Gyb 1 "regular" 2 "light"
label values choice84 _dTlyzU5Gyb

label variable bvpor20 "If you drink beer or wine coolers, your portion is usually closest to... (1 can or bottle = 12 fl ounces)"
label define _tBWvdDMihg 1 "1 can or bottle" 2 "2 cans or bottles" 3 "3 cans or bottles" 4 "4 cans or bottles or more"
label values bvpor20 _tBWvdDMihg

label variable bvpor22 "If you drink wine, your portion is usually closest to... (1 glass = 4 fl ounces)"
label define _vSVAJFutYy 1 "1 glass" 2 "2 glasses" 3 "3 glasses" 4 "4 glasses or more"
label values bvpor22 _vSVAJFutYy

label variable bvpor24 "If you drink mixed drinks and/or other alcohol, your portion is usually closest to... (1 drink = 1 1/2 fl ounces or 1 shot)"
label define _c2urxyazCM 1 "1 drink" 2 "2 drinks" 3 "3 drinks" 4 "4 drinks or more"
label values bvpor24 _c2urxyazCM

label variable bvfrq26 "Hot chocolate, cocoa"
label define _xVY6END4lx 1 "< 1x per month" 0 "Never" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 5 "5-6x per week" 7 "2-3x per day" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq26 _xVY6END4lx

label variable bvfrq27 "Coffee (regular)"
label define _OIxQ7cjKhU 0 "Never" 6 "1x per day" 7 "2-3x per day" 1 "< 1x per month" 4 "2-4x per week" 5 "5-6x per week" 2 "1-3x per month" 8 "4-5x per day" 3 "1x per week" 9 "6+x per day"
label values bvfrq27 _OIxQ7cjKhU

label variable bvfrq28 "Coffee (decaffeinated)"
label define _raIIEBM2Rs 0 "Never" 1 "< 1x per month" 6 "1x per day" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 7 "2-3x per day" 5 "5-6x per week" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq28 _raIIEBM2Rs

label variable bvfrq29 "Pre-sweetened coffee drinks (e.g., Dunkin Donut's Coffee Coolatta, Starbuck's Frappuccino)"
label define _QOslRSaJR8 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 3 "1x per week" 4 "2-4x per week" 6 "1x per day" 7 "2-3x per day" 5 "5-6x per week" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq29 _QOslRSaJR8

label variable bvfrq30 "Herbal or green tea (hot or fresh-brewed iced)"
label define _hF5j4ia2nf 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 6 "1x per day" 3 "1x per week" 5 "5-6x per week" 7 "2-3x per day" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq30 _hF5j4ia2nf

label variable bvfrq31 "Black tea (regular, hot or fresh-brewed iced)"
label define _GClfglDD8m 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 6 "1x per day" 7 "2-3x per day" 5 "5-6x per week" 9 "6+x per day" 8 "4-5x per day"
label values bvfrq31 _GClfglDD8m

label variable bvfrq32 "Black tea (decaffeinated, hot of fresh-brewed iced)"
label define _3kflDlHqRA 0 "Never" 1 "< 1x per month" 2 "1-3x per month" 4 "2-4x per week" 3 "1x per week" 6 "1x per day" 7 "2-3x per day" 5 "5-6x per week" 8 "4-5x per day" 9 "6+x per day"
label values bvfrq32 _3kflDlHqRA

label variable bvpor26 "If you drink hot chocolate or cocoa, your portion is usually closest to ..."
label define _3ZNYrHjHAl 1 "Small (6 fl. ounces or 3/4 cup)" 2 "Medium (12 fl. ounces or 1 1/2 cups)" 3 "Large (18 fl. ounces or 2 1/4 cups)" 4 "Extra Large (24 fl. ounces or 3 cups) or more"
label values bvpor26 _3ZNYrHjHAl

label variable choice85___1 "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=regular ground)"
label define _beIE9TeuGL 1 "Checked" 0 "Unchecked"
label values choice85___1 _beIE9TeuGL

label variable choice85___2 "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=espresso)"
label define _o0GEhBaglR 0 "Unchecked" 1 "Checked"
label values choice85___2 _o0GEhBaglR

label variable choice85___3 "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=instant)"
label define _uH4x9GJaD8 0 "Unchecked" 1 "Checked"
label values choice85___3 _uH4x9GJaD8

label variable bvpor27 "If you drink coffee or tea, your portion (including milk/cream) is usually closest to ..."
label define _U3iGT0em5b 1 "Sm. (8 fl. ounces or 1 cup)" 2 "Med. (12 fl. ounces or 1 1/2 cups)" 3 "Lg. (16 fl. ounces or 2 cups)" 4 "Extra lg. (24 fl. ounces or 3 cups) or more"
label values bvpor27 _U3iGT0em5b

label variable c88 "If you add sugar to coffee, it is usually(choose one)?..."
label define _ayykKmgpnr 1 "1 teaspoon in coffee" 2 "2 teaspoon in coffee" 5 "artificial sweetener in coffee" 3 "3 teaspoon in coffee" 4 "4 teaspoon in coffee" 0 "no sugar in coffee"
label values c88 _ayykKmgpnr

label variable c88_2 "If you add sugar to tea, it is usually(choose one)?..."
label define _Ig91mtyjAu 1 "1 teaspoon in tea" 2 "2 teaspoon in tea" 5 "artificial sweetener in tea" 3 "3 teaspoon in tea" 4 "4 teaspoon in tea" 0 "no sugar in tea"
label values c88_2 _Ig91mtyjAu

label variable c93 "If you add milk or cream to coffee, it is usually prepared.."
label define _7ILOVJIXZC 2 "regular (some milk/cream) in coffee" 3 "light (extra milk/cream) in coffee" 1 "dark (very little milk/cream) in coffee" 4 "half milk/cream, in coffee" 5 "more milk/cream, in coffee"
label values c93 _7ILOVJIXZC

label variable c93_2 "If you add milk or cream to tea, it is usually prepared..."
label define _bgEIJwTMh7 2 "regular (some milk/cream) in tea" 3 "light (extra milk/cream) in tea" 1 "dark (very little milk/cream) in tea" 4 "half milk/cream, in tea" 5 "more milk/cream, in tea"
label values c93_2 _bgEIJwTMh7

label variable choice98 "If you add milk or cream to coffee and/or tea, it is usually (choose one) ..."
label define _Gc49TBk9Ga 1 "milk" 2 "half & half cream" 4 "cream substitute, liquid (e.g., Coffee Rich, Coffee-mate, International Delight)" 3 "light or coffee cream" 5 "cream substitute, powdered (e.g., Coffee-mate, Cremora)"
label values choice98 _Gc49TBk9Ga

label variable choice99 "If you add cream substitute (liquid or powder) to coffee and/or tea, it is usually..."
label define _ZGNHkUEFOi 1 "regular" 2 "reduced fat or light" 3 "fat free"
label values choice99 _ZGNHkUEFOi

label variable summary1 "How often do you add salt to your food at the table?"
label define _1MYBR7wcfu 2 "Sometimes" 1 "Never" 3 "Often/always"
label values summary1 _1MYBR7wcfu

label variable summary2___1 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=stick margarine)"
label define _8UH0YliaCI 0 "Unchecked" 1 "Checked"
label values summary2___1 _8UH0YliaCI

label variable summary2___2 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=lard, salt pork or bacon fat)"
label define _SHy0XCCgpo 0 "Unchecked" 1 "Checked"
label values summary2___2 _SHy0XCCgpo

label variable summary2___3 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like)"
label define _TJtVPQFyM8 0 "Unchecked" 1 "Checked"
label values summary2___3 _TJtVPQFyM8

label variable summary2___4 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=canola oil)"
label define _CEzKQ4583E 0 "Unchecked" 1 "Checked"
label values summary2___4 _CEzKQ4583E

label variable summary2___5 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=other vegetable oil)"
label define _oZ4IcBzsTV 0 "Unchecked" 1 "Checked"
label values summary2___5 _oZ4IcBzsTV

label variable summary2___6 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=tub margarine)"
label define _0rGscnOk5v 0 "Unchecked" 1 "Checked"
label values summary2___6 _0rGscnOk5v

label variable summary2___7 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=spread, light)"
label define _oMdS7LU8oo 0 "Unchecked" 1 "Checked"
label values summary2___7 _oMdS7LU8oo

label variable summary2___8 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=shortening)"
label define _Z8TRDi6JKZ 0 "Unchecked" 1 "Checked"
label values summary2___8 _Z8TRDi6JKZ

label variable summary2___9 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like spread)"
label define _Dm3sbSBysX 0 "Unchecked" 1 "Checked"
label values summary2___9 _Dm3sbSBysX

label variable summary2___10 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=butter)"
label define _keQs14hsAA 0 "Unchecked" 1 "Checked"
label values summary2___10 _keQs14hsAA

label variable summary2___11 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=olive oil)"
label define _JRae1B13e6 1 "Checked" 0 "Unchecked"
label values summary2___11 _JRae1B13e6

label variable summary2___12 "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=corn oil)"
label define _J06bJgbXCA 0 "Unchecked" 1 "Checked"
label values summary2___12 _J06bJgbXCA

label variable summary14 "Not including lettuce or potatoes, how often do you eat vegetables?"
label define _CW2OintA2L 5 "1x per day" 6 "2x per day" 4 "5-6x per week" 3 "3-4x per week" 7 "3x per day" 2 "1-2x per week" 8 "4+x per day" 0 "Never" 1 "< 1x per week"
label values summary14 _CW2OintA2L

label variable summary15 "Not including juices, how often do you eat fruit?"
label define _jUaET2SZQG 5 "1x per day" 6 "2x per day" 3 "3-4x per week" 4 "5-6x per week" 2 "1-2x per week" 7 "3x per day" 1 "< 1x per week" 0 "Never" 8 "4+x per day"
label values summary15 _jUaET2SZQG

label variable summary16 "How often do you eat out (incl. restaurants, fast food and/or take-out)?"
label define _NyW2G5GVBd 1 "< 1x per week" 2 "1-2x per week" 3 "3-4x per week" 0 "Never" 4 "5-6x per week" 5 "1x per day" 6 "2x per day" 7 "3x per day" 8 "4+x per day"
label values summary16 _NyW2G5GVBd

label variable summary17 "Do you follow a specific diet regimen (e.g., kosher, vegetarian)?"
label define _CtI1wCs14x 3 "weight reduction" 2 "vegetarian/vegan" 4 "physician-prescribed diet" 1 "kosher"
label values summary17 _CtI1wCs14x

label variable summary18 "Where do you usually eat breakfast?"
label define _9bILdmmxS9 1 "Home" 2 "Work" 4 "Fast food chain" 3 "Cafeteria" 5 "Restaurant"
label values summary18 _9bILdmmxS9

label variable summary19 "Where do you usually eat lunch?"
label define _QUMli06RIJ 1 "Home" 2 "Work" 5 "Restaurant" 3 "Cafeteria" 4 "Fast food chain"
label values summary19 _QUMli06RIJ

label variable summary20 "Where do you usually eat dinner?"
label define _vEoIej8syZ 1 "Home" 5 "Restaurant" 3 "Cafeteria" 2 "Work" 4 "Fast food chain"
label values summary20 _vEoIej8syZ

label variable open_end3 "Are there any other foods that you eat at least once per week (not mentioned in the previous sections)? If so, please describe:"

label variable supp_yn "Do you currently take any vitamin or mineral supplements or antacids?"
label define _e7oilejxuD 1 "Yes" 0 "No (if so, stop here)"
label values supp_yn _e7oilejxuD

label variable supfrq1 "Multi-vitamin (e.g. Centrum, One-A-Day)"
label define _Y2pbQudr1c 2 "Daily" 1 "Occasionally"
label values supfrq1 _Y2pbQudr1c

label variable supdur1 "Multi-vitamin (e.g., Centrum, One-A-Day)"
label define _ddMq2q40wl 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur1 _ddMq2q40wl

label variable supfrq2 "Senior formula"
label define _k5QoRvIWV9 2 "Daily" 1 "Occasionally"
label values supfrq2 _k5QoRvIWV9

label variable supdur2 "Senior formula"
label define _3FsJgR0tjC 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur2 _3FsJgR0tjC

label variable supfrq3 "Stress tabs or B-complex"
label define _y5O9qeyulV 2 "Daily" 1 "Occasionally"
label values supfrq3 _y5O9qeyulV

label variable supdur3 "Stress tabs or B-complex"
label define _VggynZLwwH 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur3 _VggynZLwwH

label variable supfrq4 "Calcium/Vitamin D or bone complex (e.g. Oscal)"
label define _1qo71lr0kT 2 "Daily" 1 "Occasionally"
label values supfrq4 _1qo71lr0kT

label variable supdur4 "Calcium/Vitamin D or bone complex (e.g., Oscal)"
label define _mDA5nJ5gO8 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur4 _mDA5nJ5gO8

label variable supfrq5 "Vitamin A"
label define _Ir9PYOKTnc 2 "Daily" 1 "Occasionally"
label values supfrq5 _Ir9PYOKTnc

label variable supdur5 "Vitamin A"
label define _dWbC8mBrg9 4 "10+ years" 2 "1-4 years" 1 "Less than 1 year" 3 "5-9 years"
label values supdur5 _dWbC8mBrg9

label variable supfrq6 "Vitamin C"
label define _kUwosARzxL 2 "Daily" 1 "Occasionally"
label values supfrq6 _kUwosARzxL

label variable supdur6 "Vitamin C"
label define _3TqTckYtaW 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur6 _3TqTckYtaW

label variable supfrq7 "Vitamin D"
label define _IZXcEJQjdX 2 "Daily" 1 "Occasionally"
label values supfrq7 _IZXcEJQjdX

label variable supdur7 "Vitamin D"
label define _t0QoMzYzmN 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur7 _t0QoMzYzmN

label variable supfrq8 "Vitamin E"
label define _QdqdG9aHC5 2 "Daily" 1 "Occasionally"
label values supfrq8 _QdqdG9aHC5

label variable supdur8 "Vitamin E"
label define _a1kUXWe0VX 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur8 _a1kUXWe0VX

label variable supfrq9 "Folic Acid"
label define _C8z4dpKIxN 2 "Daily" 1 "Occasionally"
label values supfrq9 _C8z4dpKIxN

label variable supdur9 "Folic Acid"
label define _thkdp6zZqk 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur9 _thkdp6zZqk

label variable supfrq10 "Vitamin B-6"
label define _2UXJ0M2xyF 2 "Daily" 1 "Occasionally"
label values supfrq10 _2UXJ0M2xyF

label variable supdur10 "Vitamin B-6"
label define _IRIZHIvo1e 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur10 _IRIZHIvo1e

label variable supfrq11 "Vitamin B-12"
label define _0iPVb2sUxG 2 "Daily" 1 "Occasionally"
label values supfrq11 _0iPVb2sUxG

label variable supdur11 "Vitamin B-12"
label define _FaUWsKSPn0 2 "1-4 years" 4 "10+ years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur11 _FaUWsKSPn0

label variable supfrq12 "Calcium"
label define _PF7Lr9q1i6 2 "Daily" 1 "Occasionally"
label values supfrq12 _PF7Lr9q1i6

label variable supdur12 "Calcium"
label define _gy3tYTJoQ1 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur12 _gy3tYTJoQ1

label variable supfrq13 "Magnesium"
label define _GU2MVZvm8e 2 "Daily" 1 "Occasionally"
label values supfrq13 _GU2MVZvm8e

label variable supdur13 "Magnesium"
label define _1N76YZOrDA 4 "10+ years" 2 "1-4 years" 1 "Less than 1 year" 3 "5-9 years"
label values supdur13 _1N76YZOrDA

label variable supfrq14 "Potassium"
label define _1WOof1HNQM 2 "Daily" 1 "Occasionally"
label values supfrq14 _1WOof1HNQM

label variable supdur14 "Potassium"
label define _I0tlfNEplD 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur14 _I0tlfNEplD

label variable supfrq15 "Iron"
label define _Omw0twriBA 2 "Daily" 1 "Occasionally"
label values supfrq15 _Omw0twriBA

label variable supdur15 "Iron"
label define _8JbgRX9NLC 4 "10+ years" 2 "1-4 years" 3 "5-9 years" 1 "Less than 1 year"
label values supdur15 _8JbgRX9NLC

label variable supfrq16 "Selenium"
label define _eplz7JR6vy 2 "Daily" 1 "Occasionally"
label values supfrq16 _eplz7JR6vy

label variable supdur16 "Selenium"
label define _jneGPsfVBs 4 "10+ years" 2 "1-4 years" 1 "Less than 1 year" 3 "5-9 years"
label values supdur16 _jneGPsfVBs

label variable supfrq17 "Fish oil"
label define _LwQkOFhn1R 2 "Daily" 1 "Occasionally"
label values supfrq17 _LwQkOFhn1R

label variable supdur17 "Fish Oil"
label define _5dDOlBYEmg 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur17 _5dDOlBYEmg

label variable supfrq18 "Calcium containing antacids (e.g. Tums, Alka-Mints, Maalox tablets)"
label define _AmpS12pbf8 1 "Occasionally" 2 "Daily"
label values supfrq18 _AmpS12pbf8

label variable supdur18 "Calcium containing antacids (e.g., Tums, Alka-Mints, Maalox tablets)"
label define _b6FVSwIBtD 4 "10+ years" 3 "5-9 years" 2 "1-4 years" 1 "Less than 1 year"
label values supdur18 _b6FVSwIBtD

label variable supfrq19 "Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
label define _oY9zgm4lyU 1 "Occasionally" 2 "Daily"
label values supfrq19 _oY9zgm4lyU

label variable supdur19 "Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
label define _cyG8FXBpfk 2 "1-4 years" 4 "10+ years" 1 "Less than 1 year" 3 "5-9 years"
label values supdur19 _cyG8FXBpfk

label variable open_end4 "Are there any other supplements or highly fortified foods or beverages (not mentioned in the previous sections) that you take at least once per week? If so, please describe:"

label variable tufts_food_frequency_v_1 "Complete?"
label define _i8q1DVTga7 2 "Complete" 0 "Incomplete" 1 "Unverified"
label values tufts_food_frequency_v_1 _i8q1DVTga7

