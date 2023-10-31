%let path_to_file = '../data-csv/nutr_ffq.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE sex_
		2 = 'Female'
		1 = 'Male'
	;

	VALUE age_cat_
		5 = '>80'
		4 = '71-80'
		3 = '51-70'
		2 = '31-50'
		1 = '19-30'
	;

	VALUE frt_sadj___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE frt_sadj___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___5_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___6_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___7_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE frt_sadj___8_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdfrq1_
		3 = '2-3x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		4 = '1x per week'
		2 = '1x per month'
		1 = '< 1x per month'
		8 = '1x per day'
		7 = '5-6x per week'
		0 = 'Never'
		9 = '2+x per day'
	;

	VALUE fdfrq2_
		6 = '3-4x per week'
		5 = '2x per week'
		8 = '1x per day'
		3 = '2-3x per month'
		4 = '1x per week'
		7 = '5-6x per week'
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		9 = '2+x per day'
	;

	VALUE fdfrq3_
		3 = '2-3x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		2 = '1x per month'
		5 = '2x per week'
		0 = 'Never'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq4_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq5_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq6_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq7_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		0 = 'Never'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq8_
		0 = 'Never'
		3 = '2-3x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		2 = '1x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq9_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
		7 = '5-6x per week'
	;

	VALUE fdfrq10_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		8 = '1x per day'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq11_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq12_
		1 = '< 1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		2 = '1x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		4 = '1x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq13_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq14_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq15_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq16_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq17_
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		1 = '< 1x per month'
		6 = '3-4x per week'
		0 = 'Never'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq18_
		3 = '2-3x per month'
		1 = '< 1x per month'
		6 = '3-4x per week'
		5 = '2x per week'
		2 = '1x per month'
		4 = '1x per week'
		8 = '1x per day'
		0 = 'Never'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq19_
		1 = '< 1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdpor12_
		1 = '1/8 CUP'
		2 = '1/4 CUP'
		4 = '1/2 CUP or more'
		3 = '3/8 CUP'
	;

	VALUE fdpor13_
		2 = '1 wedge or 3/4 CUP'
		1 = '1/2 wedge or 1/2 CUP'
		3 = '1 1/2 wedges or 1 CUP'
		4 = '2 or more wedges or 1 1/2 cups or more'
	;

	VALUE fdpor15_
		2 = '1 med. slice/wedge'
		3 = '1 lg.slice/wedge'
		1 = '1 sm. slice or 1/2 wedge'
		4 = '> 1 lg. slice/wedge'
	;

	VALUE fdpor16_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1&1/2cups'
		4 = '2 cups or more'
	;

	VALUE fdpor19_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1&1/2cups'
		4 = '2 cups or more'
	;

	VALUE fdfrq20_
		1 = '< 1x per month'
		0 = 'Never'
		6 = '3-4x per week'
		8 = '1x per day'
		3 = '2-3x per month'
		5 = '2x per week'
		7 = '5-6x per week'
		4 = '1x per week'
		2 = '1x per month'
		9 = '2+x per day'
	;

	VALUE fdfrq22_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq23_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq24_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq28_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq29_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq30_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdpor20_
		2 = '3/4 cup'
		3 = '1&1/2cups'
		1 = '1/2 cup'
		4 = '2 cups or more'
	;

	VALUE fdpor21_
		2 = '1/2 cup'
		1 = '1/4 cup'
		3 = '1 cup'
		4 = '1&1/2cups'
	;

	VALUE choice1_
		1 = 'regular/old-fashioned'
		2 = 'quick'
		3 = 'instant/fortified'
	;

	VALUE fdpor22_
		2 = '3/4 cup'
		1 = '1/2 cup'
		3 = '1&1/2cups'
		4 = '2 cups or more'
	;

	VALUE fdpor25_
		1 = '1/4 cup'
		2 = '1/2 cup'
		3 = '1 cup'
		4 = '1&1/2cups'
	;

	VALUE fdpor29_
		2 = '1 bar'
		1 = '1/2 bar'
		4 = '2 bars or more'
		3 = '1&1/2 bars'
	;

	VALUE choice2_
		2 = 'low-carb/high protein (e.g., Atkins)'
		1 = 'high-carb/low fat (e.g., PowerBars)'
		3 = 'low-calorie/ weight loss (e.g., Slim-Fast)'
	;

	VALUE fdpor30_
		2 = '1 bar'
		1 = '1/2 bar'
		4 = '2 bars or more'
		3 = '1 1/2 bars'
	;

	VALUE choice3_
		1 = 'Do not know brand name'
	;

	VALUE open_end1_
		1 = 'Default cereal'
		2 = 'All Bran Cereal (Kelloggs)'
		3 = 'Alpha-Bits'
		4 = 'Apple Cinnamon Cheerios'
		5 = "Apple Jacks (Kellogg's)"
		6 = 'Banana Nut Crunch Cereal (Post)'
		7 = 'Basic 4 Cereal'
		8 = 'Bran cereal 100% (Nabisco)'
		9 = 'Bran Chex'
		10 = "Cap'n Crunch"
		11 = 'Cheerios (General Mills)'
		12 = 'Cocoa Krispies'
		13 = 'Cocoa Pebbles'
		14 = 'Cocoa Puffs'
		15 = "Complete Oat Bran Flakes (Kellogg's)"
		16 = "Complete Wheat Bran Flakes (Kellogg's)"
		17 = 'Cookie-Crisp'
		18 = 'Corn Chex Cereal (Ralston)'
		19 = "Corn Flakes (Kellogg's)"
		20 = 'Corn Pops'
		21 = "Cracklin Oat Bran (Kellogg's)"
		22 = "Crispix Cereal (Kellogg's)"
		23 = 'Crispy Rice'
		24 = 'Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)'
		25 = 'Fiber One (General Mills)'
		26 = 'Frosted Cheerios'
		27 = "Frosted Flakes (Kellogg's)"
		28 = 'Frosted Mini Wheat Cereal (Kelloggs)'
		29 = 'Fruit And Fiber Dates Raisins and Walnuts (Post)'
		30 = "Fruit Loops (Kellogg's)"
		31 = 'Fruity Pebbles'
		32 = 'Golden Grahams'
		33 = 'Golden Sugar Crisps (Post)'
		34 = 'Grape-nut Flakes Cereal (Post)'
		35 = 'Great Grains Raisin Date and Pecan (Post)'
		36 = 'Honey Bunches of Oats'
		37 = 'Honey Bunches of Oats with Almonds (Post)'
		38 = "Honey Graham Oh's Cereal"
		39 = "Honey Graham Oh's cereal (Quaker)"
		40 = 'Honey Nut Cheerios'
		41 = 'Honey Nut Oat Rings'
		42 = 'Honey Nut Oats (Quaker)'
		43 = 'Honey Smacks'
		44 = 'Honeycomb Cereal (Post)'
		45 = 'Just right Fruit & Nut cereal (Kelloggs)'
		46 = 'King Vitamin'
		47 = 'Kix'
		48 = 'Life (Cinnamon)'
		49 = 'Life (Plain)'
		50 = 'Lucky Charms'
		51 = 'Malt-O-Meal Corn Bursts'
		52 = 'Malt-O-Meal Golden Puffs (formerly Sugar Puffs)'
		53 = "Mueslix Apple And Almond Crunch (Kellogg's)"
		54 = 'Multi Bran Chex Cereal'
		55 = "Multi Grain Cheerios (Kellogg's)"
		56 = 'Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)'
		57 = "Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kellogg's)"
		58 = 'Oat Bran Flakes (Health Valley)'
		59 = 'Oatmeal Crisp with Almonds'
		60 = 'Oatmeal Crisp with Apple Cinnamon (General Mills)'
		61 = 'Oatmeal Crisp with Raisin (General Mills)'
		62 = "Product 19 (Kellogg's)"
		63 = 'Raisin Bran (Post)'
		64 = 'Raisin Square Cereal'
		65 = "Reese's Peanut Butter Puffs Cereal"
		66 = 'Rice Chex'
		67 = 'Rice Krispies'
		68 = 'Shredded Wheat 100%'
		69 = "Special K (Kellogg's)"
		70 = 'Sweet Puffs Quaker'
		71 = 'Toasted Oat Cereal (Quaker)'
		72 = 'Total Corn Flakes'
		73 = 'Total Raisin Bran (General Mills)'
		74 = 'Trix'
		75 = "Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kellogg's)"
		76 = 'Wheat Chex'
		77 = 'Wheat Puffed Plain'
		78 = 'Wheaties Cereal'
	;

	VALUE open_end2_
		1 = 'Default cereal'
		2 = 'All Bran Cereal (Kelloggs)'
		3 = 'Alpha-Bits'
		4 = 'Apple Cinnamon Cheerios'
		5 = "Apple Jacks (Kellogg's)"
		6 = 'Banana Nut Crunch Cereal (Post)'
		7 = 'Basic 4 Cereal'
		8 = 'Bran cereal 100% (Nabisco)'
		9 = 'Bran Chex'
		10 = "Cap'n Crunch"
		11 = 'Cheerios (General Mills)'
		12 = 'Cocoa Krispies'
		13 = 'Cocoa Pebbles'
		14 = 'Cocoa Puffs'
		15 = "Complete Oat Bran Flakes (Kellogg's)"
		16 = "Complete Wheat Bran Flakes (Kellogg's)"
		17 = 'Cookie-Crisp'
		18 = 'Corn Chex Cereal (Ralston)'
		19 = "Corn Flakes (Kellogg's)"
		20 = 'Corn Pops'
		21 = "Cracklin Oat Bran (Kellogg's)"
		22 = "Crispix Cereal (Kellogg's)"
		23 = 'Crispy Rice'
		24 = 'Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)'
		25 = 'Fiber One (General Mills)'
		26 = 'Frosted Cheerios'
		27 = "Frosted Flakes (Kellogg's)"
		28 = 'Frosted Mini Wheat Cereal (Kelloggs)'
		29 = 'Fruit And Fiber Dates Raisins and Walnuts (Post)'
		30 = "Fruit Loops (Kellogg's)"
		31 = 'Fruity Pebbles'
		32 = 'Golden Grahams'
		33 = 'Golden Sugar Crisps (Post)'
		34 = 'Grape-nut Flakes Cereal (Post)'
		35 = 'Great Grains Raisin Date and Pecan (Post)'
		36 = 'Honey Bunches of Oats'
		37 = 'Honey Bunches of Oats with Almonds (Post)'
		38 = "Honey Graham Oh's Cereal"
		39 = "Honey Graham Oh's cereal (Quaker)"
		40 = 'Honey Nut Cheerios'
		41 = 'Honey Nut Oat Rings'
		42 = 'Honey Nut Oats (Quaker)'
		43 = 'Honey Smacks'
		44 = 'Honeycomb Cereal (Post)'
		45 = 'Just right Fruit & Nut cereal (Kelloggs)'
		46 = 'King Vitamin'
		47 = 'Kix'
		48 = 'Life (Cinnamon)'
		49 = 'Life (Plain)'
		50 = 'Lucky Charms'
		51 = 'Malt-O-Meal Corn Bursts'
		52 = 'Malt-O-Meal Golden Puffs (formerly Sugar Puffs)'
		53 = "Mueslix Apple And Almond Crunch (Kellogg's)"
		54 = 'Multi Bran Chex Cereal'
		55 = "Multi Grain Cheerios (Kellogg's)"
		56 = 'Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)'
		57 = "Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kellogg's)"
		58 = 'Oat Bran Flakes (Health Valley)'
		59 = 'Oatmeal Crisp with Almonds'
		60 = 'Oatmeal Crisp with Apple Cinnamon (General Mills)'
		61 = 'Oatmeal Crisp with Raisin (General Mills)'
		62 = "Product 19 (Kellogg's)"
		63 = 'Raisin Bran (Post)'
		64 = 'Raisin Square Cereal'
		65 = "Reese's Peanut Butter Puffs Cereal"
		66 = 'Rice Chex'
		67 = 'Rice Krispies'
		68 = 'Shredded Wheat 100%'
		69 = "Special K (Kellogg's)"
		70 = 'Sweet Puffs Quaker'
		71 = 'Toasted Oat Cereal (Quaker)'
		72 = 'Total Corn Flakes'
		73 = 'Total Raisin Bran (General Mills)'
		74 = 'Trix'
		75 = "Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kellogg's)"
		76 = 'Wheat Chex'
		77 = 'Wheat Puffed Plain'
		78 = 'Wheaties Cereal'
	;

	VALUE fdfrq31_
		0 = 'Never'
		1 = '< 1x per month'
		5 = '2x per week'
		3 = '2-3x per month'
		6 = '3-4x per week'
		4 = '1x per week'
		2 = '1x per month'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq32_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq33_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		2 = '1x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq34_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq35_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq36_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		8 = '1x per day'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq37_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq38_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq39_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE choice4_
		1 = 'regular/commercial'
		2 = 'homemade/bakery'
		3 = 'light/reduced calorie'
		4 = 'low carb'
	;

	VALUE fdpor31_
		2 = '2 slices or pieces'
		1 = '1 slice or piece'
		3 = '3 slices or pieces'
		4 = '4 slices or pieces or more'
	;

	VALUE fdpor35_
		2 = '1 medium'
		1 = '1/2 medium'
		3 = '1 large'
		4 = '2 medium or more'
	;

	VALUE fdpor36_
		2 = '1 medium'
		1 = '1/2 medium'
		3 = '1 large'
		4 = '2 medium or more'
	;

	VALUE choice5_
		2 = 'corn flour'
		1 = 'white flour'
		3 = 'whole wheat flour'
		4 = 'other'
	;

	VALUE fdpor37_
		1 = '1 medium'
		2 = '2 medium or 1 large'
		3 = '3 medium'
		4 = '4 medium or 2 large or more'
	;

	VALUE fdpor39_
		2 = '2 pancakes, waffles or slices of french toast'
		3 = '3 pancakes, waffles or slices of french toast'
		1 = '1 pancake, waffle or slice of french toast'
		4 = '4 pancakes, waffles or slices of french toast or more'
	;

	VALUE fdpor40_
		2 = '1 pat'
		1 = '1/2 pat'
		3 = '1&1/2 pats'
		4 = '2 pats or more'
	;

	VALUE fdpor41_
		1 = '1 tablespoon'
		2 = '2 tablespoons'
		3 = '3 tablespoons'
		4 = '4 tablespoons or more'
	;

	VALUE fdfrq42_
		6 = '3-4x per week'
		7 = '5-6x per week'
		5 = '2x per week'
		8 = '1x per day'
		3 = '2-3x per month'
		4 = '1x per week'
		2 = '1x per month'
		0 = 'Never'
		9 = '2+x per day'
		1 = '< 1x per month'
	;

	VALUE fdfrq43_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq44_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq45_
		6 = '3-4x per week'
		5 = '2x per week'
		3 = '2-3x per month'
		4 = '1x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		2 = '1x per month'
		0 = 'Never'
		1 = '< 1x per month'
		9 = '2+x per day'
	;

	VALUE fdfrq46_
		3 = '2-3x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		2 = '1x per month'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq47_
		3 = '2-3x per month'
		6 = '3-4x per week'
		4 = '1x per week'
		1 = '< 1x per month'
		5 = '2x per week'
		2 = '1x per month'
		0 = 'Never'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq48_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq49_
		3 = '2-3x per month'
		4 = '1x per week'
		2 = '1x per month'
		5 = '2x per week'
		1 = '< 1x per month'
		0 = 'Never'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq50_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq51_
		3 = '2-3x per month'
		2 = '1x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		5 = '2x per week'
		0 = 'Never'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq52_
		3 = '2-3x per month'
		4 = '1x per week'
		0 = 'Never'
		2 = '1x per month'
		1 = '< 1x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq53_
		4 = '1x per week'
		3 = '2-3x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		2 = '1x per month'
		0 = 'Never'
		1 = '< 1x per month'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq54_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq55_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq56_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq57_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq58_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq59_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
		8 = '1x per day'
	;

	VALUE fdfrq60_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq61_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq62_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq63_
		3 = '2-3x per month'
		6 = '3-4x per week'
		5 = '2x per week'
		4 = '1x per week'
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq64_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq65_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq66_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq67_
		3 = '2-3x per month'
		6 = '3-4x per week'
		5 = '2x per week'
		4 = '1x per week'
		2 = '1x per month'
		7 = '5-6x per week'
		1 = '< 1x per month'
		0 = 'Never'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE choice6___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice6___2_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice6___3_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice6___4_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE fdpor42_
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
		1 = '1/2 cup'
	;

	VALUE fdpor43_
		2 = '1/2 cup'
		3 = '3/4 cup'
		4 = '1 cup or more'
		1 = '1/4 cup'
	;

	VALUE fdpor45_
		2 = '2 slices or wedges'
		3 = '3 slices or wedges'
		4 = '4 slices or wedges or more'
		1 = '1 slice or wedge'
	;

	VALUE choice10___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice10___2_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice10___3_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE fdpor62_
		1 = 'sm order (1/2 cup)'
		2 = 'med order (1 cup)'
		3 = 'lg order (1 1/2 cups)'
		4 = 'supersize (2 cups)'
	;

	VALUE fdpor46_
		2 = '1/2 cup'
		3 = '3/4 cup'
		4 = '1 cup or more'
		1 = '1/4 cup'
	;

	VALUE choice13___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___5_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___6_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___7_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice13___8_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice21_
		1 = '1'
		2 = '2'
		3 = '3'
		4 = '4'
		9 = '9'
		5 = '5'
		6 = '6'
		7 = '7'
		8 = '8'
	;

	VALUE fdfrq68_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		9 = '2+x per day'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
	;

	VALUE fdfrq69_
		3 = '2-3x per month'
		2 = '1x per month'
		1 = '< 1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq70_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq71_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq72_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq73_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq74_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq75_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq76_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq77_
		3 = '2-3x per month'
		2 = '1x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq78_
		3 = '2-3x per month'
		2 = '1x per month'
		1 = '< 1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq79_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
		6 = '3-4x per week'
		8 = '1x per day'
	;

	VALUE fdfrq80_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq81_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor68_
		2 = '1 cup'
		3 = '1 1/2 cups'
		1 = '1/2 cup'
		4 = '2 cups or more'
	;

	VALUE choice22___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice22___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice22___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice22___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor69_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor71_
		1 = '3 ounces'
		2 = '6 ounces'
		3 = '9 ounces'
		4 = '12 ounces or more'
	;

	VALUE fdpor74_
		1 = '1/2 cup (sm. order)'
		2 = '1 cup (med. order)'
		3 = '1 1/2 cups (lg. order)'
		4 = '2 cups (super size)'
	;

	VALUE fdpor76_
		2 = '1 cup'
		1 = '1/2 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE choice23___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice23___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice23___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice23___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor79_
		2 = '1/2 plantain or 3 slices'
		1 = '1/4 plantain or 1 slice'
		3 = '1 plantain or 6 slices'
		4 = '1 1/2 plantains or 9 slices or more'
	;

	VALUE fdpor80_
		1 = '1 each'
		2 = '2 each'
		3 = '3 each'
		4 = '4 each or more'
	;

	VALUE choice27___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice27___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice27___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice27___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdfrq82_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq83_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq84_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq85_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq86_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq87_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq88_
		1 = '< 1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq89_
		1 = '< 1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq90_
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		1 = '< 1x per month'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq91_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq92_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq93_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq94_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		9 = '2+x per day'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
	;

	VALUE fdfrq95_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq96_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor82_
		1 = '1 cup'
		2 = '2 cups'
		3 = '3 cups'
		4 = '4 cups or more'
	;

	VALUE fdpor86_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor90_
		1 = '1 cup'
		2 = '2 cups'
		3 = '3 cups'
		4 = '4 cups or more'
	;

	VALUE choice31___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice31___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice31___3_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice31___4_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice31___5_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice31___6_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice31___7_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice31___8_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor93_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE choice39___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice39___2_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice39___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice39___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice39___5_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor94_
		2 = '2 each'
		1 = '1 each'
		3 = '3 each'
		4 = '4 each or more'
	;

	VALUE choice44___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice44___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice44___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice44___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor95_
		2 = '2 slices'
		3 = '3 slices'
		1 = '1 slice'
		4 = '4 slices or more'
	;

	VALUE fdpor96_
		1 = '1 each'
		2 = '2 each'
		3 = '3 each'
		4 = '4 each or more'
	;

	VALUE fdfrq97_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq98_
		3 = '2-3x per month'
		2 = '1x per month'
		1 = '< 1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq99_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq100_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq101_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq102_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq103_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq104_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq105_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq106_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq107_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq108_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		7 = '5-6x per week'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE choice48_
		1 = 'Regular single burger'
		5 = 'Cheeseburger'
		6 = 'Double or 1/4 pound burger w/ cheese'
		2 = 'Double or 1/4 pound burger'
		3 = 'Whopper'
		7 = 'Whopper w/ cheese'
		8 = 'Big Mac w/ cheese'
		4 = 'Big Mac'
	;

	VALUE choice49_
		2 = 'Lean'
		1 = 'Regular'
		3 = 'Extra lean'
	;

	VALUE fdpor98_
		2 = '1 med. patty or 6 ounces'
		1 = '1 small patty or 3 ounces'
		3 = '1 large patty or 9 ounces'
		4 = '2 patties or 12 ounces or more'
	;

	VALUE choice50___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice50___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor99_
		1 = '1 cup'
		2 = '2 cups'
		3 = '3 cups'
		4 = '4 cups or more'
	;

	VALUE fdpor100_
		2 = '4 ounces'
		1 = '2 ounces'
		3 = '6 ounces'
		4 = '8 ounces or more'
	;

	VALUE fdpor107_
		2 = '4 ounces'
		1 = '2 ounces'
		3 = '6 ounces'
		4 = '8 ounces or more'
	;

	VALUE fdfrq109_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq110_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq111_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
		8 = '1x per day'
	;

	VALUE fdfrq112_
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		2 = '1x per month'
		6 = '3-4x per week'
		1 = '< 1x per month'
		0 = 'Never'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq113_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq114_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq115_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor110_
		2 = '1 med. patty or 6 ounces'
		1 = '1 small patty or 3 ounces'
		3 = '1 large patty or 9 ounces'
		4 = '2 patties or 12 ounces or more'
	;

	VALUE choice52___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice52___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice52___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE fdpor111_
		2 = '1 cup'
		1 = '1/2 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE choice55_
		3 = 'Both'
		1 = 'White meat'
		2 = 'Dark meat'
	;

	VALUE choice56_
		2 = 'Sometimes'
		1 = 'Never'
		3 = 'Often/always'
	;

	VALUE fdpor112_
		2 = '4 ounces (1 piece of breast or 1 whole leg = drumstick & thigh)'
		3 = '6 ounces'
		1 = '2 ounces (1 drumstick or thigh)'
		4 = '8 ounces or more'
	;

	VALUE fdpor114_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor115_
		1 = '1 ounce'
		2 = '2 ounces'
		3 = '3 ounces'
		4 = '4 ounces'
	;

	VALUE fdfrq116_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq117_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq118_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq119_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq120_
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		1 = '< 1x per month'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq121_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq122_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq123_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq124_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq125_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor117_
		2 = '6 ounces or 1 cup'
		1 = '3 ounces or 1/2 cup'
		3 = '9 ounces or 1 1/2 cups'
		4 = '12 ounces or 2 cups or more'
	;

	VALUE fdpor119_
		2 = '6 ounces or 1 cup'
		1 = '3 ounces or 1/2 cup'
		3 = '9 ounces or 1 1/2 cups'
		4 = '12 ounces or 2 cups or more'
	;

	VALUE choice57_
		2 = 'Water packed'
		3 = 'Either'
		1 = 'Oil packed'
	;

	VALUE fdpor122_
		1 = '1/2 cup'
		2 = '1 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor124_
		4 = '1 can or more'
		2 = '1/2 can'
		1 = '1/4 can'
		3 = '3/4 can'
	;

	VALUE fdfrq126_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq127_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq128_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq129_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq130_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq131_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq132_
		1 = '< 1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq133_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE choice58_
		1 = 'Regular'
		2 = 'Lean/lowfat'
		3 = 'Extra lean'
		4 = 'Fat free'
	;

	VALUE choice59_
		2 = 'Sometimes'
		3 = 'Often/always'
		1 = 'Never'
	;

	VALUE fdpor126_
		2 = '2 slices'
		1 = '1 slice'
		3 = '3 slices'
		4 = '4slices or more'
	;

	VALUE choice60_
		1 = 'Regular'
		3 = 'Chicken or turkey'
		2 = 'Lowfat'
	;

	VALUE fdpor130_
		1 = '1 each'
		2 = '2 each'
		3 = '3 each'
		4 = '4 each or more'
	;

	VALUE fdpor132_
		2 = '2 slices or pieces'
		3 = '3 slices or pieces'
		1 = '1 slice or piece'
		4 = '4 slices or pieces or more'
	;

	VALUE fdfrq134_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq135_
		6 = '3-4x per week'
		3 = '2-3x per month'
		5 = '2x per week'
		0 = 'Never'
		4 = '1x per week'
		1 = '< 1x per month'
		7 = '5-6x per week'
		2 = '1x per month'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq136_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq137_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq138_
		1 = '< 1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq139_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq140_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq141_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq142_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq143_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq144_
		0 = 'Never'
		3 = '2-3x per month'
		1 = '< 1x per month'
		6 = '3-4x per week'
		5 = '2x per week'
		4 = '1x per week'
		2 = '1x per month'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq145_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq146_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq147_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq148_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq149_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq150_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		6 = '3-4x per week'
		5 = '2x per week'
		4 = '1x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq151_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		6 = '3-4x per week'
		4 = '1x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		2 = '1x per month'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE choice61_
		1 = 'Regular'
		2 = 'Reduced fat/light'
		3 = 'Fat free'
	;

	VALUE fdpor134_
		1 = '1 tablespoon'
		2 = '2 tablespoons'
		3 = '3 tablespoons'
		4 = '4 tablespoons or more'
	;

	VALUE choice62_
		3 = 'Both'
		2 = 'Clear'
		1 = 'Creamy'
	;

	VALUE choice63_
		1 = 'Regular'
		2 = 'Reduced fat/low calorie'
		3 = 'Fat free'
	;

	VALUE fdpor135_
		2 = '2 tablespoons'
		1 = '1 tablespoon'
		3 = '3 tablespoons'
		4 = '4 tablespoons or more'
	;

	VALUE fdpor136_
		2 = '2 teaspoons'
		1 = '1 teaspoon'
		3 = '3 teaspoons'
		4 = '4 teaspoons or more'
	;

	VALUE fdpor144_
		1 = '1 tablespoon'
		2 = '2 tablespoons'
		3 = '3 tablespoons'
		4 = '4 tablespoons or more'
	;

	VALUE fdpor149_
		1 = '1/4 cup'
		2 = '1/2 cup'
		3 = '3/4 cup'
		4 = '1 cup or more'
	;

	VALUE choice64_
		3 = 'Both'
		1 = 'Fresh'
		2 = 'Dried'
	;

	VALUE fdfrq152_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq153_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq154_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		8 = '1x per day'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq155_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq156_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq157_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq158_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq159_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor152_
		1 = '1 cup'
		2 = '2 cups'
		3 = '3 cups'
		4 = '4 cups or more'
	;

	VALUE fdpor158_
		2 = '1 cup'
		3 = '1 1/2 cups'
		1 = '1/2 cup'
		4 = '2 cups or more'
	;

	VALUE fdfrq160_
		0 = 'Never'
		1 = '< 1x per month'
		8 = '1x per day'
		6 = '3-4x per week'
		3 = '2-3x per month'
		2 = '1x per month'
		5 = '2x per week'
		4 = '1x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq161_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		8 = '1x per day'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq162_
		3 = '2-3x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		4 = '1x per week'
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq163_
		0 = 'Never'
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq164_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		0 = 'Never'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq165_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq166_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq167_
		0 = 'Never'
		3 = '2-3x per month'
		1 = '< 1x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		4 = '1x per week'
		2 = '1x per month'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq168_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		6 = '3-4x per week'
		4 = '1x per week'
		3 = '2-3x per month'
		5 = '2x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq169_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		2 = '1x per month'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq170_
		4 = '1x per week'
		3 = '2-3x per month'
		5 = '2x per week'
		6 = '3-4x per week'
		2 = '1x per month'
		0 = 'Never'
		1 = '< 1x per month'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq171_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq172_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		9 = '2+x per day'
		7 = '5-6x per week'
		8 = '1x per day'
	;

	VALUE choice65_
		1 = 'Skim/nonfat or 1%'
		2 = '2%'
		3 = 'Whole'
		4 = 'Soymilk'
	;

	VALUE fdpor160_
		2 = '8 fl. ounces (1 cup)'
		1 = '4 fl. Ounces'
		3 = '12 fl. ounces'
		4 = '16 fl. ounces or more'
	;

	VALUE choice66_
		1 = 'Regular'
		2 = 'Low/reduced fat'
		3 = 'Nonfat/fat free'
	;

	VALUE fdpor162_
		2 = '2 slices or 3 tablespoons'
		1 = '1 slice or 2 tablespoons'
		3 = '3 slices or 4 tablespoons'
		4 = '4 slices or 5 tablespoons or more'
	;

	VALUE fdpor166_
		2 = '1/2 cup'
		1 = '1/4 cup'
		3 = '3/4 cup'
		4 = '1 cup or more'
	;

	VALUE choice67_
		1 = 'Regular'
		2 = 'Low/reduced fat'
		3 = 'Nonfat/fat free'
		4 = 'Light/no sugar added'
	;

	VALUE fdpor167_
		2 = '1 cup'
		1 = '1/2 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor168_
		2 = '2 eggs'
		1 = '1 egg'
		3 = '3 eggs'
		4 = '4 eggs or more'
	;

	VALUE fdpor171_
		2 = '1/2 cup'
		1 = '1/4 cup'
		3 = '3/4 cup'
		4 = '1 cup or more'
	;

	VALUE fdfrq173_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		7 = '5-6x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq174_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		0 = 'Never'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq175_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq176_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq177_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		9 = '2+x per day'
		8 = '1x per day'
	;

	VALUE fdfrq178_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq179_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq180_
		3 = '2-3x per month'
		1 = '< 1x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		0 = 'Never'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq181_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq182_
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq183_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq184_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq185_
		1 = '< 1x per month'
		3 = '2-3x per month'
		6 = '3-4x per week'
		4 = '1x per week'
		5 = '2x per week'
		0 = 'Never'
		2 = '1x per month'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq186_
		1 = '< 1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq187_
		1 = '< 1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		2 = '1x per month'
		5 = '2x per week'
		0 = 'Never'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE choice68_
		1 = 'Regular'
		2 = 'Light/low fat'
		4 = 'Sugar free/no sugar added'
		3 = 'Fat free'
	;

	VALUE fdpor174_
		2 = '1 cup'
		1 = '1/2 cup'
		3 = '1 1/2 cups'
		4 = '2 cups or more'
	;

	VALUE fdpor179_
		1 = '1 doughnut'
		2 = '2 doughnuts'
		3 = '3 doughnuts'
		4 = '4 doughnuts'
	;

	VALUE choice69_
		1 = 'Regular'
		2 = 'Light/low fat'
		4 = 'Sugar free/no sugar added'
		3 = 'Fat free'
	;

	VALUE fdpor181_
		1 = 'Small muffin or 1 piece'
		2 = 'Medium muffin or 2 pieces'
		3 = 'Large muffin or 3 pieces'
		4 = '2 medium muffins or 4 pieces or more'
	;

	VALUE fdpor180_
		2 = '2 medium cookies'
		1 = '1 medium cookie'
		3 = '3 medium cookies'
		4 = '4 medium or 1 large cookie or more'
	;

	VALUE fdpor182_
		2 = '1 regular piece or 1 medium roll'
		1 = '1/2 piece or 1 small roll'
		3 = '1 large piece or 1 large roll'
		4 = '2 regular pieces or 2+ rolls'
	;

	VALUE fdpor185_
		1 = '1/2 regular bar or package or 1 snack size'
		2 = '1 regular bar or package'
		3 = '1 1/2 regular bars or packages or 1 king size'
		4 = '2 bars or packages or more'
	;

	VALUE fdpor187_
		2 = '1 tablespoon'
		1 = '1 teaspoon'
		3 = '2 tablespoons'
		4 = '3 tablespoons or more'
	;

	VALUE fdfrq188_
		1 = '< 1x per month'
		3 = '2-3x per month'
		2 = '1x per month'
		0 = 'Never'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq189_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq190_
		1 = '< 1x per month'
		3 = '2-3x per month'
		0 = 'Never'
		2 = '1x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq191_
		1 = '< 1x per month'
		2 = '1x per month'
		0 = 'Never'
		3 = '2-3x per month'
		4 = '1x per week'
		5 = '2x per week'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq192_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq193_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1x per month'
		3 = '2-3x per month'
		4 = '1x per week'
		6 = '3-4x per week'
		5 = '2x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdfrq194_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq195_
		6 = '3-4x per week'
		8 = '1x per day'
		3 = '2-3x per month'
		5 = '2x per week'
		7 = '5-6x per week'
		4 = '1x per week'
		2 = '1x per month'
		1 = '< 1x per month'
		9 = '2+x per day'
		0 = 'Never'
	;

	VALUE fdfrq196_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1x per month'
		3 = '2-3x per month'
		5 = '2x per week'
		4 = '1x per week'
		6 = '3-4x per week'
		8 = '1x per day'
		7 = '5-6x per week'
		9 = '2+x per day'
	;

	VALUE fdfrq197_
		3 = '2-3x per month'
		1 = '< 1x per month'
		0 = 'Never'
		5 = '2x per week'
		4 = '1x per week'
		2 = '1x per month'
		6 = '3-4x per week'
		7 = '5-6x per week'
		8 = '1x per day'
		9 = '2+x per day'
	;

	VALUE fdpor188_
		1 = '1 ounce'
		2 = '2 ounces'
		3 = '3 ounces'
		4 = '4 ounces or more'
	;

	VALUE choice70_
		2 = 'Regular (with butter or oil)'
		1 = 'Lowfat'
		3 = 'Movie theater style'
	;

	VALUE fdpor191_
		2 = '2 1/2 cups (1 snack-size bag)'
		1 = '1 cup'
		3 = '5 cups'
		4 = '7 1/2 cups (1 microwave bag) or more'
	;

	VALUE fdpor189_
		2 = '6 crackers'
		1 = '3 crackers'
		3 = '9 crackers'
		4 = '12 crackers or more'
	;

	VALUE choice71___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice71___2_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice71___3_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice71___4_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice71___5_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice71___6_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice71___7_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE fdpor194_
		2 = '2 tablespoons'
		3 = '3 tablespoons'
		4 = '4 tablespoons or more'
		1 = '1 tablespoon'
	;

	VALUE fdpor197_
		1 = '2 tablespoons'
		2 = '4 tablespoons'
		3 = '6 tablespoons'
		4 = '8 tablespoons or more'
	;

	VALUE choice78_
		1 = 'Regular'
		2 = 'Baked/lowfat'
		3 = 'Fat free'
		4 = 'Low carb'
	;

	VALUE bvfrq1_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1-3x per month'
		6 = '1x per day'
		4 = '2-4x per week'
		3 = '1x per week'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq2_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		7 = '2-3x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq3_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		6 = '1x per day'
		3 = '1x per week'
		4 = '2-4x per week'
		7 = '2-3x per day'
		5 = '5-6x per week'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq4_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq5_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		9 = '6+x per day'
		8 = '4-5x per day'
		7 = '2-3x per day'
	;

	VALUE bvfrq6_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq7_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq8_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq9_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq10_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq11_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq12_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq13_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		6 = '1x per day'
		3 = '1x per week'
		5 = '5-6x per week'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq14_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		7 = '2-3x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq15_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq16_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq17_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		5 = '5-6x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq18_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		6 = '1x per day'
		3 = '1x per week'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq19_
		8 = '4-5x per day'
		7 = '2-3x per day'
		9 = '6+x per day'
		6 = '1x per day'
		0 = 'Never'
		5 = '5-6x per week'
		4 = '2-4x per week'
		2 = '1-3x per month'
		3 = '1x per week'
		1 = '< 1x per month'
	;

	VALUE choice79_
		1 = 'regular'
		2 = 'fortified with calcium and/or vitamin D'
		3 = 'fortified with other vitamins/minerals'
	;

	VALUE bvpor1_
		1 = '4 fl. Ounces'
		2 = '8 fl. ounces'
		3 = '12 fl. ounces'
		4 = '16 fl. ounces or more'
	;

	VALUE choice80_
		1 = 'cola'
		4 = 'other caffeine-free non-cola (e.g., 7-Up, orange, ginger ale)'
		2 = 'caffeine-free cola'
		3 = 'other caffeinated non-cola (e.g. Mountain Dew)'
	;

	VALUE bvpor10_
		1 = '8 fl. ounces'
		2 = '12 fl. ounces'
		3 = '16 fl. ounces'
		4 = '24 fl. ounces or more'
	;

	VALUE choice81_
		2 = 'sometimes'
		3 = 'always'
		1 = 'never'
	;

	VALUE choice82_
		2 = 'High protein type (e.g. Atkins)'
		3 = 'Standard, balanced nutrition type (e.g. Carnation Instant Breakfast, Ensure, Snapple-a-Day)'
		1 = 'Weight loss type (e.g. Slim-Fast)'
	;

	VALUE bvpor18_
		2 = '1 can or 1 scoop powder'
		1 = '1/2 can or 1/2 scoop powder'
		4 = '2 cans or 2 scoops powder'
		3 = '1 1/2 cans or 1 1/2 scoops powder'
	;

	VALUE choice83_
		1 = 'tap'
		2 = 'bottled, purified (e.g., Aquafina, Dasani)'
		3 = 'bottled, spring (e.g., Poland Spring, Evian)'
		4 = 'bottled, carbonated (e.g., soda water)'
		5 = 'bottled, mineral (e.g., Perrier)'
	;

	VALUE bvpor19_
		2 = '8 fl. ounces'
		3 = '12 fl. ounces'
		1 = '4 fl. Ounces'
		4 = '16 fl. ounces or more'
	;

	VALUE bvfrq20_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq21_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		6 = '1x per day'
		4 = '2-4x per week'
		7 = '2-3x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq22_
		0 = 'Never'
		1 = '< 1x per month'
		4 = '2-4x per week'
		2 = '1-3x per month'
		3 = '1x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq23_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		5 = '5-6x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq24_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		5 = '5-6x per week'
		7 = '2-3x per day'
		6 = '1x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq25_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE choice84_
		1 = 'regular'
		2 = 'light'
	;

	VALUE bvpor20_
		1 = '1 can or bottle'
		2 = '2 cans or bottles'
		3 = '3 cans or bottles'
		4 = '4 cans or bottles or more'
	;

	VALUE bvpor22_
		1 = '1 glass'
		2 = '2 glasses'
		3 = '3 glasses'
		4 = '4 glasses or more'
	;

	VALUE bvpor24_
		1 = '1 drink'
		2 = '2 drinks'
		3 = '3 drinks'
		4 = '4 drinks or more'
	;

	VALUE bvfrq26_
		1 = '< 1x per month'
		0 = 'Never'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		5 = '5-6x per week'
		7 = '2-3x per day'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq27_
		0 = 'Never'
		6 = '1x per day'
		7 = '2-3x per day'
		1 = '< 1x per month'
		4 = '2-4x per week'
		5 = '5-6x per week'
		2 = '1-3x per month'
		8 = '4-5x per day'
		3 = '1x per week'
		9 = '6+x per day'
	;

	VALUE bvfrq28_
		0 = 'Never'
		1 = '< 1x per month'
		6 = '1x per day'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		7 = '2-3x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq29_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		3 = '1x per week'
		4 = '2-4x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq30_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		6 = '1x per day'
		3 = '1x per week'
		5 = '5-6x per week'
		7 = '2-3x per day'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvfrq31_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		5 = '5-6x per week'
		9 = '6+x per day'
		8 = '4-5x per day'
	;

	VALUE bvfrq32_
		0 = 'Never'
		1 = '< 1x per month'
		2 = '1-3x per month'
		4 = '2-4x per week'
		3 = '1x per week'
		6 = '1x per day'
		7 = '2-3x per day'
		5 = '5-6x per week'
		8 = '4-5x per day'
		9 = '6+x per day'
	;

	VALUE bvpor26_
		1 = 'Small (6 fl. ounces or 3/4 cup)'
		2 = 'Medium (12 fl. ounces or 1 1/2 cups)'
		3 = 'Large (18 fl. ounces or 2 1/4 cups)'
		4 = 'Extra Large (24 fl. ounces or 3 cups) or more'
	;

	VALUE choice85___1_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE choice85___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE choice85___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE bvpor27_
		1 = 'Sm. (8 fl. ounces or 1 cup)'
		2 = 'Med. (12 fl. ounces or 1 1/2 cups)'
		3 = 'Lg. (16 fl. ounces or 2 cups)'
		4 = 'Extra lg. (24 fl. ounces or 3 cups) or more'
	;

	VALUE c88_
		1 = '1 teaspoon in coffee'
		2 = '2 teaspoon in coffee'
		5 = 'artificial sweetener in coffee'
		3 = '3 teaspoon in coffee'
		4 = '4 teaspoon in coffee'
		0 = 'no sugar in coffee'
	;

	VALUE c88_2_
		1 = '1 teaspoon in tea'
		2 = '2 teaspoon in tea'
		5 = 'artificial sweetener in tea'
		3 = '3 teaspoon in tea'
		4 = '4 teaspoon in tea'
		0 = 'no sugar in tea'
	;

	VALUE c93_
		2 = 'regular (some milk/cream) in coffee'
		3 = 'light (extra milk/cream) in coffee'
		1 = 'dark (very little milk/cream) in coffee'
		4 = 'half milk/cream, in coffee'
		5 = 'more milk/cream, in coffee'
	;

	VALUE c93_2_
		2 = 'regular (some milk/cream) in tea'
		3 = 'light (extra milk/cream) in tea'
		1 = 'dark (very little milk/cream) in tea'
		4 = 'half milk/cream, in tea'
		5 = 'more milk/cream, in tea'
	;

	VALUE choice98_
		1 = 'milk'
		2 = 'half & half cream'
		4 = 'cream substitute, liquid (e.g., Coffee Rich, Coffee-mate, International Delight)'
		3 = 'light or coffee cream'
		5 = 'cream substitute, powdered (e.g., Coffee-mate, Cremora)'
	;

	VALUE choice99_
		1 = 'regular'
		2 = 'reduced fat or light'
		3 = 'fat free'
	;

	VALUE summary1_
		2 = 'Sometimes'
		1 = 'Never'
		3 = 'Often/always'
	;

	VALUE summary2___1_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___2_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___3_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___4_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___5_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___6_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___7_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___8_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___9_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___10_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary2___11_
		1 = 'Checked'
		0 = 'Unchecked'
	;

	VALUE summary2___12_
		0 = 'Unchecked'
		1 = 'Checked'
	;

	VALUE summary14_
		5 = '1x per day'
		6 = '2x per day'
		4 = '5-6x per week'
		3 = '3-4x per week'
		7 = '3x per day'
		2 = '1-2x per week'
		8 = '4+x per day'
		0 = 'Never'
		1 = '< 1x per week'
	;

	VALUE summary15_
		5 = '1x per day'
		6 = '2x per day'
		3 = '3-4x per week'
		4 = '5-6x per week'
		2 = '1-2x per week'
		7 = '3x per day'
		1 = '< 1x per week'
		0 = 'Never'
		8 = '4+x per day'
	;

	VALUE summary16_
		1 = '< 1x per week'
		2 = '1-2x per week'
		3 = '3-4x per week'
		0 = 'Never'
		4 = '5-6x per week'
		5 = '1x per day'
		6 = '2x per day'
		7 = '3x per day'
		8 = '4+x per day'
	;

	VALUE summary17_
		3 = 'weight reduction'
		2 = 'vegetarian/vegan'
		4 = 'physician-prescribed diet'
		1 = 'kosher'
	;

	VALUE summary18_
		1 = 'Home'
		2 = 'Work'
		4 = 'Fast food chain'
		3 = 'Cafeteria'
		5 = 'Restaurant'
	;

	VALUE summary19_
		1 = 'Home'
		2 = 'Work'
		5 = 'Restaurant'
		3 = 'Cafeteria'
		4 = 'Fast food chain'
	;

	VALUE summary20_
		1 = 'Home'
		5 = 'Restaurant'
		3 = 'Cafeteria'
		2 = 'Work'
		4 = 'Fast food chain'
	;

	VALUE supp_yn_
		1 = 'Yes'
		0 = 'No (if so, stop here)'
	;

	VALUE supfrq1_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur1_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq2_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur2_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq3_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur3_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq4_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur4_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq5_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur5_
		4 = '10+ years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
		3 = '5-9 years'
	;

	VALUE supfrq6_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur6_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq7_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur7_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq8_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur8_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq9_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur9_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq10_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur10_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq11_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur11_
		2 = '1-4 years'
		4 = '10+ years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq12_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur12_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq13_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur13_
		4 = '10+ years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
		3 = '5-9 years'
	;

	VALUE supfrq14_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur14_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq15_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur15_
		4 = '10+ years'
		2 = '1-4 years'
		3 = '5-9 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq16_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur16_
		4 = '10+ years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
		3 = '5-9 years'
	;

	VALUE supfrq17_
		2 = 'Daily'
		1 = 'Occasionally'
	;

	VALUE supdur17_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq18_
		1 = 'Occasionally'
		2 = 'Daily'
	;

	VALUE supdur18_
		4 = '10+ years'
		3 = '5-9 years'
		2 = '1-4 years'
		1 = 'Less than 1 year'
	;

	VALUE supfrq19_
		1 = 'Occasionally'
		2 = 'Daily'
	;

	VALUE supdur19_
		2 = '1-4 years'
		4 = '10+ years'
		1 = 'Less than 1 year'
		3 = '5-9 years'
	;

	VALUE tufts_food_frequency_v_1_
		2 = 'Complete'
		0 = 'Incomplete'
		1 = 'Unverified'
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

	INFORMAT redcap_survey_identifier $1.;
	FORMAT redcap_survey_identifier $1.;

	INFORMAT tufts_food_frequency_v_0 $19.;
	FORMAT tufts_food_frequency_v_0 $19.;

	INFORMAT sex BEST32.;
	FORMAT sex BEST12.;

	INFORMAT age_cat BEST32.;
	FORMAT age_cat BEST12.;

	INFORMAT protocol BEST32.;
	FORMAT protocol BEST12.;

	INFORMAT intvid BEST32.;
	FORMAT intvid BEST12.;

	INFORMAT frt_sadj___1 BEST32.;
	FORMAT frt_sadj___1 BEST12.;

	INFORMAT frt_sadj___2 BEST32.;
	FORMAT frt_sadj___2 BEST12.;

	INFORMAT frt_sadj___3 BEST32.;
	FORMAT frt_sadj___3 BEST12.;

	INFORMAT frt_sadj___4 BEST32.;
	FORMAT frt_sadj___4 BEST12.;

	INFORMAT frt_sadj___5 BEST32.;
	FORMAT frt_sadj___5 BEST12.;

	INFORMAT frt_sadj___6 BEST32.;
	FORMAT frt_sadj___6 BEST12.;

	INFORMAT frt_sadj___7 BEST32.;
	FORMAT frt_sadj___7 BEST12.;

	INFORMAT frt_sadj___8 BEST32.;
	FORMAT frt_sadj___8 BEST12.;

	INFORMAT fdfrq1 BEST32.;
	FORMAT fdfrq1 BEST12.;

	INFORMAT fdfrq2 BEST32.;
	FORMAT fdfrq2 BEST12.;

	INFORMAT fdfrq3 BEST32.;
	FORMAT fdfrq3 BEST12.;

	INFORMAT fdfrq4 BEST32.;
	FORMAT fdfrq4 BEST12.;

	INFORMAT fdfrq5 BEST32.;
	FORMAT fdfrq5 BEST12.;

	INFORMAT fdfrq6 BEST32.;
	FORMAT fdfrq6 BEST12.;

	INFORMAT fdfrq7 BEST32.;
	FORMAT fdfrq7 BEST12.;

	INFORMAT fdfrq8 BEST32.;
	FORMAT fdfrq8 BEST12.;

	INFORMAT fdfrq9 BEST32.;
	FORMAT fdfrq9 BEST12.;

	INFORMAT fdfrq10 BEST32.;
	FORMAT fdfrq10 BEST12.;

	INFORMAT fdfrq11 BEST32.;
	FORMAT fdfrq11 BEST12.;

	INFORMAT fdfrq12 BEST32.;
	FORMAT fdfrq12 BEST12.;

	INFORMAT fdfrq13 BEST32.;
	FORMAT fdfrq13 BEST12.;

	INFORMAT fdfrq14 BEST32.;
	FORMAT fdfrq14 BEST12.;

	INFORMAT fdfrq15 BEST32.;
	FORMAT fdfrq15 BEST12.;

	INFORMAT fdfrq16 BEST32.;
	FORMAT fdfrq16 BEST12.;

	INFORMAT fdfrq17 BEST32.;
	FORMAT fdfrq17 BEST12.;

	INFORMAT fdfrq18 BEST32.;
	FORMAT fdfrq18 BEST12.;

	INFORMAT fdfrq19 BEST32.;
	FORMAT fdfrq19 BEST12.;

	INFORMAT fdpor12 BEST32.;
	FORMAT fdpor12 BEST12.;

	INFORMAT fdpor13 BEST32.;
	FORMAT fdpor13 BEST12.;

	INFORMAT fdpor15 BEST32.;
	FORMAT fdpor15 BEST12.;

	INFORMAT fdpor16 BEST32.;
	FORMAT fdpor16 BEST12.;

	INFORMAT fdpor19 BEST32.;
	FORMAT fdpor19 BEST12.;

	INFORMAT fdfrq20 BEST32.;
	FORMAT fdfrq20 BEST12.;

	INFORMAT fdfrq22 BEST32.;
	FORMAT fdfrq22 BEST12.;

	INFORMAT fdfrq23 BEST32.;
	FORMAT fdfrq23 BEST12.;

	INFORMAT fdfrq24 BEST32.;
	FORMAT fdfrq24 BEST12.;

	INFORMAT fdfrq28 BEST32.;
	FORMAT fdfrq28 BEST12.;

	INFORMAT fdfrq29 BEST32.;
	FORMAT fdfrq29 BEST12.;

	INFORMAT fdfrq30 BEST32.;
	FORMAT fdfrq30 BEST12.;

	INFORMAT fdpor20 BEST32.;
	FORMAT fdpor20 BEST12.;

	INFORMAT fdpor21 BEST32.;
	FORMAT fdpor21 BEST12.;

	INFORMAT choice1 BEST32.;
	FORMAT choice1 BEST12.;

	INFORMAT fdpor22 BEST32.;
	FORMAT fdpor22 BEST12.;

	INFORMAT fdpor25 BEST32.;
	FORMAT fdpor25 BEST12.;

	INFORMAT fdpor29 BEST32.;
	FORMAT fdpor29 BEST12.;

	INFORMAT choice2 BEST32.;
	FORMAT choice2 BEST12.;

	INFORMAT fdpor30 BEST32.;
	FORMAT fdpor30 BEST12.;

	INFORMAT choice3 BEST32.;
	FORMAT choice3 BEST12.;

	INFORMAT open_end1 BEST32.;
	FORMAT open_end1 BEST12.;

	INFORMAT open_end2 BEST32.;
	FORMAT open_end2 BEST12.;

	INFORMAT fdfrq31 BEST32.;
	FORMAT fdfrq31 BEST12.;

	INFORMAT fdfrq32 BEST32.;
	FORMAT fdfrq32 BEST12.;

	INFORMAT fdfrq33 BEST32.;
	FORMAT fdfrq33 BEST12.;

	INFORMAT fdfrq34 BEST32.;
	FORMAT fdfrq34 BEST12.;

	INFORMAT fdfrq35 BEST32.;
	FORMAT fdfrq35 BEST12.;

	INFORMAT fdfrq36 BEST32.;
	FORMAT fdfrq36 BEST12.;

	INFORMAT fdfrq37 BEST32.;
	FORMAT fdfrq37 BEST12.;

	INFORMAT fdfrq38 BEST32.;
	FORMAT fdfrq38 BEST12.;

	INFORMAT fdfrq39 BEST32.;
	FORMAT fdfrq39 BEST12.;

	INFORMAT choice4 BEST32.;
	FORMAT choice4 BEST12.;

	INFORMAT fdpor31 BEST32.;
	FORMAT fdpor31 BEST12.;

	INFORMAT fdpor35 BEST32.;
	FORMAT fdpor35 BEST12.;

	INFORMAT fdpor36 BEST32.;
	FORMAT fdpor36 BEST12.;

	INFORMAT choice5 BEST32.;
	FORMAT choice5 BEST12.;

	INFORMAT fdpor37 BEST32.;
	FORMAT fdpor37 BEST12.;

	INFORMAT fdpor39 BEST32.;
	FORMAT fdpor39 BEST12.;

	INFORMAT fdpor40 BEST32.;
	FORMAT fdpor40 BEST12.;

	INFORMAT fdpor41 BEST32.;
	FORMAT fdpor41 BEST12.;

	INFORMAT fdfrq42 BEST32.;
	FORMAT fdfrq42 BEST12.;

	INFORMAT fdfrq43 BEST32.;
	FORMAT fdfrq43 BEST12.;

	INFORMAT fdfrq44 BEST32.;
	FORMAT fdfrq44 BEST12.;

	INFORMAT fdfrq45 BEST32.;
	FORMAT fdfrq45 BEST12.;

	INFORMAT fdfrq46 BEST32.;
	FORMAT fdfrq46 BEST12.;

	INFORMAT fdfrq47 BEST32.;
	FORMAT fdfrq47 BEST12.;

	INFORMAT fdfrq48 BEST32.;
	FORMAT fdfrq48 BEST12.;

	INFORMAT fdfrq49 BEST32.;
	FORMAT fdfrq49 BEST12.;

	INFORMAT fdfrq50 BEST32.;
	FORMAT fdfrq50 BEST12.;

	INFORMAT fdfrq51 BEST32.;
	FORMAT fdfrq51 BEST12.;

	INFORMAT fdfrq52 BEST32.;
	FORMAT fdfrq52 BEST12.;

	INFORMAT fdfrq53 BEST32.;
	FORMAT fdfrq53 BEST12.;

	INFORMAT fdfrq54 BEST32.;
	FORMAT fdfrq54 BEST12.;

	INFORMAT fdfrq55 BEST32.;
	FORMAT fdfrq55 BEST12.;

	INFORMAT fdfrq56 BEST32.;
	FORMAT fdfrq56 BEST12.;

	INFORMAT fdfrq57 BEST32.;
	FORMAT fdfrq57 BEST12.;

	INFORMAT fdfrq58 BEST32.;
	FORMAT fdfrq58 BEST12.;

	INFORMAT fdfrq59 BEST32.;
	FORMAT fdfrq59 BEST12.;

	INFORMAT fdfrq60 BEST32.;
	FORMAT fdfrq60 BEST12.;

	INFORMAT fdfrq61 BEST32.;
	FORMAT fdfrq61 BEST12.;

	INFORMAT fdfrq62 BEST32.;
	FORMAT fdfrq62 BEST12.;

	INFORMAT fdfrq63 BEST32.;
	FORMAT fdfrq63 BEST12.;

	INFORMAT fdfrq64 BEST32.;
	FORMAT fdfrq64 BEST12.;

	INFORMAT fdfrq65 BEST32.;
	FORMAT fdfrq65 BEST12.;

	INFORMAT fdfrq66 BEST32.;
	FORMAT fdfrq66 BEST12.;

	INFORMAT fdfrq67 BEST32.;
	FORMAT fdfrq67 BEST12.;

	INFORMAT choice6___1 BEST32.;
	FORMAT choice6___1 BEST12.;

	INFORMAT choice6___2 BEST32.;
	FORMAT choice6___2 BEST12.;

	INFORMAT choice6___3 BEST32.;
	FORMAT choice6___3 BEST12.;

	INFORMAT choice6___4 BEST32.;
	FORMAT choice6___4 BEST12.;

	INFORMAT fdpor42 BEST32.;
	FORMAT fdpor42 BEST12.;

	INFORMAT fdpor43 BEST32.;
	FORMAT fdpor43 BEST12.;

	INFORMAT fdpor45 BEST32.;
	FORMAT fdpor45 BEST12.;

	INFORMAT choice10___1 BEST32.;
	FORMAT choice10___1 BEST12.;

	INFORMAT choice10___2 BEST32.;
	FORMAT choice10___2 BEST12.;

	INFORMAT choice10___3 BEST32.;
	FORMAT choice10___3 BEST12.;

	INFORMAT fdpor62 BEST32.;
	FORMAT fdpor62 BEST12.;

	INFORMAT fdpor46 BEST32.;
	FORMAT fdpor46 BEST12.;

	INFORMAT choice13___1 BEST32.;
	FORMAT choice13___1 BEST12.;

	INFORMAT choice13___2 BEST32.;
	FORMAT choice13___2 BEST12.;

	INFORMAT choice13___3 BEST32.;
	FORMAT choice13___3 BEST12.;

	INFORMAT choice13___4 BEST32.;
	FORMAT choice13___4 BEST12.;

	INFORMAT choice13___5 BEST32.;
	FORMAT choice13___5 BEST12.;

	INFORMAT choice13___6 BEST32.;
	FORMAT choice13___6 BEST12.;

	INFORMAT choice13___7 BEST32.;
	FORMAT choice13___7 BEST12.;

	INFORMAT choice13___8 BEST32.;
	FORMAT choice13___8 BEST12.;

	INFORMAT choice21 BEST32.;
	FORMAT choice21 BEST12.;

	INFORMAT fdfrq68 BEST32.;
	FORMAT fdfrq68 BEST12.;

	INFORMAT fdfrq69 BEST32.;
	FORMAT fdfrq69 BEST12.;

	INFORMAT fdfrq70 BEST32.;
	FORMAT fdfrq70 BEST12.;

	INFORMAT fdfrq71 BEST32.;
	FORMAT fdfrq71 BEST12.;

	INFORMAT fdfrq72 BEST32.;
	FORMAT fdfrq72 BEST12.;

	INFORMAT fdfrq73 BEST32.;
	FORMAT fdfrq73 BEST12.;

	INFORMAT fdfrq74 BEST32.;
	FORMAT fdfrq74 BEST12.;

	INFORMAT fdfrq75 BEST32.;
	FORMAT fdfrq75 BEST12.;

	INFORMAT fdfrq76 BEST32.;
	FORMAT fdfrq76 BEST12.;

	INFORMAT fdfrq77 BEST32.;
	FORMAT fdfrq77 BEST12.;

	INFORMAT fdfrq78 BEST32.;
	FORMAT fdfrq78 BEST12.;

	INFORMAT fdfrq79 BEST32.;
	FORMAT fdfrq79 BEST12.;

	INFORMAT fdfrq80 BEST32.;
	FORMAT fdfrq80 BEST12.;

	INFORMAT fdfrq81 BEST32.;
	FORMAT fdfrq81 BEST12.;

	INFORMAT fdpor68 BEST32.;
	FORMAT fdpor68 BEST12.;

	INFORMAT choice22___1 BEST32.;
	FORMAT choice22___1 BEST12.;

	INFORMAT choice22___2 BEST32.;
	FORMAT choice22___2 BEST12.;

	INFORMAT choice22___3 BEST32.;
	FORMAT choice22___3 BEST12.;

	INFORMAT choice22___4 BEST32.;
	FORMAT choice22___4 BEST12.;

	INFORMAT fdpor69 BEST32.;
	FORMAT fdpor69 BEST12.;

	INFORMAT fdpor71 BEST32.;
	FORMAT fdpor71 BEST12.;

	INFORMAT fdpor74 BEST32.;
	FORMAT fdpor74 BEST12.;

	INFORMAT fdpor76 BEST32.;
	FORMAT fdpor76 BEST12.;

	INFORMAT choice23___1 BEST32.;
	FORMAT choice23___1 BEST12.;

	INFORMAT choice23___2 BEST32.;
	FORMAT choice23___2 BEST12.;

	INFORMAT choice23___3 BEST32.;
	FORMAT choice23___3 BEST12.;

	INFORMAT choice23___4 BEST32.;
	FORMAT choice23___4 BEST12.;

	INFORMAT fdpor79 BEST32.;
	FORMAT fdpor79 BEST12.;

	INFORMAT fdpor80 BEST32.;
	FORMAT fdpor80 BEST12.;

	INFORMAT choice27___1 BEST32.;
	FORMAT choice27___1 BEST12.;

	INFORMAT choice27___2 BEST32.;
	FORMAT choice27___2 BEST12.;

	INFORMAT choice27___3 BEST32.;
	FORMAT choice27___3 BEST12.;

	INFORMAT choice27___4 BEST32.;
	FORMAT choice27___4 BEST12.;

	INFORMAT fdfrq82 BEST32.;
	FORMAT fdfrq82 BEST12.;

	INFORMAT fdfrq83 BEST32.;
	FORMAT fdfrq83 BEST12.;

	INFORMAT fdfrq84 BEST32.;
	FORMAT fdfrq84 BEST12.;

	INFORMAT fdfrq85 BEST32.;
	FORMAT fdfrq85 BEST12.;

	INFORMAT fdfrq86 BEST32.;
	FORMAT fdfrq86 BEST12.;

	INFORMAT fdfrq87 BEST32.;
	FORMAT fdfrq87 BEST12.;

	INFORMAT fdfrq88 BEST32.;
	FORMAT fdfrq88 BEST12.;

	INFORMAT fdfrq89 BEST32.;
	FORMAT fdfrq89 BEST12.;

	INFORMAT fdfrq90 BEST32.;
	FORMAT fdfrq90 BEST12.;

	INFORMAT fdfrq91 BEST32.;
	FORMAT fdfrq91 BEST12.;

	INFORMAT fdfrq92 BEST32.;
	FORMAT fdfrq92 BEST12.;

	INFORMAT fdfrq93 BEST32.;
	FORMAT fdfrq93 BEST12.;

	INFORMAT fdfrq94 BEST32.;
	FORMAT fdfrq94 BEST12.;

	INFORMAT fdfrq95 BEST32.;
	FORMAT fdfrq95 BEST12.;

	INFORMAT fdfrq96 BEST32.;
	FORMAT fdfrq96 BEST12.;

	INFORMAT fdpor82 BEST32.;
	FORMAT fdpor82 BEST12.;

	INFORMAT fdpor86 BEST32.;
	FORMAT fdpor86 BEST12.;

	INFORMAT fdpor90 BEST32.;
	FORMAT fdpor90 BEST12.;

	INFORMAT choice31___1 BEST32.;
	FORMAT choice31___1 BEST12.;

	INFORMAT choice31___2 BEST32.;
	FORMAT choice31___2 BEST12.;

	INFORMAT choice31___3 BEST32.;
	FORMAT choice31___3 BEST12.;

	INFORMAT choice31___4 BEST32.;
	FORMAT choice31___4 BEST12.;

	INFORMAT choice31___5 BEST32.;
	FORMAT choice31___5 BEST12.;

	INFORMAT choice31___6 BEST32.;
	FORMAT choice31___6 BEST12.;

	INFORMAT choice31___7 BEST32.;
	FORMAT choice31___7 BEST12.;

	INFORMAT choice31___8 BEST32.;
	FORMAT choice31___8 BEST12.;

	INFORMAT fdpor93 BEST32.;
	FORMAT fdpor93 BEST12.;

	INFORMAT choice39___1 BEST32.;
	FORMAT choice39___1 BEST12.;

	INFORMAT choice39___2 BEST32.;
	FORMAT choice39___2 BEST12.;

	INFORMAT choice39___3 BEST32.;
	FORMAT choice39___3 BEST12.;

	INFORMAT choice39___4 BEST32.;
	FORMAT choice39___4 BEST12.;

	INFORMAT choice39___5 BEST32.;
	FORMAT choice39___5 BEST12.;

	INFORMAT fdpor94 BEST32.;
	FORMAT fdpor94 BEST12.;

	INFORMAT choice44___1 BEST32.;
	FORMAT choice44___1 BEST12.;

	INFORMAT choice44___2 BEST32.;
	FORMAT choice44___2 BEST12.;

	INFORMAT choice44___3 BEST32.;
	FORMAT choice44___3 BEST12.;

	INFORMAT choice44___4 BEST32.;
	FORMAT choice44___4 BEST12.;

	INFORMAT fdpor95 BEST32.;
	FORMAT fdpor95 BEST12.;

	INFORMAT fdpor96 BEST32.;
	FORMAT fdpor96 BEST12.;

	INFORMAT fdfrq97 BEST32.;
	FORMAT fdfrq97 BEST12.;

	INFORMAT fdfrq98 BEST32.;
	FORMAT fdfrq98 BEST12.;

	INFORMAT fdfrq99 BEST32.;
	FORMAT fdfrq99 BEST12.;

	INFORMAT fdfrq100 BEST32.;
	FORMAT fdfrq100 BEST12.;

	INFORMAT fdfrq101 BEST32.;
	FORMAT fdfrq101 BEST12.;

	INFORMAT fdfrq102 BEST32.;
	FORMAT fdfrq102 BEST12.;

	INFORMAT fdfrq103 BEST32.;
	FORMAT fdfrq103 BEST12.;

	INFORMAT fdfrq104 BEST32.;
	FORMAT fdfrq104 BEST12.;

	INFORMAT fdfrq105 BEST32.;
	FORMAT fdfrq105 BEST12.;

	INFORMAT fdfrq106 BEST32.;
	FORMAT fdfrq106 BEST12.;

	INFORMAT fdfrq107 BEST32.;
	FORMAT fdfrq107 BEST12.;

	INFORMAT fdfrq108 BEST32.;
	FORMAT fdfrq108 BEST12.;

	INFORMAT choice48 BEST32.;
	FORMAT choice48 BEST12.;

	INFORMAT choice49 BEST32.;
	FORMAT choice49 BEST12.;

	INFORMAT fdpor98 BEST32.;
	FORMAT fdpor98 BEST12.;

	INFORMAT choice50___1 BEST32.;
	FORMAT choice50___1 BEST12.;

	INFORMAT choice50___2 BEST32.;
	FORMAT choice50___2 BEST12.;

	INFORMAT fdpor99 BEST32.;
	FORMAT fdpor99 BEST12.;

	INFORMAT fdpor100 BEST32.;
	FORMAT fdpor100 BEST12.;

	INFORMAT fdpor107 BEST32.;
	FORMAT fdpor107 BEST12.;

	INFORMAT fdfrq109 BEST32.;
	FORMAT fdfrq109 BEST12.;

	INFORMAT fdfrq110 BEST32.;
	FORMAT fdfrq110 BEST12.;

	INFORMAT fdfrq111 BEST32.;
	FORMAT fdfrq111 BEST12.;

	INFORMAT fdfrq112 BEST32.;
	FORMAT fdfrq112 BEST12.;

	INFORMAT fdfrq113 BEST32.;
	FORMAT fdfrq113 BEST12.;

	INFORMAT fdfrq114 BEST32.;
	FORMAT fdfrq114 BEST12.;

	INFORMAT fdfrq115 BEST32.;
	FORMAT fdfrq115 BEST12.;

	INFORMAT fdpor110 BEST32.;
	FORMAT fdpor110 BEST12.;

	INFORMAT choice52___1 BEST32.;
	FORMAT choice52___1 BEST12.;

	INFORMAT choice52___2 BEST32.;
	FORMAT choice52___2 BEST12.;

	INFORMAT choice52___3 BEST32.;
	FORMAT choice52___3 BEST12.;

	INFORMAT fdpor111 BEST32.;
	FORMAT fdpor111 BEST12.;

	INFORMAT choice55 BEST32.;
	FORMAT choice55 BEST12.;

	INFORMAT choice56 BEST32.;
	FORMAT choice56 BEST12.;

	INFORMAT fdpor112 BEST32.;
	FORMAT fdpor112 BEST12.;

	INFORMAT fdpor114 BEST32.;
	FORMAT fdpor114 BEST12.;

	INFORMAT fdpor115 BEST32.;
	FORMAT fdpor115 BEST12.;

	INFORMAT fdfrq116 BEST32.;
	FORMAT fdfrq116 BEST12.;

	INFORMAT fdfrq117 BEST32.;
	FORMAT fdfrq117 BEST12.;

	INFORMAT fdfrq118 BEST32.;
	FORMAT fdfrq118 BEST12.;

	INFORMAT fdfrq119 BEST32.;
	FORMAT fdfrq119 BEST12.;

	INFORMAT fdfrq120 BEST32.;
	FORMAT fdfrq120 BEST12.;

	INFORMAT fdfrq121 BEST32.;
	FORMAT fdfrq121 BEST12.;

	INFORMAT fdfrq122 BEST32.;
	FORMAT fdfrq122 BEST12.;

	INFORMAT fdfrq123 BEST32.;
	FORMAT fdfrq123 BEST12.;

	INFORMAT fdfrq124 BEST32.;
	FORMAT fdfrq124 BEST12.;

	INFORMAT fdfrq125 BEST32.;
	FORMAT fdfrq125 BEST12.;

	INFORMAT fdpor117 BEST32.;
	FORMAT fdpor117 BEST12.;

	INFORMAT fdpor119 BEST32.;
	FORMAT fdpor119 BEST12.;

	INFORMAT choice57 BEST32.;
	FORMAT choice57 BEST12.;

	INFORMAT fdpor122 BEST32.;
	FORMAT fdpor122 BEST12.;

	INFORMAT fdpor124 BEST32.;
	FORMAT fdpor124 BEST12.;

	INFORMAT fdfrq126 BEST32.;
	FORMAT fdfrq126 BEST12.;

	INFORMAT fdfrq127 BEST32.;
	FORMAT fdfrq127 BEST12.;

	INFORMAT fdfrq128 BEST32.;
	FORMAT fdfrq128 BEST12.;

	INFORMAT fdfrq129 BEST32.;
	FORMAT fdfrq129 BEST12.;

	INFORMAT fdfrq130 BEST32.;
	FORMAT fdfrq130 BEST12.;

	INFORMAT fdfrq131 BEST32.;
	FORMAT fdfrq131 BEST12.;

	INFORMAT fdfrq132 BEST32.;
	FORMAT fdfrq132 BEST12.;

	INFORMAT fdfrq133 BEST32.;
	FORMAT fdfrq133 BEST12.;

	INFORMAT choice58 BEST32.;
	FORMAT choice58 BEST12.;

	INFORMAT choice59 BEST32.;
	FORMAT choice59 BEST12.;

	INFORMAT fdpor126 BEST32.;
	FORMAT fdpor126 BEST12.;

	INFORMAT choice60 BEST32.;
	FORMAT choice60 BEST12.;

	INFORMAT fdpor130 BEST32.;
	FORMAT fdpor130 BEST12.;

	INFORMAT fdpor132 BEST32.;
	FORMAT fdpor132 BEST12.;

	INFORMAT fdfrq134 BEST32.;
	FORMAT fdfrq134 BEST12.;

	INFORMAT fdfrq135 BEST32.;
	FORMAT fdfrq135 BEST12.;

	INFORMAT fdfrq136 BEST32.;
	FORMAT fdfrq136 BEST12.;

	INFORMAT fdfrq137 BEST32.;
	FORMAT fdfrq137 BEST12.;

	INFORMAT fdfrq138 BEST32.;
	FORMAT fdfrq138 BEST12.;

	INFORMAT fdfrq139 BEST32.;
	FORMAT fdfrq139 BEST12.;

	INFORMAT fdfrq140 BEST32.;
	FORMAT fdfrq140 BEST12.;

	INFORMAT fdfrq141 BEST32.;
	FORMAT fdfrq141 BEST12.;

	INFORMAT fdfrq142 BEST32.;
	FORMAT fdfrq142 BEST12.;

	INFORMAT fdfrq143 BEST32.;
	FORMAT fdfrq143 BEST12.;

	INFORMAT fdfrq144 BEST32.;
	FORMAT fdfrq144 BEST12.;

	INFORMAT fdfrq145 BEST32.;
	FORMAT fdfrq145 BEST12.;

	INFORMAT fdfrq146 BEST32.;
	FORMAT fdfrq146 BEST12.;

	INFORMAT fdfrq147 BEST32.;
	FORMAT fdfrq147 BEST12.;

	INFORMAT fdfrq148 BEST32.;
	FORMAT fdfrq148 BEST12.;

	INFORMAT fdfrq149 BEST32.;
	FORMAT fdfrq149 BEST12.;

	INFORMAT fdfrq150 BEST32.;
	FORMAT fdfrq150 BEST12.;

	INFORMAT fdfrq151 BEST32.;
	FORMAT fdfrq151 BEST12.;

	INFORMAT choice61 BEST32.;
	FORMAT choice61 BEST12.;

	INFORMAT fdpor134 BEST32.;
	FORMAT fdpor134 BEST12.;

	INFORMAT choice62 BEST32.;
	FORMAT choice62 BEST12.;

	INFORMAT choice63 BEST32.;
	FORMAT choice63 BEST12.;

	INFORMAT fdpor135 BEST32.;
	FORMAT fdpor135 BEST12.;

	INFORMAT fdpor136 BEST32.;
	FORMAT fdpor136 BEST12.;

	INFORMAT fdpor144 BEST32.;
	FORMAT fdpor144 BEST12.;

	INFORMAT fdpor149 BEST32.;
	FORMAT fdpor149 BEST12.;

	INFORMAT choice64 BEST32.;
	FORMAT choice64 BEST12.;

	INFORMAT fdfrq152 BEST32.;
	FORMAT fdfrq152 BEST12.;

	INFORMAT fdfrq153 BEST32.;
	FORMAT fdfrq153 BEST12.;

	INFORMAT fdfrq154 BEST32.;
	FORMAT fdfrq154 BEST12.;

	INFORMAT fdfrq155 BEST32.;
	FORMAT fdfrq155 BEST12.;

	INFORMAT fdfrq156 BEST32.;
	FORMAT fdfrq156 BEST12.;

	INFORMAT fdfrq157 BEST32.;
	FORMAT fdfrq157 BEST12.;

	INFORMAT fdfrq158 BEST32.;
	FORMAT fdfrq158 BEST12.;

	INFORMAT fdfrq159 BEST32.;
	FORMAT fdfrq159 BEST12.;

	INFORMAT fdpor152 BEST32.;
	FORMAT fdpor152 BEST12.;

	INFORMAT fdpor158 BEST32.;
	FORMAT fdpor158 BEST12.;

	INFORMAT fdfrq160 BEST32.;
	FORMAT fdfrq160 BEST12.;

	INFORMAT fdfrq161 BEST32.;
	FORMAT fdfrq161 BEST12.;

	INFORMAT fdfrq162 BEST32.;
	FORMAT fdfrq162 BEST12.;

	INFORMAT fdfrq163 BEST32.;
	FORMAT fdfrq163 BEST12.;

	INFORMAT fdfrq164 BEST32.;
	FORMAT fdfrq164 BEST12.;

	INFORMAT fdfrq165 BEST32.;
	FORMAT fdfrq165 BEST12.;

	INFORMAT fdfrq166 BEST32.;
	FORMAT fdfrq166 BEST12.;

	INFORMAT fdfrq167 BEST32.;
	FORMAT fdfrq167 BEST12.;

	INFORMAT fdfrq168 BEST32.;
	FORMAT fdfrq168 BEST12.;

	INFORMAT fdfrq169 BEST32.;
	FORMAT fdfrq169 BEST12.;

	INFORMAT fdfrq170 BEST32.;
	FORMAT fdfrq170 BEST12.;

	INFORMAT fdfrq171 BEST32.;
	FORMAT fdfrq171 BEST12.;

	INFORMAT fdfrq172 BEST32.;
	FORMAT fdfrq172 BEST12.;

	INFORMAT choice65 BEST32.;
	FORMAT choice65 BEST12.;

	INFORMAT fdpor160 BEST32.;
	FORMAT fdpor160 BEST12.;

	INFORMAT choice66 BEST32.;
	FORMAT choice66 BEST12.;

	INFORMAT fdpor162 BEST32.;
	FORMAT fdpor162 BEST12.;

	INFORMAT fdpor166 BEST32.;
	FORMAT fdpor166 BEST12.;

	INFORMAT choice67 BEST32.;
	FORMAT choice67 BEST12.;

	INFORMAT fdpor167 BEST32.;
	FORMAT fdpor167 BEST12.;

	INFORMAT fdpor168 BEST32.;
	FORMAT fdpor168 BEST12.;

	INFORMAT fdpor171 BEST32.;
	FORMAT fdpor171 BEST12.;

	INFORMAT fdfrq173 BEST32.;
	FORMAT fdfrq173 BEST12.;

	INFORMAT fdfrq174 BEST32.;
	FORMAT fdfrq174 BEST12.;

	INFORMAT fdfrq175 BEST32.;
	FORMAT fdfrq175 BEST12.;

	INFORMAT fdfrq176 BEST32.;
	FORMAT fdfrq176 BEST12.;

	INFORMAT fdfrq177 BEST32.;
	FORMAT fdfrq177 BEST12.;

	INFORMAT fdfrq178 BEST32.;
	FORMAT fdfrq178 BEST12.;

	INFORMAT fdfrq179 BEST32.;
	FORMAT fdfrq179 BEST12.;

	INFORMAT fdfrq180 BEST32.;
	FORMAT fdfrq180 BEST12.;

	INFORMAT fdfrq181 BEST32.;
	FORMAT fdfrq181 BEST12.;

	INFORMAT fdfrq182 BEST32.;
	FORMAT fdfrq182 BEST12.;

	INFORMAT fdfrq183 BEST32.;
	FORMAT fdfrq183 BEST12.;

	INFORMAT fdfrq184 BEST32.;
	FORMAT fdfrq184 BEST12.;

	INFORMAT fdfrq185 BEST32.;
	FORMAT fdfrq185 BEST12.;

	INFORMAT fdfrq186 BEST32.;
	FORMAT fdfrq186 BEST12.;

	INFORMAT fdfrq187 BEST32.;
	FORMAT fdfrq187 BEST12.;

	INFORMAT choice68 BEST32.;
	FORMAT choice68 BEST12.;

	INFORMAT fdpor174 BEST32.;
	FORMAT fdpor174 BEST12.;

	INFORMAT fdpor179 BEST32.;
	FORMAT fdpor179 BEST12.;

	INFORMAT choice69 BEST32.;
	FORMAT choice69 BEST12.;

	INFORMAT fdpor181 BEST32.;
	FORMAT fdpor181 BEST12.;

	INFORMAT fdpor180 BEST32.;
	FORMAT fdpor180 BEST12.;

	INFORMAT fdpor182 BEST32.;
	FORMAT fdpor182 BEST12.;

	INFORMAT fdpor185 BEST32.;
	FORMAT fdpor185 BEST12.;

	INFORMAT fdpor187 BEST32.;
	FORMAT fdpor187 BEST12.;

	INFORMAT fdfrq188 BEST32.;
	FORMAT fdfrq188 BEST12.;

	INFORMAT fdfrq189 BEST32.;
	FORMAT fdfrq189 BEST12.;

	INFORMAT fdfrq190 BEST32.;
	FORMAT fdfrq190 BEST12.;

	INFORMAT fdfrq191 BEST32.;
	FORMAT fdfrq191 BEST12.;

	INFORMAT fdfrq192 BEST32.;
	FORMAT fdfrq192 BEST12.;

	INFORMAT fdfrq193 BEST32.;
	FORMAT fdfrq193 BEST12.;

	INFORMAT fdfrq194 BEST32.;
	FORMAT fdfrq194 BEST12.;

	INFORMAT fdfrq195 BEST32.;
	FORMAT fdfrq195 BEST12.;

	INFORMAT fdfrq196 BEST32.;
	FORMAT fdfrq196 BEST12.;

	INFORMAT fdfrq197 BEST32.;
	FORMAT fdfrq197 BEST12.;

	INFORMAT fdpor188 BEST32.;
	FORMAT fdpor188 BEST12.;

	INFORMAT choice70 BEST32.;
	FORMAT choice70 BEST12.;

	INFORMAT fdpor191 BEST32.;
	FORMAT fdpor191 BEST12.;

	INFORMAT fdpor189 BEST32.;
	FORMAT fdpor189 BEST12.;

	INFORMAT choice71___1 BEST32.;
	FORMAT choice71___1 BEST12.;

	INFORMAT choice71___2 BEST32.;
	FORMAT choice71___2 BEST12.;

	INFORMAT choice71___3 BEST32.;
	FORMAT choice71___3 BEST12.;

	INFORMAT choice71___4 BEST32.;
	FORMAT choice71___4 BEST12.;

	INFORMAT choice71___5 BEST32.;
	FORMAT choice71___5 BEST12.;

	INFORMAT choice71___6 BEST32.;
	FORMAT choice71___6 BEST12.;

	INFORMAT choice71___7 BEST32.;
	FORMAT choice71___7 BEST12.;

	INFORMAT fdpor194 BEST32.;
	FORMAT fdpor194 BEST12.;

	INFORMAT fdpor197 BEST32.;
	FORMAT fdpor197 BEST12.;

	INFORMAT choice78 BEST32.;
	FORMAT choice78 BEST12.;

	INFORMAT bvfrq1 BEST32.;
	FORMAT bvfrq1 BEST12.;

	INFORMAT bvfrq2 BEST32.;
	FORMAT bvfrq2 BEST12.;

	INFORMAT bvfrq3 BEST32.;
	FORMAT bvfrq3 BEST12.;

	INFORMAT bvfrq4 BEST32.;
	FORMAT bvfrq4 BEST12.;

	INFORMAT bvfrq5 BEST32.;
	FORMAT bvfrq5 BEST12.;

	INFORMAT bvfrq6 BEST32.;
	FORMAT bvfrq6 BEST12.;

	INFORMAT bvfrq7 BEST32.;
	FORMAT bvfrq7 BEST12.;

	INFORMAT bvfrq8 BEST32.;
	FORMAT bvfrq8 BEST12.;

	INFORMAT bvfrq9 BEST32.;
	FORMAT bvfrq9 BEST12.;

	INFORMAT bvfrq10 BEST32.;
	FORMAT bvfrq10 BEST12.;

	INFORMAT bvfrq11 BEST32.;
	FORMAT bvfrq11 BEST12.;

	INFORMAT bvfrq12 BEST32.;
	FORMAT bvfrq12 BEST12.;

	INFORMAT bvfrq13 BEST32.;
	FORMAT bvfrq13 BEST12.;

	INFORMAT bvfrq14 BEST32.;
	FORMAT bvfrq14 BEST12.;

	INFORMAT bvfrq15 BEST32.;
	FORMAT bvfrq15 BEST12.;

	INFORMAT bvfrq16 BEST32.;
	FORMAT bvfrq16 BEST12.;

	INFORMAT bvfrq17 BEST32.;
	FORMAT bvfrq17 BEST12.;

	INFORMAT bvfrq18 BEST32.;
	FORMAT bvfrq18 BEST12.;

	INFORMAT bvfrq19 BEST32.;
	FORMAT bvfrq19 BEST12.;

	INFORMAT choice79 BEST32.;
	FORMAT choice79 BEST12.;

	INFORMAT bvpor1 BEST32.;
	FORMAT bvpor1 BEST12.;

	INFORMAT choice80 BEST32.;
	FORMAT choice80 BEST12.;

	INFORMAT bvpor10 BEST32.;
	FORMAT bvpor10 BEST12.;

	INFORMAT choice81 BEST32.;
	FORMAT choice81 BEST12.;

	INFORMAT choice82 BEST32.;
	FORMAT choice82 BEST12.;

	INFORMAT bvpor18 BEST32.;
	FORMAT bvpor18 BEST12.;

	INFORMAT choice83 BEST32.;
	FORMAT choice83 BEST12.;

	INFORMAT bvpor19 BEST32.;
	FORMAT bvpor19 BEST12.;

	INFORMAT bvfrq20 BEST32.;
	FORMAT bvfrq20 BEST12.;

	INFORMAT bvfrq21 BEST32.;
	FORMAT bvfrq21 BEST12.;

	INFORMAT bvfrq22 BEST32.;
	FORMAT bvfrq22 BEST12.;

	INFORMAT bvfrq23 BEST32.;
	FORMAT bvfrq23 BEST12.;

	INFORMAT bvfrq24 BEST32.;
	FORMAT bvfrq24 BEST12.;

	INFORMAT bvfrq25 BEST32.;
	FORMAT bvfrq25 BEST12.;

	INFORMAT choice84 BEST32.;
	FORMAT choice84 BEST12.;

	INFORMAT bvpor20 BEST32.;
	FORMAT bvpor20 BEST12.;

	INFORMAT bvpor22 BEST32.;
	FORMAT bvpor22 BEST12.;

	INFORMAT bvpor24 BEST32.;
	FORMAT bvpor24 BEST12.;

	INFORMAT bvfrq26 BEST32.;
	FORMAT bvfrq26 BEST12.;

	INFORMAT bvfrq27 BEST32.;
	FORMAT bvfrq27 BEST12.;

	INFORMAT bvfrq28 BEST32.;
	FORMAT bvfrq28 BEST12.;

	INFORMAT bvfrq29 BEST32.;
	FORMAT bvfrq29 BEST12.;

	INFORMAT bvfrq30 BEST32.;
	FORMAT bvfrq30 BEST12.;

	INFORMAT bvfrq31 BEST32.;
	FORMAT bvfrq31 BEST12.;

	INFORMAT bvfrq32 BEST32.;
	FORMAT bvfrq32 BEST12.;

	INFORMAT bvpor26 BEST32.;
	FORMAT bvpor26 BEST12.;

	INFORMAT choice85___1 BEST32.;
	FORMAT choice85___1 BEST12.;

	INFORMAT choice85___2 BEST32.;
	FORMAT choice85___2 BEST12.;

	INFORMAT choice85___3 BEST32.;
	FORMAT choice85___3 BEST12.;

	INFORMAT bvpor27 BEST32.;
	FORMAT bvpor27 BEST12.;

	INFORMAT c88 BEST32.;
	FORMAT c88 BEST12.;

	INFORMAT c88_2 BEST32.;
	FORMAT c88_2 BEST12.;

	INFORMAT c93 BEST32.;
	FORMAT c93 BEST12.;

	INFORMAT c93_2 BEST32.;
	FORMAT c93_2 BEST12.;

	INFORMAT choice98 BEST32.;
	FORMAT choice98 BEST12.;

	INFORMAT choice99 BEST32.;
	FORMAT choice99 BEST12.;

	INFORMAT summary1 BEST32.;
	FORMAT summary1 BEST12.;

	INFORMAT summary2___1 BEST32.;
	FORMAT summary2___1 BEST12.;

	INFORMAT summary2___2 BEST32.;
	FORMAT summary2___2 BEST12.;

	INFORMAT summary2___3 BEST32.;
	FORMAT summary2___3 BEST12.;

	INFORMAT summary2___4 BEST32.;
	FORMAT summary2___4 BEST12.;

	INFORMAT summary2___5 BEST32.;
	FORMAT summary2___5 BEST12.;

	INFORMAT summary2___6 BEST32.;
	FORMAT summary2___6 BEST12.;

	INFORMAT summary2___7 BEST32.;
	FORMAT summary2___7 BEST12.;

	INFORMAT summary2___8 BEST32.;
	FORMAT summary2___8 BEST12.;

	INFORMAT summary2___9 BEST32.;
	FORMAT summary2___9 BEST12.;

	INFORMAT summary2___10 BEST32.;
	FORMAT summary2___10 BEST12.;

	INFORMAT summary2___11 BEST32.;
	FORMAT summary2___11 BEST12.;

	INFORMAT summary2___12 BEST32.;
	FORMAT summary2___12 BEST12.;

	INFORMAT summary14 BEST32.;
	FORMAT summary14 BEST12.;

	INFORMAT summary15 BEST32.;
	FORMAT summary15 BEST12.;

	INFORMAT summary16 BEST32.;
	FORMAT summary16 BEST12.;

	INFORMAT summary17 BEST32.;
	FORMAT summary17 BEST12.;

	INFORMAT summary18 BEST32.;
	FORMAT summary18 BEST12.;

	INFORMAT summary19 BEST32.;
	FORMAT summary19 BEST12.;

	INFORMAT summary20 BEST32.;
	FORMAT summary20 BEST12.;

	INFORMAT open_end3 $166.;
	FORMAT open_end3 $166.;

	INFORMAT supp_yn BEST32.;
	FORMAT supp_yn BEST12.;

	INFORMAT supfrq1 BEST32.;
	FORMAT supfrq1 BEST12.;

	INFORMAT supdur1 BEST32.;
	FORMAT supdur1 BEST12.;

	INFORMAT supfrq2 BEST32.;
	FORMAT supfrq2 BEST12.;

	INFORMAT supdur2 BEST32.;
	FORMAT supdur2 BEST12.;

	INFORMAT supfrq3 BEST32.;
	FORMAT supfrq3 BEST12.;

	INFORMAT supdur3 BEST32.;
	FORMAT supdur3 BEST12.;

	INFORMAT supfrq4 BEST32.;
	FORMAT supfrq4 BEST12.;

	INFORMAT supdur4 BEST32.;
	FORMAT supdur4 BEST12.;

	INFORMAT supfrq5 BEST32.;
	FORMAT supfrq5 BEST12.;

	INFORMAT supdur5 BEST32.;
	FORMAT supdur5 BEST12.;

	INFORMAT supfrq6 BEST32.;
	FORMAT supfrq6 BEST12.;

	INFORMAT supdur6 BEST32.;
	FORMAT supdur6 BEST12.;

	INFORMAT supfrq7 BEST32.;
	FORMAT supfrq7 BEST12.;

	INFORMAT supdur7 BEST32.;
	FORMAT supdur7 BEST12.;

	INFORMAT supfrq8 BEST32.;
	FORMAT supfrq8 BEST12.;

	INFORMAT supdur8 BEST32.;
	FORMAT supdur8 BEST12.;

	INFORMAT supfrq9 BEST32.;
	FORMAT supfrq9 BEST12.;

	INFORMAT supdur9 BEST32.;
	FORMAT supdur9 BEST12.;

	INFORMAT supfrq10 BEST32.;
	FORMAT supfrq10 BEST12.;

	INFORMAT supdur10 BEST32.;
	FORMAT supdur10 BEST12.;

	INFORMAT supfrq11 BEST32.;
	FORMAT supfrq11 BEST12.;

	INFORMAT supdur11 BEST32.;
	FORMAT supdur11 BEST12.;

	INFORMAT supfrq12 BEST32.;
	FORMAT supfrq12 BEST12.;

	INFORMAT supdur12 BEST32.;
	FORMAT supdur12 BEST12.;

	INFORMAT supfrq13 BEST32.;
	FORMAT supfrq13 BEST12.;

	INFORMAT supdur13 BEST32.;
	FORMAT supdur13 BEST12.;

	INFORMAT supfrq14 BEST32.;
	FORMAT supfrq14 BEST12.;

	INFORMAT supdur14 BEST32.;
	FORMAT supdur14 BEST12.;

	INFORMAT supfrq15 BEST32.;
	FORMAT supfrq15 BEST12.;

	INFORMAT supdur15 BEST32.;
	FORMAT supdur15 BEST12.;

	INFORMAT supfrq16 BEST32.;
	FORMAT supfrq16 BEST12.;

	INFORMAT supdur16 BEST32.;
	FORMAT supdur16 BEST12.;

	INFORMAT supfrq17 BEST32.;
	FORMAT supfrq17 BEST12.;

	INFORMAT supdur17 BEST32.;
	FORMAT supdur17 BEST12.;

	INFORMAT supfrq18 BEST32.;
	FORMAT supfrq18 BEST12.;

	INFORMAT supdur18 BEST32.;
	FORMAT supdur18 BEST12.;

	INFORMAT supfrq19 BEST32.;
	FORMAT supfrq19 BEST12.;

	INFORMAT supdur19 BEST32.;
	FORMAT supdur19 BEST12.;

	INFORMAT open_end4 $206.;
	FORMAT open_end4 $206.;

	INFORMAT tufts_food_frequency_v_1 BEST32.;
	FORMAT tufts_food_frequency_v_1 BEST12.;

	INPUT
		id_addi
		visit
		redcap_survey_identifier
		tufts_food_frequency_v_0
		sex
		age_cat
		protocol
		intvid
		frt_sadj___1
		frt_sadj___2
		frt_sadj___3
		frt_sadj___4
		frt_sadj___5
		frt_sadj___6
		frt_sadj___7
		frt_sadj___8
		fdfrq1
		fdfrq2
		fdfrq3
		fdfrq4
		fdfrq5
		fdfrq6
		fdfrq7
		fdfrq8
		fdfrq9
		fdfrq10
		fdfrq11
		fdfrq12
		fdfrq13
		fdfrq14
		fdfrq15
		fdfrq16
		fdfrq17
		fdfrq18
		fdfrq19
		fdpor12
		fdpor13
		fdpor15
		fdpor16
		fdpor19
		fdfrq20
		fdfrq22
		fdfrq23
		fdfrq24
		fdfrq28
		fdfrq29
		fdfrq30
		fdpor20
		fdpor21
		choice1
		fdpor22
		fdpor25
		fdpor29
		choice2
		fdpor30
		choice3
		open_end1
		open_end2
		fdfrq31
		fdfrq32
		fdfrq33
		fdfrq34
		fdfrq35
		fdfrq36
		fdfrq37
		fdfrq38
		fdfrq39
		choice4
		fdpor31
		fdpor35
		fdpor36
		choice5
		fdpor37
		fdpor39
		fdpor40
		fdpor41
		fdfrq42
		fdfrq43
		fdfrq44
		fdfrq45
		fdfrq46
		fdfrq47
		fdfrq48
		fdfrq49
		fdfrq50
		fdfrq51
		fdfrq52
		fdfrq53
		fdfrq54
		fdfrq55
		fdfrq56
		fdfrq57
		fdfrq58
		fdfrq59
		fdfrq60
		fdfrq61
		fdfrq62
		fdfrq63
		fdfrq64
		fdfrq65
		fdfrq66
		fdfrq67
		choice6___1
		choice6___2
		choice6___3
		choice6___4
		fdpor42
		fdpor43
		fdpor45
		choice10___1
		choice10___2
		choice10___3
		fdpor62
		fdpor46
		choice13___1
		choice13___2
		choice13___3
		choice13___4
		choice13___5
		choice13___6
		choice13___7
		choice13___8
		choice21
		fdfrq68
		fdfrq69
		fdfrq70
		fdfrq71
		fdfrq72
		fdfrq73
		fdfrq74
		fdfrq75
		fdfrq76
		fdfrq77
		fdfrq78
		fdfrq79
		fdfrq80
		fdfrq81
		fdpor68
		choice22___1
		choice22___2
		choice22___3
		choice22___4
		fdpor69
		fdpor71
		fdpor74
		fdpor76
		choice23___1
		choice23___2
		choice23___3
		choice23___4
		fdpor79
		fdpor80
		choice27___1
		choice27___2
		choice27___3
		choice27___4
		fdfrq82
		fdfrq83
		fdfrq84
		fdfrq85
		fdfrq86
		fdfrq87
		fdfrq88
		fdfrq89
		fdfrq90
		fdfrq91
		fdfrq92
		fdfrq93
		fdfrq94
		fdfrq95
		fdfrq96
		fdpor82
		fdpor86
		fdpor90
		choice31___1
		choice31___2
		choice31___3
		choice31___4
		choice31___5
		choice31___6
		choice31___7
		choice31___8
		fdpor93
		choice39___1
		choice39___2
		choice39___3
		choice39___4
		choice39___5
		fdpor94
		choice44___1
		choice44___2
		choice44___3
		choice44___4
		fdpor95
		fdpor96
		fdfrq97
		fdfrq98
		fdfrq99
		fdfrq100
		fdfrq101
		fdfrq102
		fdfrq103
		fdfrq104
		fdfrq105
		fdfrq106
		fdfrq107
		fdfrq108
		choice48
		choice49
		fdpor98
		choice50___1
		choice50___2
		fdpor99
		fdpor100
		fdpor107
		fdfrq109
		fdfrq110
		fdfrq111
		fdfrq112
		fdfrq113
		fdfrq114
		fdfrq115
		fdpor110
		choice52___1
		choice52___2
		choice52___3
		fdpor111
		choice55
		choice56
		fdpor112
		fdpor114
		fdpor115
		fdfrq116
		fdfrq117
		fdfrq118
		fdfrq119
		fdfrq120
		fdfrq121
		fdfrq122
		fdfrq123
		fdfrq124
		fdfrq125
		fdpor117
		fdpor119
		choice57
		fdpor122
		fdpor124
		fdfrq126
		fdfrq127
		fdfrq128
		fdfrq129
		fdfrq130
		fdfrq131
		fdfrq132
		fdfrq133
		choice58
		choice59
		fdpor126
		choice60
		fdpor130
		fdpor132
		fdfrq134
		fdfrq135
		fdfrq136
		fdfrq137
		fdfrq138
		fdfrq139
		fdfrq140
		fdfrq141
		fdfrq142
		fdfrq143
		fdfrq144
		fdfrq145
		fdfrq146
		fdfrq147
		fdfrq148
		fdfrq149
		fdfrq150
		fdfrq151
		choice61
		fdpor134
		choice62
		choice63
		fdpor135
		fdpor136
		fdpor144
		fdpor149
		choice64
		fdfrq152
		fdfrq153
		fdfrq154
		fdfrq155
		fdfrq156
		fdfrq157
		fdfrq158
		fdfrq159
		fdpor152
		fdpor158
		fdfrq160
		fdfrq161
		fdfrq162
		fdfrq163
		fdfrq164
		fdfrq165
		fdfrq166
		fdfrq167
		fdfrq168
		fdfrq169
		fdfrq170
		fdfrq171
		fdfrq172
		choice65
		fdpor160
		choice66
		fdpor162
		fdpor166
		choice67
		fdpor167
		fdpor168
		fdpor171
		fdfrq173
		fdfrq174
		fdfrq175
		fdfrq176
		fdfrq177
		fdfrq178
		fdfrq179
		fdfrq180
		fdfrq181
		fdfrq182
		fdfrq183
		fdfrq184
		fdfrq185
		fdfrq186
		fdfrq187
		choice68
		fdpor174
		fdpor179
		choice69
		fdpor181
		fdpor180
		fdpor182
		fdpor185
		fdpor187
		fdfrq188
		fdfrq189
		fdfrq190
		fdfrq191
		fdfrq192
		fdfrq193
		fdfrq194
		fdfrq195
		fdfrq196
		fdfrq197
		fdpor188
		choice70
		fdpor191
		fdpor189
		choice71___1
		choice71___2
		choice71___3
		choice71___4
		choice71___5
		choice71___6
		choice71___7
		fdpor194
		fdpor197
		choice78
		bvfrq1
		bvfrq2
		bvfrq3
		bvfrq4
		bvfrq5
		bvfrq6
		bvfrq7
		bvfrq8
		bvfrq9
		bvfrq10
		bvfrq11
		bvfrq12
		bvfrq13
		bvfrq14
		bvfrq15
		bvfrq16
		bvfrq17
		bvfrq18
		bvfrq19
		choice79
		bvpor1
		choice80
		bvpor10
		choice81
		choice82
		bvpor18
		choice83
		bvpor19
		bvfrq20
		bvfrq21
		bvfrq22
		bvfrq23
		bvfrq24
		bvfrq25
		choice84
		bvpor20
		bvpor22
		bvpor24
		bvfrq26
		bvfrq27
		bvfrq28
		bvfrq29
		bvfrq30
		bvfrq31
		bvfrq32
		bvpor26
		choice85___1
		choice85___2
		choice85___3
		bvpor27
		c88
		c88_2
		c93
		c93_2
		choice98
		choice99
		summary1
		summary2___1
		summary2___2
		summary2___3
		summary2___4
		summary2___5
		summary2___6
		summary2___7
		summary2___8
		summary2___9
		summary2___10
		summary2___11
		summary2___12
		summary14
		summary15
		summary16
		summary17
		summary18
		summary19
		summary20
		open_end3
		supp_yn
		supfrq1
		supdur1
		supfrq2
		supdur2
		supfrq3
		supdur3
		supfrq4
		supdur4
		supfrq5
		supdur5
		supfrq6
		supdur6
		supfrq7
		supdur7
		supfrq8
		supdur8
		supfrq9
		supdur9
		supfrq10
		supdur10
		supfrq11
		supdur11
		supfrq12
		supdur12
		supfrq13
		supdur13
		supfrq14
		supdur14
		supfrq15
		supdur15
		supfrq16
		supdur16
		supfrq17
		supdur17
		supfrq18
		supdur18
		supfrq19
		supdur19
		open_end4
		tufts_food_frequency_v_1
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		redcap_survey_identifier = "Survey Identifier"
		tufts_food_frequency_v_0 = "Survey Timestamp"
		sex = "Sex"
		age_cat = "Age"
		protocol = "Protocol Number"
		intvid = "Interviewer ID"
		frt_sadj___1 = "Which of the following fruits do you eat only in the summer? (choice=watermelon)"
		frt_sadj___2 = "Which of the following fruits do you eat only in the summer? (choice=strawberries)"
		frt_sadj___3 = "Which of the following fruits do you eat only in the summer? (choice=other berries)"
		frt_sadj___4 = "Which of the following fruits do you eat only in the summer? (choice=cantaloupe)"
		frt_sadj___5 = "Which of the following fruits do you eat only in the summer? (choice=honeydew)"
		frt_sadj___6 = "Which of the following fruits do you eat only in the summer? (choice=cherries)"
		frt_sadj___7 = "Which of the following fruits do you eat only in the summer? (choice=plums)"
		frt_sadj___8 = "Which of the following fruits do you eat only in the summer? (choice=grapes)"
		fdfrq1 = "Apples, applesauce, pears"
		fdfrq2 = "Bananas"
		fdfrq3 = "Oranges, tangerines"
		fdfrq4 = "Grapefruit (white or pink)"
		fdfrq5 = "Peaches, nectarines, apricots (e.g. fresh, canned, or frozen)"
		fdfrq6 = "Plums"
		fdfrq7 = "Grapes"
		fdfrq8 = "Avocado, fresh (incl. guacamole)"
		fdfrq9 = "Kiwi"
		fdfrq10 = "Papaya"
		fdfrq11 = "Mango"
		fdfrq12 = "Dried fruit (e.g., raisins, prunes, apricots)"
		fdfrq13 = "Cantaloupe"
		fdfrq14 = "Honeydew melon"
		fdfrq15 = "Watermelon"
		fdfrq16 = "Cherries"
		fdfrq17 = "Strawberries"
		fdfrq18 = "Other berries (e.g. blueberries, raspberries)"
		fdfrq19 = "Any other fruit (e.g., canned, mixed fruit, pineapple, fruit cocktail)"
		fdpor12 = "If you eat dried fruit, your portion is usually closest to ..."
		fdpor13 = "If you eat cantaloupe or honeydew, your portion is usually closest to ... (1 wedge = 1/4 melon)"
		fdpor15 = "If you eat watermelon, your portion is usually closest to ... (1 med. slice watermelon = 71/2'' dia x 1'' thick)"
		fdpor16 = "If you eat strawberries, cherries, and/or other berries, your portion is usually closest to ..."
		fdpor19 = "If you eat any other cut up or canned fruit, your portion is usually closest to ..."
		fdfrq20 = "Cold cereal (e.g. cornflakes, granola)"
		fdfrq22 = "Grits (hominy) or other cornmeal cereal"
		fdfrq23 = "Oatmeal (plain or flavored)"
		fdfrq24 = "Other hot cereal (e.g. Cream of Wheat/Rice)"
		fdfrq28 = "Sugar; added to hot or cold cereal"
		fdfrq29 = "Cereal or granola bars (e.g. Milk'n Cereal bars, fruit bars, Pop-Tarts)"
		fdfrq30 = "Meal replacement/energy bars (e.g. PowerBars, Atkins bars, Slim-Fast bars)"
		fdpor20 = "If you eat cold cereal, your portion is usually closest to ... (1 individual box = approx. 3/4 cup)"
		fdpor21 = "If you add milk to cold cereal, the amount added is usually closest to..."
		choice1 = "If you eat oatmeal, it is usually ..."
		fdpor22 = "If you eat hot cereal (e.g. oatmeal, grits or other hot cereals), your portion is usually closest to ... (1 packet = 3/4 cup cooked)"
		fdpor25 = "If you add milk to hot cereal (incl. during cooking), the amount added is usually closest to ..."
		fdpor29 = "If you eat granola bars, cereal bars, fruit bars, and/or Pop-Tarts, your portion is usually closest to..."
		choice2 = "If you eat meal replacement/energy bars, they are usually..."
		fdpor30 = "If you eat meal replacement/energy bars, your portion is usually closest to..."
		choice3 = "If you eat cold breakfast cereal, what types(e.g., brand name and type) do you eat most often (e.g. Kellogg's corn flakes)     *Only select this answer if you do not know that brand name. If you do know the brand name, then proceed to the next question."
		open_end1 = "If you eat cold breakfast cereal, what types (brand name and type) do you eat most often (first choice)?"
		open_end2 = "If you eat cold breakfast cereal, what type (brand name and type) do you eat most often (second choice)?"
		fdfrq31 = "100% whole wheat bread"
		fdfrq32 = "Wheat bread, not 100% whole wheat"
		fdfrq33 = "Multigrain, rye, pumpernickel bread"
		fdfrq34 = "White bread (incl. seed breads, cinnamon raisin bread)"
		fdfrq35 = "Bagels"
		fdfrq36 = "Biscuits"
		fdfrq37 = "Tortillas, wraps (corn, white, or wheat flour)"
		fdfrq38 = "Croutons, garlic bread"
		fdfrq39 = "Pancakes, waffles, french toast"
		choice4 = "If you eat bread, it is usually..."
		fdpor31 = "If you eat bread, your portion is usually closest to..."
		fdpor35 = "If you eat bagels, your portion is usually closest to ... (1 medium = Dunkin Donuts bagel)"
		fdpor36 = "If you eat biscuits, your portion is usually closest to... (1 medium biscuit = 3 diameter)"
		choice5 = "If you eat tortillas or wraps, they are usually made from..."
		fdpor37 = "If you eat tortillas, your portion is usually clostest... (1 medium = 8 diameter)"
		fdpor39 = "If you eat pancakes, waffles, and/or french toast, your portion is usually closest to ... (1 pancake/waffle = 4 diameter)"
		fdpor40 = "If you add butter or margarine to breads, bagels and/or pancakes, your portion per slice/piece is usually ... (1 tsp = 1 pat)"
		fdpor41 = "If you add cream cheese to breads and/or bagels, your portion per slice/piece is usually ..."
		fdfrq42 = "Salad greens (e.g. lettuce, raw spinach, mixed greens)"
		fdfrq43 = "Mustard greens, turnip greens, collards, leafy greens"
		fdfrq44 = "Spinach, cooked (not raw)"
		fdfrq45 = "Tomatoes, raw"
		fdfrq46 = "Tomatoes, canned or cooked"
		fdfrq47 = "Carrots, raw"
		fdfrq48 = "Carrots, cooked"
		fdfrq49 = "String beans, green beans"
		fdfrq50 = "Green peas, fresh, canned, or frozen"
		fdfrq51 = "Corn, fresh, canned, or frozen"
		fdfrq52 = "Peppers (sweet)"
		fdfrq53 = "Broccoli, brussel sprouts, fresh or frozen"
		fdfrq54 = "Cauliflower"
		fdfrq55 = "Coleslaw"
		fdfrq56 = "Green cabbage (other than coleslaw)"
		fdfrq57 = "Red cabbage"
		fdfrq58 = "Beets"
		fdfrq59 = "Asparagus"
		fdfrq60 = "Mushrooms"
		fdfrq61 = "Eggplant"
		fdfrq62 = "Fried onion rings"
		fdfrq63 = "Onions or leeks (other than fried onion rings)"
		fdfrq64 = "Winter squash (e.g., butternut, acorn, hubbard)"
		fdfrq65 = "Summer squash (e.g., yellow zucchini)"
		fdfrq66 = "Okra"
		fdfrq67 = "Other vegetables (e.g., cucumbers, celery, radish)"
		choice6___1 = "If you eat salad greens, they are usually ... (choose all that apply) (choice=Iceberg lettuce)"
		choice6___2 = "If you eat salad greens, they are usually ... (choose all that apply) (choice=Romaince lettuce)"
		choice6___3 = "If you eat salad greens, they are usually ... (choose all that apply) (choice=Spinach (raw))"
		choice6___4 = "If you eat salad greens, they are usually ... (choose all that apply) (choice=Other greens, mixed greens/mesclun)"
		fdpor42 = "If you eat salad greens, your portion is usually closest to ..."
		fdpor43 = "If you eat cooked greens (e.g. mustard greens, turnip greens, collards, spinach) your portion is usually closest to ..."
		fdpor45 = "If you eat raw tomatoes, your portion is usually closest to ... (1 cherry tomato = approx. 1 slice or wedge)"
		choice10___1 = "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet green)"
		choice10___2 = "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet red)"
		choice10___3 = "If you eat peppers, they are usually (choose all that apply) ... (choice=sweet yellow or orange)"
		fdpor62 = "If you eat fried onion rings, your portion is usually closest to..."
		fdpor46 = "Your usual portion size for most cooked vegetables is closest to ..."
		choice13___1 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Carrots)"
		choice13___2 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=String beans)"
		choice13___3 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Peas)"
		choice13___4 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Corn)"
		choice13___5 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Broccoli)"
		choice13___6 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cauliflower)"
		choice13___7 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cabbage)"
		choice13___8 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Squash)"
		choice21 = "If you add spreads or oils to any of the previous items after cooking, your portion is usually... (1 teaspoon = 1 pat)"
		fdfrq68 = "Chili (with or without meat)"
		fdfrq69 = "Beans (e.g., pinto, black, white, kidney, lima)"
		fdfrq70 = "Peas, not green (e.g. cowpeas or black-eyed)"
		fdfrq71 = "Tofu, soy burgers, or meat-substitutes"
		fdfrq72 = "Potato salad"
		fdfrq73 = "Mashed or scalloped potatoes"
		fdfrq74 = "Fast food french fries"
		fdfrq75 = "Homemade french fries, hash browns (incl. frozen, restaurant)"
		fdfrq76 = "Fast food stuffed baked potato"
		fdfrq77 = "Other potatoes (e.e., baked, boiled, roasted)"
		fdfrq78 = "Sweet potatoes, yams"
		fdfrq79 = "Plantains, green bananas"
		fdfrq80 = "Pasteles"
		fdfrq81 = "Root crops (e.g., cassava, name, yautia, tannier)"
		fdpor68 = "If you eat chili, your portion is usually closest to..."
		choice22___1 = "If you eat beans, they are usually prepared ... (choose all that apply) (choice=plain, unseasoned)"
		choice22___2 = "If you eat beans, they are usually prepared ... (choose all that apply) (choice=Puerto Rican style)"
		choice22___3 = "If you eat beans, they are usually prepared ... (choose all that apply) (choice=baked)"
		choice22___4 = "If you eat beans, they are usually prepared ... (choose all that apply) (choice=refried)"
		fdpor69 = "If you eat beans (plain, baked, refried or other) and/or peas, your portion is usually closest to ..."
		fdpor71 = "If you eat tofu, soy burgers, or soy meat substitute, your portion is usually closest to... (1 burger = approx. 3 ounces)"
		fdpor74 = "If you eat french fries, home fries, and/or hash browns, your portion is usually closest to..."
		fdpor76 = "If you eat potatoes (other than fried) and/or root crops, your portion is usually closest to ..."
		choice23___1 = "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, boiled/baked)"
		choice23___2 = "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, fried)"
		choice23___3 = "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, boiled/baked)"
		choice23___4 = "If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, fried)"
		fdpor79 = "If you eat plantains and/or green bananas, your portion is usually closest to ..."
		fdpor80 = "If you eat pasteles, your portion is usually closest to ..."
		choice27___1 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Potatoes)"
		choice27___2 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Sweet potatoes)"
		choice27___3 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Plantains)"
		choice27___4 = "Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Other root crops)"
		fdfrq82 = "Rice cooked with beans or pigeon peas (mixed dish)"
		fdfrq83 = "Rice with beef or pork"
		fdfrq84 = "Rice with chicken"
		fdfrq85 = "Other mixed dishes with rice (incl. Jambalaya)"
		fdfrq86 = "Fried rice (incl. Chinese style)"
		fdfrq87 = "Flavored rice (e.g. Rice-a-Roni, Spanish, rice pilaf)"
		fdfrq88 = "White rice"
		fdfrq89 = "Brown rice"
		fdfrq90 = "Pasta (e.g. spaghetti, macaroni, linguini)"
		fdfrq91 = "Pasta mixed dishes (e.g. lasagna, ravioli, baked ziti)"
		fdfrq92 = "Lo mein or rice noodles (incl. Chinese style)"
		fdfrq93 = "Macaroni salad, pasta salad"
		fdfrq94 = "Mexican foods (e.g. burritos, tacos, tamales, enchiladas)"
		fdfrq95 = "Pizza"
		fdfrq96 = "Eggrolls, turnovers"
		fdpor82 = "If you eat mixed dishes made with rice, your portion is usually closest to ..."
		fdpor86 = "If you eat plain, fried or flavored rice, your portion (cooked) is usually closest to ..."
		fdpor90 = "If you eat pasta or mixed pasta dishes (e.g. lasagna), your portion is usually closest to ..."
		choice31___1 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Plain (no sauce))"
		choice31___2 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Butter and/or olive oil)"
		choice31___3 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce (no meat))"
		choice31___4 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce with meat)"
		choice31___5 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Clam sauce)"
		choice31___6 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Pesto sauce)"
		choice31___7 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cream sauce)"
		choice31___8 = "What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cheese sauce (e.g. macaroni and cheese))"
		fdpor93 = "If you eat macaroni salad or pasta salad, your portion is usually closest to ..."
		choice39___1 = "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Burritos)"
		choice39___2 = "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tacos)"
		choice39___3 = "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tamales)"
		choice39___4 = "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Enchiladas)"
		choice39___5 = "If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Quesadillas)"
		fdpor94 = "If you eat Mexican foods (incl. burritos, tacos, tamales, enchiladas), your portion is usually closest to ..."
		choice44___1 = "If you eat pizza, it is usually ... (choice=Plain cheese)"
		choice44___2 = "If you eat pizza, it is usually ... (choice=With meat)"
		choice44___3 = "If you eat pizza, it is usually ... (choice=With vegetables)"
		choice44___4 = "If you eat pizza, it is usually ... (choice=With vegetables and meat)"
		fdpor95 = "If you eat pizza, your portion is usually closest to ... (1 slice = 1/8 of a large pizza)"
		fdpor96 = "If you eat eggrolls and/or turnovers, your portion is usually closest to ..."
		fdfrq97 = "Fast food burgers"
		fdfrq98 = "Ground beef (including homemade patty, meatballs, meatloaf)"
		fdfrq99 = "Mixed dishes with beef or pork (e.g. beef stew, pot pies)"
		fdfrq100 = "Beef: steak or roast"
		fdfrq101 = "Ground pork"
		fdfrq102 = "Pork: chops or roast"
		fdfrq103 = "Mixed dishes with pork"
		fdfrq104 = "Ham (not including cold cuts/luncheon meat)"
		fdfrq105 = "Ribs: beef or pork"
		fdfrq106 = "Lamb: chops or leg"
		fdfrq107 = "Liver (beef)"
		fdfrq108 = "Other organ meats (e.g. tongue, kidney, chitterlings)"
		choice48 = "If you eat fast food burgers, they are usually ... (If you add cheese to the burger, indicate below the corresponding item)"
		choice49 = "If you eat homemade patties and/or ground beef or pork (including meatloaf), the meat is usually ..."
		fdpor98 = "If you eat homemade patties and/or ground beef or pork, your portion is usually closest to ..."
		choice50___1 = "If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=American style)"
		choice50___2 = "If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=Puerto Rican style)"
		fdpor99 = "If you eat mixed dishes with beef or pork (incl. meat pies), your portion is usually closest to ..."
		fdpor100 = "If you eat beef, pork or lamb, your portion is usually closest to (edible portion) ... (3 oz. is about the size of 1 deck of cards)"
		fdpor107 = "If you eat liver and/or other organ meats, your portion is usually closest to ..."
		fdfrq109 = "Fast food chicken"
		fdfrq110 = "Ground chicken/turkey (including homemade patty, meatballs, and/or meatloaf)"
		fdfrq111 = "Mixed dishes made with chicken (e.g. pot pie, chicken and dumplings, chicken stew)"
		fdfrq112 = "Chicken or turkey: roasted, broiled, grilled, baked"
		fdfrq113 = "Fried chicken (including fast food nuggets, KFC)"
		fdfrq114 = "Chicken or turkey salad"
		fdfrq115 = "Liver (chicken)"
		fdpor110 = "If you eat homemade patties and/or ground chicken/turkey (including meatloaf), your portion is usually closest to ..."
		choice52___1 = "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=American style)"
		choice52___2 = "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=Puerto Rican style)"
		choice52___3 = "If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=other)"
		fdpor111 = "If you eat other mixed dishes with chicken/turkey (incl. meat pies), your portion is usually closest to ..."
		choice55 = "If you eat chicken or turkey, roasted, broiled, grilled and/or baked, it is usually ..."
		choice56 = "Do you eat the skin on chicken or turkey?"
		fdpor112 = "If you eat chicken or turkey, roasted, baked, and/or fried, your portion is usually closest to (edible portion) ..."
		fdpor114 = "If you eat chicken salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
		fdpor115 = "If you eat chicken liver, your portion is usually closest to ..."
		fdfrq116 = "Fast food fish sandwich"
		fdfrq117 = "Shellfish, fried (e.g. fried clams, shrimp, scallops)"
		fdfrq118 = "Shellfish, not fried (e.g. lobster, scallops, shrimp, clams)"
		fdfrq119 = "Fish, fried (e.g. battered and fried fillets)"
		fdfrq120 = "Salmon (fresh or canned)"
		fdfrq121 = "Tuna (fresh or canned, not tuna salad)"
		fdfrq122 = "Tuna salad (incl. in a sandwich, sub or wrap)"
		fdfrq123 = "Bacalao (salted cod fish)"
		fdfrq124 = "Sardines"
		fdfrq125 = "Other fish, not fried (e.g. halibut, cod, haddock, sole)"
		fdpor117 = "If you eat shellfish, your portion is usually closest to ..."
		fdpor119 = "If you eat fish, your portion is usually closest to (1 fillet = approx. 3 ounces) ..."
		choice57 = "If you eat canned tuna and/or other canned fish, it is usually"
		fdpor122 = "If you eat tuna salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
		fdpor124 = "If you eat sardines, your portion is usually closest to (1 can = 3.5 ounces) ..."
		fdfrq126 = "Chicken or turkey cold cuts (luncheon meat)"
		fdfrq127 = "Roast beef cold cuts (luncheon meat)"
		fdfrq128 = "Ham cold cuts (luncheon meat)"
		fdfrq129 = "Other luncheon meats (e.g. Salami, Bologna)"
		fdfrq130 = "Hot dogs"
		fdfrq131 = "Sausage (not breakfast type)"
		fdfrq132 = "Breakfast sausage"
		fdfrq133 = "Bacon, beef jerky (e.g., Slim Jim, Big Jerk)"
		choice58 = "If you eat luncheon meat, it is usually ..."
		choice59 = "Do you add cheese to your luncheon meat sandwiches?"
		fdpor126 = "If you eat luncheon meat, your portion is usually closest to ..."
		choice60 = "If you eat hot dogs, bacon and/or sausage they are usually ..."
		fdpor130 = "If you eat hot dogs and/or sausage your portion is usually closest to ..."
		fdpor132 = "If you eat bacon, beef jerky and/or breakfast sausage, your portion is usually closest to ..."
		fdfrq134 = "Mayonnaise or tartar sauce (added to sandwiches or used as dip)"
		fdfrq135 = "Salad dressing"
		fdfrq136 = "Sour cream"
		fdfrq137 = "Cranberry sauce"
		fdfrq138 = "Soy sauce, teriyaki sauce, barbeque sauce"
		fdfrq139 = "Ketchup"
		fdfrq140 = "Mustard"
		fdfrq141 = "Sauerkraut"
		fdfrq142 = "Pickles, relish, horseradish"
		fdfrq143 = "Olives"
		fdfrq144 = "Garlic, fresh or powder"
		fdfrq145 = "Sweet & sour sauce, duck sauce"
		fdfrq146 = "Salsa"
		fdfrq147 = "Hot peppers (e.g. jalapeno)"
		fdfrq148 = "Green tomato or green chile sauce"
		fdfrq149 = "Gravy or white sauce (on meat, potatoes, rice and/or biscuits)"
		fdfrq150 = "Lemon, lime; wedge or juice"
		fdfrq151 = "Herbs, fresh or dried (e.g. cilantro)"
		choice61 = "If you use mayonnaise or sour cream, it is usually ..."
		fdpor134 = "If you use mayonnaise or sour cream, your portion is usually closest to ..."
		choice62 = "If you use salad dressing, it is usually ..."
		choice63 = "If you use salad dressing, it is usually ..."
		fdpor135 = "If you use salad dressing, your portion is usually closest to ..."
		fdpor136 = "If you use sauces, ketchup, mustard and/or relish, your portion is usually closest to ..."
		fdpor144 = "If you use salsa, hot peppers and/or duck sauce, your portion is usually closest to ..."
		fdpor149 = "If you use gravy or white sauce, your portion is usually closest to ..."
		choice64 = "If you cook with garlic and/or herbs, you use mostly ..."
		fdfrq152 = "New England clam or fish chowder (cream-based)"
		fdfrq153 = "Manhattan clam chowder (tomato-based)"
		fdfrq154 = "Other cream-based soup (e.g. corn chowder, cream of vegetable)"
		fdfrq155 = "Bean, pea or lentil soup"
		fdfrq156 = "Other homemade or home-style soup, with meat or chicken (e.g. gumbo)"
		fdfrq157 = "Other homemade or home-style soup, without meat"
		fdfrq158 = "Chicken noodle, ramen noodle and/or chicken rice soup; canned or instant"
		fdfrq159 = "Vegetable and/or tomato based soup; canned or instant (e.g. veg. beef, minestrone)"
		fdpor152 = "If you eat homemade or home-style soup, with or without meat, your portion is usually closest to ..."
		fdpor158 = "If you eat canned soup, your portion (prepared amount) is usually closest to ..."
		fdfrq160 = "Milk, plain (including soymilk; as beverage, not in cereal or coffee/tea)"
		fdfrq161 = "Chocolate or flavored milk"
		fdfrq162 = "Cheese, hard (e.g. cheddar, parmesan, swiss)"
		fdfrq163 = "Cheese, processed (American slices, Velveeta)"
		fdfrq164 = "Cheese, soft (e.g. feta, mozzarella, brie, farmer's)"
		fdfrq165 = "Cheese spreads or dips"
		fdfrq166 = "Cottage cheese"
		fdfrq167 = "Yogurt (not frozen)"
		fdfrq168 = "Egg substitute"
		fdfrq169 = "Eggs (e.g. soft or hard-boiled)"
		fdfrq170 = "Eggs (e.g. fried, scrambled, omelets)"
		fdfrq171 = "Egg salad (incl. in a sandwich, sub or wrap)"
		fdfrq172 = "Fast food egg sandwich"
		choice65 = "If you drink milk and/or flavored milk, it is usually ..."
		fdpor160 = "If you drink milk and/or flavored milk, your portion is usually closest to ..."
		choice66 = "If you eat cheese, it is usually ..."
		fdpor162 = "If you eat cheese, your portion is usually closest to ..."
		fdpor166 = "If you eat cottage cheese, your portion is usually closest to ..."
		choice67 = "If you eat yogurt, it is usually ..."
		fdpor167 = "If you eat yogurt, your portion is usually closest to (1 yogurt container = 1 cup) ..."
		fdpor168 = "If you eat eggs and/or egg substitute, your portion is usually closest to ... (1/4 cup raw egg substitute = 1 egg)"
		fdpor171 = "If you eat egg salad, your portion is usually closest to ..."
		fdfrq173 = "Fast food shakes"
		fdfrq174 = "Ice cream"
		fdfrq175 = "Frozen yogurt"
		fdfrq176 = "Sherbet"
		fdfrq177 = "Jell-O, sorbet, popsicles"
		fdfrq178 = "Pudding, custard (flan), cheesecake"
		fdfrq179 = "Doughnuts, Danish"
		fdfrq180 = "Cookies (homemade or store-bought; e.g. Oreos, Chips-A-Hoy)"
		fdfrq181 = "Quick breads, muffins (e.g. corn bread, blueberry or bran muffin)"
		fdfrq182 = "Cakes, brownies, sweet rolls"
		fdfrq183 = "Sweet potato pie, pumpkin pie"
		fdfrq184 = "Fruit pies, cobblers, crisps (including fast food pies)"
		fdfrq185 = "Chocolate candy"
		fdfrq186 = "Other candy"
		fdfrq187 = "Jelly, jam, honey, syrup"
		choice68 = "If you eat ice cream, frozen yogurt and/or pudding, it is usually ..."
		fdpor174 = "If you eat ice cream, frozen yogurt, sherbet, Jell-O and/or pudding, your portion is usually closest to ..."
		fdpor179 = "If you eat doughnuts, your portion is usually closest to ..."
		choice69 = "If you eat cakes, cookies, sweet rolls and/or muffins, they are usually ..."
		fdpor181 = "If you eat quick bread or muffins, your portion is usually closest to ..."
		fdpor180 = "If you eat cookies, your portion is usually closest to (1 medium cookie = approx. 2 1/4 dia) ..."
		fdpor182 = "If you eat cake, sweet rolls and/or pie, your portion is usually closest to ..."
		fdpor185 = "If you eat chocolate candy and/or other candy, your portion is usually closest to ..."
		fdpor187 = "If you use jelly, jam, honey, and/or syrup, your portion is usually closest to ..."
		fdfrq188 = "Potato chips (all types)"
		fdfrq189 = "Crackers, matzo"
		fdfrq190 = "Tortilla chips, corn chips (including Doritos, Fritos)"
		fdfrq191 = "Popcorn"
		fdfrq192 = "Rice Cakes"
		fdfrq193 = "Pretzels"
		fdfrq194 = "Coconut meat, dried and sweetened"
		fdfrq195 = "Nuts (incl. peanuts, walnuts, cashews, pistachios)"
		fdfrq196 = "Sunflower seeds"
		fdfrq197 = "Peanut butter"
		fdpor188 = "If you eat chips (potato or corn), your portion is usually closest to (1 ounce = approx. 28 chips or 1 snack-size bag) ..."
		choice70 = "If you eat popcorn, it is usually ..."
		fdpor191 = "If you eat popcorn, your portion is usually closest to ..."
		fdpor189 = "If you eat crackers, your portion is usually closest to ..."
		choice71___1 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Peanuts)"
		choice71___2 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Walnuts)"
		choice71___3 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Almonds)"
		choice71___4 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Pecans)"
		choice71___5 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Cashews)"
		choice71___6 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Pistachios)"
		choice71___7 = "If you eat nuts, they are usually (choose all that apply) ... (choice=Mixed Nuts)"
		fdpor194 = "If you eat nuts and/or seeds, your portion (without shells) is usually closest to (2 tablespoons = approx. 1 ounce) ..."
		fdpor197 = "If you eat peanut butter, your portion is usually closest to ..."
		choice78 = "If you eat snacks, they are usually ..."
		bvfrq1 = "Orange juice (100% juice, not fruit drinks)"
		bvfrq2 = "Grapefruit juice (100% juice)"
		bvfrq3 = "Prune Juice"
		bvfrq4 = "Tomato or vegetable juice (e.g.V-8)"
		bvfrq5 = "Grape juice (100% juice)"
		bvfrq6 = "Apple juice (100% juice)"
		bvfrq7 = "Cranberry juice (including cranberry juice cocktail)"
		bvfrq8 = "Nectars (e.g. peach, pear, guava, mango)"
		bvfrq9 = "Other 100% fruit juices and/or blends"
		bvfrq10 = "Fortified fruit drinks (e.g. Sunny Delight, Hi-C)"
		bvfrq11 = "Non-fortified fruit drinks (e.g. lemonade, Kool-aid)"
		bvfrq12 = "Soft drinks, regular (e.g. cola, 7-up, ginger ale)"
		bvfrq13 = "Soft drinks, diet"
		bvfrq14 = "Sports drinks or energy drinks (e.g. Gatorade, Powerade, Red Bull)"
		bvfrq15 = "Bottled or powdered iced tea, pre-sweetened (not fresh brewed)"
		bvfrq16 = "Bottled or powdered iced tea, unsweetened or diet (not fresh brewed)"
		bvfrq17 = "Non-alcoholic beer (e.g. Malta)"
		bvfrq18 = "Meal replacement beverages (e.g. Slim-Fast, Atkins)"
		bvfrq19 = "Water (including tap, filtered, bottled)"
		choice79 = "If you drink 100% orange juice, it is usually..."
		bvpor1 = "If you drink fruit juice and/or vegetable juices, your portion is usually closest to (8 fl. ounces = 1 cup) ..."
		choice80 = "If you drink soft drinks, regular or diet, they are usually ..."
		bvpor10 = "If you drink soft drinks and/or other cold beverages (including fruit drinks, sports drinks), your portion (before adding ice) is usually closest to (1 can = 12 fl. ounce) ..."
		choice81 = "Do you add ice to your soft drinks?"
		choice82 = "If you drink meal replacement beverages or shakes, they are usually ..."
		bvpor18 = "If you drink meal replacement beverages or shakes, your portion is usually closest to ..."
		choice83 = "If you drink water, it is usually ..."
		bvpor19 = "If you drink water, your portion is usually closest to (8 fl. ounces = 1 cup; 1 liter = 33 fl. ounces) ..."
		bvfrq20 = "Beer"
		bvfrq21 = "Wine coolers"
		bvfrq22 = "Wine (red)"
		bvfrq23 = "Wine (white)"
		bvfrq24 = "Mixed drinks"
		bvfrq25 = "Other alcohol (e.g., whiskey, vodka, brandy)"
		choice84 = "If you drink beer, it is usually..."
		bvpor20 = "If you drink beer or wine coolers, your portion is usually closest to... (1 can or bottle = 12 fl ounces)"
		bvpor22 = "If you drink wine, your portion is usually closest to... (1 glass = 4 fl ounces)"
		bvpor24 = "If you drink mixed drinks and/or other alcohol, your portion is usually closest to... (1 drink = 1 1/2 fl ounces or 1 shot)"
		bvfrq26 = "Hot chocolate, cocoa"
		bvfrq27 = "Coffee (regular)"
		bvfrq28 = "Coffee (decaffeinated)"
		bvfrq29 = "Pre-sweetened coffee drinks (e.g., Dunkin Donut's Coffee Coolatta, Starbuck's Frappuccino)"
		bvfrq30 = "Herbal or green tea (hot or fresh-brewed iced)"
		bvfrq31 = "Black tea (regular, hot or fresh-brewed iced)"
		bvfrq32 = "Black tea (decaffeinated, hot of fresh-brewed iced)"
		bvpor26 = "If you drink hot chocolate or cocoa, your portion is usually closest to ..."
		choice85___1 = "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=regular ground)"
		choice85___2 = "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=espresso)"
		choice85___3 = "If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=instant)"
		bvpor27 = "If you drink coffee or tea, your portion (including milk/cream) is usually closest to ..."
		c88 = "If you add sugar to coffee, it is usually(choose one)?..."
		c88_2 = "If you add sugar to tea, it is usually(choose one)?..."
		c93 = "If you add milk or cream to coffee, it is usually prepared.."
		c93_2 = "If you add milk or cream to tea, it is usually prepared..."
		choice98 = "If you add milk or cream to coffee and/or tea, it is usually (choose one) ..."
		choice99 = "If you add cream substitute (liquid or powder) to coffee and/or tea, it is usually..."
		summary1 = "How often do you add salt to your food at the table?"
		summary2___1 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=stick margarine)"
		summary2___2 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=lard, salt pork or bacon fat)"
		summary2___3 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like)"
		summary2___4 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=canola oil)"
		summary2___5 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=other vegetable oil)"
		summary2___6 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=tub margarine)"
		summary2___7 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=spread, light)"
		summary2___8 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=shortening)"
		summary2___9 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like spread)"
		summary2___10 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=butter)"
		summary2___11 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=olive oil)"
		summary2___12 = "If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=corn oil)"
		summary14 = "Not including lettuce or potatoes, how often do you eat vegetables?"
		summary15 = "Not including juices, how often do you eat fruit?"
		summary16 = "How often do you eat out (incl. restaurants, fast food and/or take-out)?"
		summary17 = "Do you follow a specific diet regimen (e.g., kosher, vegetarian)?"
		summary18 = "Where do you usually eat breakfast?"
		summary19 = "Where do you usually eat lunch?"
		summary20 = "Where do you usually eat dinner?"
		open_end3 = "Are there any other foods that you eat at least once per week (not mentioned in the previous sections)? If so, please describe:"
		supp_yn = "Do you currently take any vitamin or mineral supplements or antacids?"
		supfrq1 = "Multi-vitamin (e.g. Centrum, One-A-Day)"
		supdur1 = "Multi-vitamin (e.g., Centrum, One-A-Day)"
		supfrq2 = "Senior formula"
		supdur2 = "Senior formula"
		supfrq3 = "Stress tabs or B-complex"
		supdur3 = "Stress tabs or B-complex"
		supfrq4 = "Calcium/Vitamin D or bone complex (e.g. Oscal)"
		supdur4 = "Calcium/Vitamin D or bone complex (e.g., Oscal)"
		supfrq5 = "Vitamin A"
		supdur5 = "Vitamin A"
		supfrq6 = "Vitamin C"
		supdur6 = "Vitamin C"
		supfrq7 = "Vitamin D"
		supdur7 = "Vitamin D"
		supfrq8 = "Vitamin E"
		supdur8 = "Vitamin E"
		supfrq9 = "Folic Acid"
		supdur9 = "Folic Acid"
		supfrq10 = "Vitamin B-6"
		supdur10 = "Vitamin B-6"
		supfrq11 = "Vitamin B-12"
		supdur11 = "Vitamin B-12"
		supfrq12 = "Calcium"
		supdur12 = "Calcium"
		supfrq13 = "Magnesium"
		supdur13 = "Magnesium"
		supfrq14 = "Potassium"
		supdur14 = "Potassium"
		supfrq15 = "Iron"
		supdur15 = "Iron"
		supfrq16 = "Selenium"
		supdur16 = "Selenium"
		supfrq17 = "Fish oil"
		supdur17 = "Fish Oil"
		supfrq18 = "Calcium containing antacids (e.g. Tums, Alka-Mints, Maalox tablets)"
		supdur18 = "Calcium containing antacids (e.g., Tums, Alka-Mints, Maalox tablets)"
		supfrq19 = "Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
		supdur19 = "Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
		open_end4 = "Are there any other supplements or highly fortified foods or beverages (not mentioned in the previous sections) that you take at least once per week? If so, please describe:"
		tufts_food_frequency_v_1 = "Complete?"
	;
	FORMAT
		sex sex_.
		age_cat age_cat_.
		frt_sadj___1 frt_sadj___1_.
		frt_sadj___2 frt_sadj___2_.
		frt_sadj___3 frt_sadj___3_.
		frt_sadj___4 frt_sadj___4_.
		frt_sadj___5 frt_sadj___5_.
		frt_sadj___6 frt_sadj___6_.
		frt_sadj___7 frt_sadj___7_.
		frt_sadj___8 frt_sadj___8_.
		fdfrq1 fdfrq1_.
		fdfrq2 fdfrq2_.
		fdfrq3 fdfrq3_.
		fdfrq4 fdfrq4_.
		fdfrq5 fdfrq5_.
		fdfrq6 fdfrq6_.
		fdfrq7 fdfrq7_.
		fdfrq8 fdfrq8_.
		fdfrq9 fdfrq9_.
		fdfrq10 fdfrq10_.
		fdfrq11 fdfrq11_.
		fdfrq12 fdfrq12_.
		fdfrq13 fdfrq13_.
		fdfrq14 fdfrq14_.
		fdfrq15 fdfrq15_.
		fdfrq16 fdfrq16_.
		fdfrq17 fdfrq17_.
		fdfrq18 fdfrq18_.
		fdfrq19 fdfrq19_.
		fdpor12 fdpor12_.
		fdpor13 fdpor13_.
		fdpor15 fdpor15_.
		fdpor16 fdpor16_.
		fdpor19 fdpor19_.
		fdfrq20 fdfrq20_.
		fdfrq22 fdfrq22_.
		fdfrq23 fdfrq23_.
		fdfrq24 fdfrq24_.
		fdfrq28 fdfrq28_.
		fdfrq29 fdfrq29_.
		fdfrq30 fdfrq30_.
		fdpor20 fdpor20_.
		fdpor21 fdpor21_.
		choice1 choice1_.
		fdpor22 fdpor22_.
		fdpor25 fdpor25_.
		fdpor29 fdpor29_.
		choice2 choice2_.
		fdpor30 fdpor30_.
		choice3 choice3_.
		open_end1 open_end1_.
		open_end2 open_end2_.
		fdfrq31 fdfrq31_.
		fdfrq32 fdfrq32_.
		fdfrq33 fdfrq33_.
		fdfrq34 fdfrq34_.
		fdfrq35 fdfrq35_.
		fdfrq36 fdfrq36_.
		fdfrq37 fdfrq37_.
		fdfrq38 fdfrq38_.
		fdfrq39 fdfrq39_.
		choice4 choice4_.
		fdpor31 fdpor31_.
		fdpor35 fdpor35_.
		fdpor36 fdpor36_.
		choice5 choice5_.
		fdpor37 fdpor37_.
		fdpor39 fdpor39_.
		fdpor40 fdpor40_.
		fdpor41 fdpor41_.
		fdfrq42 fdfrq42_.
		fdfrq43 fdfrq43_.
		fdfrq44 fdfrq44_.
		fdfrq45 fdfrq45_.
		fdfrq46 fdfrq46_.
		fdfrq47 fdfrq47_.
		fdfrq48 fdfrq48_.
		fdfrq49 fdfrq49_.
		fdfrq50 fdfrq50_.
		fdfrq51 fdfrq51_.
		fdfrq52 fdfrq52_.
		fdfrq53 fdfrq53_.
		fdfrq54 fdfrq54_.
		fdfrq55 fdfrq55_.
		fdfrq56 fdfrq56_.
		fdfrq57 fdfrq57_.
		fdfrq58 fdfrq58_.
		fdfrq59 fdfrq59_.
		fdfrq60 fdfrq60_.
		fdfrq61 fdfrq61_.
		fdfrq62 fdfrq62_.
		fdfrq63 fdfrq63_.
		fdfrq64 fdfrq64_.
		fdfrq65 fdfrq65_.
		fdfrq66 fdfrq66_.
		fdfrq67 fdfrq67_.
		choice6___1 choice6___1_.
		choice6___2 choice6___2_.
		choice6___3 choice6___3_.
		choice6___4 choice6___4_.
		fdpor42 fdpor42_.
		fdpor43 fdpor43_.
		fdpor45 fdpor45_.
		choice10___1 choice10___1_.
		choice10___2 choice10___2_.
		choice10___3 choice10___3_.
		fdpor62 fdpor62_.
		fdpor46 fdpor46_.
		choice13___1 choice13___1_.
		choice13___2 choice13___2_.
		choice13___3 choice13___3_.
		choice13___4 choice13___4_.
		choice13___5 choice13___5_.
		choice13___6 choice13___6_.
		choice13___7 choice13___7_.
		choice13___8 choice13___8_.
		choice21 choice21_.
		fdfrq68 fdfrq68_.
		fdfrq69 fdfrq69_.
		fdfrq70 fdfrq70_.
		fdfrq71 fdfrq71_.
		fdfrq72 fdfrq72_.
		fdfrq73 fdfrq73_.
		fdfrq74 fdfrq74_.
		fdfrq75 fdfrq75_.
		fdfrq76 fdfrq76_.
		fdfrq77 fdfrq77_.
		fdfrq78 fdfrq78_.
		fdfrq79 fdfrq79_.
		fdfrq80 fdfrq80_.
		fdfrq81 fdfrq81_.
		fdpor68 fdpor68_.
		choice22___1 choice22___1_.
		choice22___2 choice22___2_.
		choice22___3 choice22___3_.
		choice22___4 choice22___4_.
		fdpor69 fdpor69_.
		fdpor71 fdpor71_.
		fdpor74 fdpor74_.
		fdpor76 fdpor76_.
		choice23___1 choice23___1_.
		choice23___2 choice23___2_.
		choice23___3 choice23___3_.
		choice23___4 choice23___4_.
		fdpor79 fdpor79_.
		fdpor80 fdpor80_.
		choice27___1 choice27___1_.
		choice27___2 choice27___2_.
		choice27___3 choice27___3_.
		choice27___4 choice27___4_.
		fdfrq82 fdfrq82_.
		fdfrq83 fdfrq83_.
		fdfrq84 fdfrq84_.
		fdfrq85 fdfrq85_.
		fdfrq86 fdfrq86_.
		fdfrq87 fdfrq87_.
		fdfrq88 fdfrq88_.
		fdfrq89 fdfrq89_.
		fdfrq90 fdfrq90_.
		fdfrq91 fdfrq91_.
		fdfrq92 fdfrq92_.
		fdfrq93 fdfrq93_.
		fdfrq94 fdfrq94_.
		fdfrq95 fdfrq95_.
		fdfrq96 fdfrq96_.
		fdpor82 fdpor82_.
		fdpor86 fdpor86_.
		fdpor90 fdpor90_.
		choice31___1 choice31___1_.
		choice31___2 choice31___2_.
		choice31___3 choice31___3_.
		choice31___4 choice31___4_.
		choice31___5 choice31___5_.
		choice31___6 choice31___6_.
		choice31___7 choice31___7_.
		choice31___8 choice31___8_.
		fdpor93 fdpor93_.
		choice39___1 choice39___1_.
		choice39___2 choice39___2_.
		choice39___3 choice39___3_.
		choice39___4 choice39___4_.
		choice39___5 choice39___5_.
		fdpor94 fdpor94_.
		choice44___1 choice44___1_.
		choice44___2 choice44___2_.
		choice44___3 choice44___3_.
		choice44___4 choice44___4_.
		fdpor95 fdpor95_.
		fdpor96 fdpor96_.
		fdfrq97 fdfrq97_.
		fdfrq98 fdfrq98_.
		fdfrq99 fdfrq99_.
		fdfrq100 fdfrq100_.
		fdfrq101 fdfrq101_.
		fdfrq102 fdfrq102_.
		fdfrq103 fdfrq103_.
		fdfrq104 fdfrq104_.
		fdfrq105 fdfrq105_.
		fdfrq106 fdfrq106_.
		fdfrq107 fdfrq107_.
		fdfrq108 fdfrq108_.
		choice48 choice48_.
		choice49 choice49_.
		fdpor98 fdpor98_.
		choice50___1 choice50___1_.
		choice50___2 choice50___2_.
		fdpor99 fdpor99_.
		fdpor100 fdpor100_.
		fdpor107 fdpor107_.
		fdfrq109 fdfrq109_.
		fdfrq110 fdfrq110_.
		fdfrq111 fdfrq111_.
		fdfrq112 fdfrq112_.
		fdfrq113 fdfrq113_.
		fdfrq114 fdfrq114_.
		fdfrq115 fdfrq115_.
		fdpor110 fdpor110_.
		choice52___1 choice52___1_.
		choice52___2 choice52___2_.
		choice52___3 choice52___3_.
		fdpor111 fdpor111_.
		choice55 choice55_.
		choice56 choice56_.
		fdpor112 fdpor112_.
		fdpor114 fdpor114_.
		fdpor115 fdpor115_.
		fdfrq116 fdfrq116_.
		fdfrq117 fdfrq117_.
		fdfrq118 fdfrq118_.
		fdfrq119 fdfrq119_.
		fdfrq120 fdfrq120_.
		fdfrq121 fdfrq121_.
		fdfrq122 fdfrq122_.
		fdfrq123 fdfrq123_.
		fdfrq124 fdfrq124_.
		fdfrq125 fdfrq125_.
		fdpor117 fdpor117_.
		fdpor119 fdpor119_.
		choice57 choice57_.
		fdpor122 fdpor122_.
		fdpor124 fdpor124_.
		fdfrq126 fdfrq126_.
		fdfrq127 fdfrq127_.
		fdfrq128 fdfrq128_.
		fdfrq129 fdfrq129_.
		fdfrq130 fdfrq130_.
		fdfrq131 fdfrq131_.
		fdfrq132 fdfrq132_.
		fdfrq133 fdfrq133_.
		choice58 choice58_.
		choice59 choice59_.
		fdpor126 fdpor126_.
		choice60 choice60_.
		fdpor130 fdpor130_.
		fdpor132 fdpor132_.
		fdfrq134 fdfrq134_.
		fdfrq135 fdfrq135_.
		fdfrq136 fdfrq136_.
		fdfrq137 fdfrq137_.
		fdfrq138 fdfrq138_.
		fdfrq139 fdfrq139_.
		fdfrq140 fdfrq140_.
		fdfrq141 fdfrq141_.
		fdfrq142 fdfrq142_.
		fdfrq143 fdfrq143_.
		fdfrq144 fdfrq144_.
		fdfrq145 fdfrq145_.
		fdfrq146 fdfrq146_.
		fdfrq147 fdfrq147_.
		fdfrq148 fdfrq148_.
		fdfrq149 fdfrq149_.
		fdfrq150 fdfrq150_.
		fdfrq151 fdfrq151_.
		choice61 choice61_.
		fdpor134 fdpor134_.
		choice62 choice62_.
		choice63 choice63_.
		fdpor135 fdpor135_.
		fdpor136 fdpor136_.
		fdpor144 fdpor144_.
		fdpor149 fdpor149_.
		choice64 choice64_.
		fdfrq152 fdfrq152_.
		fdfrq153 fdfrq153_.
		fdfrq154 fdfrq154_.
		fdfrq155 fdfrq155_.
		fdfrq156 fdfrq156_.
		fdfrq157 fdfrq157_.
		fdfrq158 fdfrq158_.
		fdfrq159 fdfrq159_.
		fdpor152 fdpor152_.
		fdpor158 fdpor158_.
		fdfrq160 fdfrq160_.
		fdfrq161 fdfrq161_.
		fdfrq162 fdfrq162_.
		fdfrq163 fdfrq163_.
		fdfrq164 fdfrq164_.
		fdfrq165 fdfrq165_.
		fdfrq166 fdfrq166_.
		fdfrq167 fdfrq167_.
		fdfrq168 fdfrq168_.
		fdfrq169 fdfrq169_.
		fdfrq170 fdfrq170_.
		fdfrq171 fdfrq171_.
		fdfrq172 fdfrq172_.
		choice65 choice65_.
		fdpor160 fdpor160_.
		choice66 choice66_.
		fdpor162 fdpor162_.
		fdpor166 fdpor166_.
		choice67 choice67_.
		fdpor167 fdpor167_.
		fdpor168 fdpor168_.
		fdpor171 fdpor171_.
		fdfrq173 fdfrq173_.
		fdfrq174 fdfrq174_.
		fdfrq175 fdfrq175_.
		fdfrq176 fdfrq176_.
		fdfrq177 fdfrq177_.
		fdfrq178 fdfrq178_.
		fdfrq179 fdfrq179_.
		fdfrq180 fdfrq180_.
		fdfrq181 fdfrq181_.
		fdfrq182 fdfrq182_.
		fdfrq183 fdfrq183_.
		fdfrq184 fdfrq184_.
		fdfrq185 fdfrq185_.
		fdfrq186 fdfrq186_.
		fdfrq187 fdfrq187_.
		choice68 choice68_.
		fdpor174 fdpor174_.
		fdpor179 fdpor179_.
		choice69 choice69_.
		fdpor181 fdpor181_.
		fdpor180 fdpor180_.
		fdpor182 fdpor182_.
		fdpor185 fdpor185_.
		fdpor187 fdpor187_.
		fdfrq188 fdfrq188_.
		fdfrq189 fdfrq189_.
		fdfrq190 fdfrq190_.
		fdfrq191 fdfrq191_.
		fdfrq192 fdfrq192_.
		fdfrq193 fdfrq193_.
		fdfrq194 fdfrq194_.
		fdfrq195 fdfrq195_.
		fdfrq196 fdfrq196_.
		fdfrq197 fdfrq197_.
		fdpor188 fdpor188_.
		choice70 choice70_.
		fdpor191 fdpor191_.
		fdpor189 fdpor189_.
		choice71___1 choice71___1_.
		choice71___2 choice71___2_.
		choice71___3 choice71___3_.
		choice71___4 choice71___4_.
		choice71___5 choice71___5_.
		choice71___6 choice71___6_.
		choice71___7 choice71___7_.
		fdpor194 fdpor194_.
		fdpor197 fdpor197_.
		choice78 choice78_.
		bvfrq1 bvfrq1_.
		bvfrq2 bvfrq2_.
		bvfrq3 bvfrq3_.
		bvfrq4 bvfrq4_.
		bvfrq5 bvfrq5_.
		bvfrq6 bvfrq6_.
		bvfrq7 bvfrq7_.
		bvfrq8 bvfrq8_.
		bvfrq9 bvfrq9_.
		bvfrq10 bvfrq10_.
		bvfrq11 bvfrq11_.
		bvfrq12 bvfrq12_.
		bvfrq13 bvfrq13_.
		bvfrq14 bvfrq14_.
		bvfrq15 bvfrq15_.
		bvfrq16 bvfrq16_.
		bvfrq17 bvfrq17_.
		bvfrq18 bvfrq18_.
		bvfrq19 bvfrq19_.
		choice79 choice79_.
		bvpor1 bvpor1_.
		choice80 choice80_.
		bvpor10 bvpor10_.
		choice81 choice81_.
		choice82 choice82_.
		bvpor18 bvpor18_.
		choice83 choice83_.
		bvpor19 bvpor19_.
		bvfrq20 bvfrq20_.
		bvfrq21 bvfrq21_.
		bvfrq22 bvfrq22_.
		bvfrq23 bvfrq23_.
		bvfrq24 bvfrq24_.
		bvfrq25 bvfrq25_.
		choice84 choice84_.
		bvpor20 bvpor20_.
		bvpor22 bvpor22_.
		bvpor24 bvpor24_.
		bvfrq26 bvfrq26_.
		bvfrq27 bvfrq27_.
		bvfrq28 bvfrq28_.
		bvfrq29 bvfrq29_.
		bvfrq30 bvfrq30_.
		bvfrq31 bvfrq31_.
		bvfrq32 bvfrq32_.
		bvpor26 bvpor26_.
		choice85___1 choice85___1_.
		choice85___2 choice85___2_.
		choice85___3 choice85___3_.
		bvpor27 bvpor27_.
		c88 c88_.
		c88_2 c88_2_.
		c93 c93_.
		c93_2 c93_2_.
		choice98 choice98_.
		choice99 choice99_.
		summary1 summary1_.
		summary2___1 summary2___1_.
		summary2___2 summary2___2_.
		summary2___3 summary2___3_.
		summary2___4 summary2___4_.
		summary2___5 summary2___5_.
		summary2___6 summary2___6_.
		summary2___7 summary2___7_.
		summary2___8 summary2___8_.
		summary2___9 summary2___9_.
		summary2___10 summary2___10_.
		summary2___11 summary2___11_.
		summary2___12 summary2___12_.
		summary14 summary14_.
		summary15 summary15_.
		summary16 summary16_.
		summary17 summary17_.
		summary18 summary18_.
		summary19 summary19_.
		summary20 summary20_.
		supp_yn supp_yn_.
		supfrq1 supfrq1_.
		supdur1 supdur1_.
		supfrq2 supfrq2_.
		supdur2 supdur2_.
		supfrq3 supfrq3_.
		supdur3 supdur3_.
		supfrq4 supfrq4_.
		supdur4 supdur4_.
		supfrq5 supfrq5_.
		supdur5 supdur5_.
		supfrq6 supfrq6_.
		supdur6 supdur6_.
		supfrq7 supfrq7_.
		supdur7 supdur7_.
		supfrq8 supfrq8_.
		supdur8 supdur8_.
		supfrq9 supfrq9_.
		supdur9 supdur9_.
		supfrq10 supfrq10_.
		supdur10 supdur10_.
		supfrq11 supfrq11_.
		supdur11 supdur11_.
		supfrq12 supfrq12_.
		supdur12 supdur12_.
		supfrq13 supfrq13_.
		supdur13 supdur13_.
		supfrq14 supfrq14_.
		supdur14 supdur14_.
		supfrq15 supfrq15_.
		supdur15 supdur15_.
		supfrq16 supfrq16_.
		supdur16 supdur16_.
		supfrq17 supfrq17_.
		supdur17 supdur17_.
		supfrq18 supfrq18_.
		supdur18 supdur18_.
		supfrq19 supfrq19_.
		supdur19 supdur19_.
		tufts_food_frequency_v_1 tufts_food_frequency_v_1_.
	;
RUN;


        DATA nutr_ffq;
            SET WORK.IMPORT;
        RUN;
        