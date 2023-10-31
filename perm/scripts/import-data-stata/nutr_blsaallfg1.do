clear
import delimited "../data-csv/nutr_blsaallfg1.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit number"

label variable id_seqn "Sequence id (for REDcap imported)"

label variable _011 " Milk, Whole"

label variable _012 " Milk, Chocolate, Whole"

label variable _013 "Misc. Whole Milk & Whole Milk Products (incl. Fortified Drinks)"

label variable _01a1 " Milk, 2%"

label variable _01a2 " Milk, Chocolate, 2%"

label variable _01b1 " Milk, 1%"

label variable _01b2 " Milk, Skim"

label variable _01b3 " Milk, Chocolate, Skim"

label variable _01b4 " Milk, Chocolate, 1%"

label variable _023 " Cream, Half/Half"

label variable _02a1 " Cream, Substitiute, Powdered"

label variable _02a2 " Cream, Substitiute, Liquid"

label variable _031 " Pudding, Regular"

label variable _032 "Custard"

label variable _033 "Cheesecake"

label variable _035 " Pudding, Lowfat"

label variable _036 " Misc. Pudding, Custard, Cheesecake"

label variable _041 " Yogurt, Regular"

label variable _043 " Yogurt, Lowfat"

label variable _045 " Yogurt, Fat Free"

label variable _047 "Misc. Yogurt"

label variable _051 " Cheese, Natural"

label variable _0510 "Misc. Cheese Products"

label variable _052 " Cheese, Natural, Lowfat"

label variable _053 " Cheese, Fat Free"

label variable _054 " Cheese, Cottage, Whole"

label variable _055 " Cheese, Cottage, Low fat"

label variable _056 " Cheese, Cottage, Fat Free"

label variable _058 " Cheese, Processsed"

label variable _059 " Cheese, Processsed, Low fat"

label variable _061 " Ice Cream, Whole"

label variable _062 " Ice Cream, Low fat"

label variable _063 " Ice Cream, Fat Free"

label variable _064 " Yogurt, Frozen, Whole"

label variable _065 " Yogurt, Frozen, Low fat"

label variable _066 " Yogurt, Frozen, Fat Free"

label variable _067 " Misc. Ice Cream, Frozen Yogurt"

label variable _071 " Peanut Butter, Whole"

label variable _081 "Gelatin"

label variable _082 "Sherbet"

label variable _091 " Butter, Regular"

label variable _101 " Margarine, Reg, Stick"

label variable _1019 " Margarine-Like, Spread"

label variable _107 " Margarine, Reg, Spread, Unk"

label variable _111 " Oils, Vegetable"

label variable _1114 " Salad Dressing, Fat Free"

label variable _1115 " Salad Dressing, Regular"

label variable _1116 " Salad Dressing, Lowfat"

label variable _1117 " Oils, Olive"

label variable _1118 " Mayonnaise, Whole fat"

label variable _1119 " Mayonnaise, Low fat"

label variable _1120 " Mayonnaise, Imitation, Whole fat"

label variable _1122 " Mayonnaise, Fat Free"

label variable _114 " Shortening, Vegetable"

label variable _115 " Oils, Sesame"

label variable _117 " Oils, Corn"

label variable _119 " Oils, Canola"

label variable _121 " Cream Cheese, Whole fat"

label variable _1210 "Gravy"

label variable _122 " Cream Cheese, Light"

label variable _124 " Sour Cream, Whole"

label variable _125 " Sour Cream, Light"

label variable _126 " Sour Cream, Fat Free"

label variable _129 " Lard, Salt Pork"

label variable _131 "Oranges"

label variable _132 "Grapefruits"

label variable _133 "Misc. Other Citrus Fruits"

label variable _13b1 "Orange Juice"

label variable _13b2 "Grapefruit Juice"

label variable _13b3 "Fortified Citrus Fruit Juices"

label variable _141 "Dried Fruit"

label variable _1410 "Banana"

label variable _1411 "Mango & Papaya"

label variable _1412 "Apples and Pears"

label variable _1413 "Strawberries"

label variable _1414 "Watermelon"

label variable _1415 "Cantaloupe"

label variable _1416 "Misc. Other Fruits"

label variable _142 "Other Tropical Fruit"

label variable _143 "Kiwi"

label variable _144 "Other Berries"

label variable _145 "Avocado"

label variable _146 "Apricot"

label variable _148 "Other Melons"

label variable _14b1 "Fortified Fruit Juices W/Vit C"

label variable _14b2 "Misc. Other Fruit Juices"

label variable _14b3 "Nectar"

label variable _14c1 "Fortified Fruit Drinks"

label variable _14c2 " Misc. Fruit Drinks, Nonfortified"

label variable _15a1 " Carrots, raw"

label variable _15a2 " Sweet Potato, Yam"

label variable _15a3 "Winter Squash"

label variable _15a4 " Carrots, cooked"

label variable _15b1 " Broccoli, Brussel Sprouts"

label variable _15b2 " Mustard Greens, Turnip Greens, Collards"

label variable _15b3 " Spinach, cooked"

label variable _15b4 " Spinach, Raw"

label variable _15b5 " Mixed Greens, Leaf Lettuce"

label variable _15b6 " Lettuce, Romaine"

label variable _15c1 " Tomatoes, raw"

label variable _15c2 " Tomatoes, Canned or Cooked"

label variable _15c4 "Tomato or Vegetable Juice"

label variable _15c5 "Misc. Tomato Products (incl. Salsa)"

label variable _15d1 "Other Cruciferous (Cauliflower)"

label variable _15d12 " Radish, Raw"

label variable _15d13 "Coleslaw"

label variable _15d15 "Okra"

label variable _15d16 " Green Peas, Sweet Peas"

label variable _15d17 "Fried Onion Rings"

label variable _15d18 "Misc. Other Vegetables"

label variable _15d2 "Green Peppers"

label variable _15d3 " Allium (Onion, Shallots, Leeks)"

label variable _15d5 " Red, Yellow, Orange Peppers"

label variable _15d6 " String Beans, Green Beans"

label variable _15d7 "Corn"

label variable _15d8 " Lettuce, Iceberg"

label variable _15e1 " Potatoes, Boiled/Baked"

label variable _15e2 " Potatoes, Fried, French Fries"

label variable _15e3 " Potatoes, Mashed"

label variable _15e4 "Potato Salad"

label variable _15e5 " Potatoes, Stuffed/Twice-Baked"

label variable _15e6 "Misc. Potatoes"

label variable _161 "Green Banana"

label variable _162 "Misc. Root Crops"

label variable _171 " Beans, dried, cooked"

label variable _173 "Refried beans"

label variable _174 "Baked Beans & Pork"

label variable _176 " Cowpeas, Blackeyed"

label variable _182 "Tofu"

label variable _183 " Meat Substitute, (non-Soy)"

label variable _184 "Soymilk"

label variable _191 " Plantains, Green, Boiled/Baked"

label variable _192 " Plantains, Green, Fried"

label variable _193 " Plantains, Ripe, Boiled/Baked"

label variable _201 " Eggs, Regular"

label variable _202 "Egg Salad"

label variable _203 "Egg Substitute"

label variable _204 " Eggs, Fried"

label variable _205 " Eggs, Fast Food"

label variable _206 " Eggs, Mixed Dishes"

label variable _211 " Chicken/Turkey, Light Meat, Broil, W/Skin"

label variable _2110 " Chicken/Turkey, Dark Meat, Fried, W/Skin"

label variable _2111 " Chicken/Turkey, Dark Meat, Fried, WO/Skin"

label variable _212 " Chicken/Turkey, Light Meat, Broil, WO/Skin"

label variable _213 " Chicken/Turkey, Mixed Dishes"

label variable _214 " Chicken/Turkey, Fast Food"

label variable _215 " Chicken/Turkey, Light Meat, Fried, W/Skin"

label variable _216 " Chicken/Turkey, Light Meat, Fried, WO/Skin"

label variable _217 " Chicken/Turkey, Ground"

label variable _218 " Chicken/Turkey, Dark Meat, Broil, W/Skin"

label variable _219 " Chicken/Turkey, Dark Meat, Broil, WO/Skin"

label variable _2211 " Beef, High Fat (Eg: Shortribs)"

label variable _222 " Beef, Ground, Regular"

label variable _223 " Beef, Ground, Lean"

label variable _224 " Beef, Ground, Extra Lean"

label variable _225 " Beef, Hamburgers, Fast Food"

label variable _226 " Beef, Fried"

label variable _227 " Beef, Lean Cut or Trimmed Fat"

label variable _228 " Beef, Mixed Dishes"

label variable _231 " Pork, Regular"

label variable _232 " Pork, Mixed Dishes"

label variable _233 " Pork, Light"

label variable _235 " Pork, Fried"

label variable _237 " Pork, Ground"

label variable _239 "Misc. Pork"

label variable _241 " Lamb or Veal, Regular"

label variable _261 " Deli/Luncheon Meat, Regular"

label variable _262 " Deli/Luncheon Meat, Lean"

label variable _265 " Sausage, Hot dogs, Regular"

label variable _266 " Bacon, Breakfast Sausage"

label variable _267 " Sausage, Hot Dogs, Turkey or other Lowfat"

label variable _268 "Misc. Processed Meat (incl Mixed Dishes)"

label variable _271 " Fish, Regular"

label variable _2710 " Fish, Sardines, Other Canned Fish (Not Tuna)"

label variable _272 " Fish, Fried"

label variable _273 " Fish, Mixed Dishes"

label variable _274 " Fish, Fast Food"

label variable _275 " Fish, Tuna, canned, Oil Pack"

label variable _276 " Fish, Tuna, canned, Water Pack"

label variable _277 "Shellfish"

label variable _278 "Tunafish Salad & Sandwich"

label variable _279 "Misc. Fish"

label variable _282 " Liver, Fried"

label variable _286 "Misc. Liver & Organ Meats"

label variable _291 " Cakes, Regular"

label variable _2910 " Pies, Crisps, Cobblers"

label variable _2911 " Misc. Other Baked Goods, Regular"

label variable _2912 " Misc. Other Baked Goods, Light"

label variable _2915 "Doughnut"

label variable _2916 "Sweet Potato Pie"

label variable _2917 "Sweet Roll"

label variable _2918 " Granola Bar, Regular"

label variable _292 " Cakes, Light"

label variable _2920 " Cereal Bars, Pop Tarts"

label variable _2921 " Muffins, High Fiber"

label variable _293 " Cakes, Fat Free"

label variable _294 " Cookies, Regular"

label variable _295 " Cookies, Light"

label variable _296 " Cookies, Fat Free"

label variable _297 " Muffins, Regular"

label variable _298 " Muffins, Light"

label variable _299 " Muffins, Fat Free"

label variable _30a1 " Misc. Cold Cereals, Regular"

label variable _30a2 " Cereals, Cold, Fortified"

label variable _30a3 " Cereals, Cold, Oat/Bran"

label variable _30a4 " Misc. Cold Cereals, High Fiber"

label variable _30a5 " Cereals, Granola"

label variable _30b2 " Cereals, Hot Oatmeal, Regular, Prepared"

label variable _30b4 " Cereals, Hot Oatmeal, Instant, Fortified, Prepared"

label variable _30b6 " Cereals, Hot Cream of Wheat, Regular, Prepared"

label variable _30b7 " Cereals, Grits (Corn/Hominy), Prepared"

label variable _30b9 " Misc. Hot Breakfast Cereals, Regular"

label variable _31a1 " Breads, White Bread, Regular"

label variable _31a10 " Misc. Other breads, Not Whole Grain"

label variable _31a12 " Crackers, reduced fat"

label variable _31a2 " White Bread, Light"

label variable _31a5 " Crackers, Regular"

label variable _31a6 "Biscuits"

label variable _31a7 "Bagel"

label variable _31a8 " Pancakes, Waffles"

label variable _31a9 " Breads, Cracked Wheat"

label variable _31b1 " Breads, Whole Wheat, Regular"

label variable _31b2 " Breads, Whole Wheat, Light"

label variable _31b3 " Breads, Rye, Regular"

label variable _31b7 " Breads, Other Whole Grain"

label variable _31c1 " Breads, Cornbread or Corn Muffins"

label variable _324 " Flour, Baking Ingredients"

label variable _331 " Rice, Plain, White"

label variable _332 " Rice, Fried"

label variable _337 " Rice, Brown"

label variable _338 "Misc. Rice (incl. Yellow & Spinach Rice)"

label variable _341 " Pasta, Plain Noodles"

label variable _351 " Tortilla, Flour"

label variable _352 " Tortilla, Corn (inc whole wheat)"

label variable _353 "Mexican Dishes (incl. Burritos or Tacos W/Meat or Beans)"

label variable _354 " Turnovers, Empanadas, Eggrolls"

label variable _361 " Potato Chips, Regular"

label variable _362 " Salty Snacks, Light"

label variable _363 " Salty Snacks, Fat Free"

label variable _365 "Popcorn"

label variable _366 "Pretzels"

label variable _367 " Corn Chips, Snack Type"

label variable _371 " Pizza, Plain"

label variable _372 "Pizza W/Vegetables"

label variable _373 "Pizza W/Meat"

label variable _374 "Pizza W/Meat & Vegetables"

label variable _381 " Cola, Diet, W/Caffeine"

label variable _382 " Cola, Diet, Caffeine Free"

label variable _383 " Non-Cola, Diet"

label variable _384 "Misc. Diet Soft Drinks/Soda"

label variable _391 " Cola, W/Caffeine"

label variable _392 " Cola, Caffeine Free"

label variable _393 "Other Non-cola Soda W/Caffeine"

label variable _394 " Other Non-cola Soda, Caffeine Free"

label variable _396 "Misc. Soft Drinks/Soda"

label variable _401 " Coffee, Regular"

label variable _402 " Coffee, Decaf"

label variable _403 "Tea (Brewed or Unsweetened)"

label variable _404 " Tea, Herb"

label variable _405 " Tea, Iced"

label variable _406 " Tea, Green"

label variable _408 "Misc. Coffee & Tea"

label variable _411 " Beer, Regular"

label variable _412 " Beer, Light"

label variable _413 " Wine, Red"

label variable _414 " Wine, White"

label variable _415 "Liquor"

label variable _416 "Mixed Drinks"

label variable _417 "Misc. Alcohol"

label variable _421 "Almonds"

label variable _422 "Peanuts"

label variable _423 "Walnuts"

label variable _424 "Sunflower Seeds"

label variable _425 "Soy Nuts"

label variable _426 "Pecans"

label variable _428 "Cashews"

label variable _429 "Misc. Nuts & Seeds (incl. Coconut)"

label variable _431 " Homemade Soups, Cream Based"

label variable _4310 "Ramen Noodles"

label variable _4311 "Fish Chowder"

label variable _4312 "Misc. Soups"

label variable _432 " Homemade Soups, MW/Water"

label variable _433 " Veg & Tom Soups, Cream Based"

label variable _434 " Veg & Tom Soups, MW/Water"

label variable _435 " Other Soups, Canned W/H20"

label variable _438 " Other Canned Soups, Cream Based"

label variable _439 " Soups, Dry Cubes"

label variable _441 "Basil"

label variable _442 " Parsley, Fresh"

label variable _445 " Garlic, Powder"

label variable _446 " Garlic, Fresh"

label variable _447 "Other Herbs & Spices"

label variable _448 "Salt"

label variable _449 "Pepper"

label variable _451 " Other Candy, Regular"

label variable _452 "Syrup"

label variable _453 " Jams, Jellies"

label variable _454 " Sugar, Plain"

label variable _456 "Chocolate Candy"

label variable _457 "Misc. Candy & Sweets"

label variable _45a3 "Artificial Sugars"

label variable _461 "Mustard"

label variable _462 "Relish"

label variable _463 "All Other Condiment Misc. Food Items"

label variable _472 "Supplements - Instant Breakfast"

label variable _473 "Supplements - Breakfast Bar"

label variable _475 " Supplements - Slim Fast, Powder Prepared"

label variable _476 " Supplements - Ultra Slim Fast, Ready-to-drink"

label variable _477 "Misc. Supplements - Vitamins"

label variable _478 "Misc. Supplements - Antacids"

label variable _481 " Water, Tap "

label variable _482 " Water, Sparkling/Carbonated"

label variable _483 " Water, Mineral"

label variable _484 " Water, Spring"

