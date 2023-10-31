#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/nutr_ffq.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$tufts_food_frequency_v_0)="Survey Timestamp"
label(data$sex)="Sex"
label(data$age_cat)="Age"
label(data$protocol)="Protocol Number"
label(data$intvid)="Interviewer ID"
label(data$frt_sadj___1)="Which of the following fruits do you eat only in the summer? (choice=watermelon)"
label(data$frt_sadj___2)="Which of the following fruits do you eat only in the summer? (choice=strawberries)"
label(data$frt_sadj___3)="Which of the following fruits do you eat only in the summer? (choice=other berries)"
label(data$frt_sadj___4)="Which of the following fruits do you eat only in the summer? (choice=cantaloupe)"
label(data$frt_sadj___5)="Which of the following fruits do you eat only in the summer? (choice=honeydew)"
label(data$frt_sadj___6)="Which of the following fruits do you eat only in the summer? (choice=cherries)"
label(data$frt_sadj___7)="Which of the following fruits do you eat only in the summer? (choice=plums)"
label(data$frt_sadj___8)="Which of the following fruits do you eat only in the summer? (choice=grapes)"
label(data$fdfrq1)="Apples, applesauce, pears"
label(data$fdfrq2)="Bananas"
label(data$fdfrq3)="Oranges, tangerines"
label(data$fdfrq4)="Grapefruit (white or pink)"
label(data$fdfrq5)="Peaches, nectarines, apricots (e.g. fresh, canned, or frozen)"
label(data$fdfrq6)="Plums"
label(data$fdfrq7)="Grapes"
label(data$fdfrq8)="Avocado, fresh (incl. guacamole)"
label(data$fdfrq9)="Kiwi"
label(data$fdfrq10)="Papaya"
label(data$fdfrq11)="Mango"
label(data$fdfrq12)="Dried fruit (e.g., raisins, prunes, apricots)"
label(data$fdfrq13)="Cantaloupe"
label(data$fdfrq14)="Honeydew melon"
label(data$fdfrq15)="Watermelon"
label(data$fdfrq16)="Cherries"
label(data$fdfrq17)="Strawberries"
label(data$fdfrq18)="Other berries (e.g. blueberries, raspberries)"
label(data$fdfrq19)="Any other fruit (e.g., canned, mixed fruit, pineapple, fruit cocktail)"
label(data$fdpor12)="If you eat dried fruit, your portion is usually closest to ..."
label(data$fdpor13)="If you eat cantaloupe or honeydew, your portion is usually closest to ... (1 wedge = 1/4 melon)"
label(data$fdpor15)="If you eat watermelon, your portion is usually closest to ... (1 med. slice watermelon = 71/2'' dia x 1'' thick)"
label(data$fdpor16)="If you eat strawberries, cherries, and/or other berries, your portion is usually closest to ..."
label(data$fdpor19)="If you eat any other cut up or canned fruit, your portion is usually closest to ..."
label(data$fdfrq20)="Cold cereal (e.g. cornflakes, granola)"
label(data$fdfrq22)="Grits (hominy) or other cornmeal cereal"
label(data$fdfrq23)="Oatmeal (plain or flavored)"
label(data$fdfrq24)="Other hot cereal (e.g. Cream of Wheat/Rice)"
label(data$fdfrq28)="Sugar; added to hot or cold cereal"
label(data$fdfrq29)="Cereal or granola bars (e.g. Milk'n Cereal bars, fruit bars, Pop-Tarts)"
label(data$fdfrq30)="Meal replacement/energy bars (e.g. PowerBars, Atkins bars, Slim-Fast bars)"
label(data$fdpor20)="If you eat cold cereal, your portion is usually closest to ... (1 individual box = approx. 3/4 cup)"
label(data$fdpor21)="If you add milk to cold cereal, the amount added is usually closest to..."
label(data$choice1)="If you eat oatmeal, it is usually ..."
label(data$fdpor22)="If you eat hot cereal (e.g. oatmeal, grits or other hot cereals), your portion is usually closest to ... (1 packet = 3/4 cup cooked)"
label(data$fdpor25)="If you add milk to hot cereal (incl. during cooking), the amount added is usually closest to ..."
label(data$fdpor29)="If you eat granola bars, cereal bars, fruit bars, and/or Pop-Tarts, your portion is usually closest to..."
label(data$choice2)="If you eat meal replacement/energy bars, they are usually..."
label(data$fdpor30)="If you eat meal replacement/energy bars, your portion is usually closest to..."
label(data$choice3)="If you eat cold breakfast cereal, what types(e.g., brand name and type) do you eat most often (e.g. Kellogg's corn flakes)     *Only select this answer if you do not know that brand name. If you do know the brand name, then proceed to the next question."
label(data$open_end1)="If you eat cold breakfast cereal, what types (brand name and type) do you eat most often (first choice)?"
label(data$open_end2)="If you eat cold breakfast cereal, what type (brand name and type) do you eat most often (second choice)?"
label(data$fdfrq31)="100% whole wheat bread"
label(data$fdfrq32)="Wheat bread, not 100% whole wheat"
label(data$fdfrq33)="Multigrain, rye, pumpernickel bread"
label(data$fdfrq34)="White bread (incl. seed breads, cinnamon raisin bread)"
label(data$fdfrq35)="Bagels"
label(data$fdfrq36)="Biscuits"
label(data$fdfrq37)="Tortillas, wraps (corn, white, or wheat flour)"
label(data$fdfrq38)="Croutons, garlic bread"
label(data$fdfrq39)="Pancakes, waffles, french toast"
label(data$choice4)="If you eat bread, it is usually..."
label(data$fdpor31)="If you eat bread, your portion is usually closest to..."
label(data$fdpor35)="If you eat bagels, your portion is usually closest to ... (1 medium = Dunkin Donuts bagel)"
label(data$fdpor36)="If you eat biscuits, your portion is usually closest to... (1 medium biscuit = 3 diameter)"
label(data$choice5)="If you eat tortillas or wraps, they are usually made from..."
label(data$fdpor37)="If you eat tortillas, your portion is usually clostest... (1 medium = 8 diameter)"
label(data$fdpor39)="If you eat pancakes, waffles, and/or french toast, your portion is usually closest to ... (1 pancake/waffle = 4 diameter)"
label(data$fdpor40)="If you add butter or margarine to breads, bagels and/or pancakes, your portion per slice/piece is usually ... (1 tsp = 1 pat)"
label(data$fdpor41)="If you add cream cheese to breads and/or bagels, your portion per slice/piece is usually ..."
label(data$fdfrq42)="Salad greens (e.g. lettuce, raw spinach, mixed greens)"
label(data$fdfrq43)="Mustard greens, turnip greens, collards, leafy greens"
label(data$fdfrq44)="Spinach, cooked (not raw)"
label(data$fdfrq45)="Tomatoes, raw"
label(data$fdfrq46)="Tomatoes, canned or cooked"
label(data$fdfrq47)="Carrots, raw"
label(data$fdfrq48)="Carrots, cooked"
label(data$fdfrq49)="String beans, green beans"
label(data$fdfrq50)="Green peas, fresh, canned, or frozen"
label(data$fdfrq51)="Corn, fresh, canned, or frozen"
label(data$fdfrq52)="Peppers (sweet)"
label(data$fdfrq53)="Broccoli, brussel sprouts, fresh or frozen"
label(data$fdfrq54)="Cauliflower"
label(data$fdfrq55)="Coleslaw"
label(data$fdfrq56)="Green cabbage (other than coleslaw)"
label(data$fdfrq57)="Red cabbage"
label(data$fdfrq58)="Beets"
label(data$fdfrq59)="Asparagus"
label(data$fdfrq60)="Mushrooms"
label(data$fdfrq61)="Eggplant"
label(data$fdfrq62)="Fried onion rings"
label(data$fdfrq63)="Onions or leeks (other than fried onion rings)"
label(data$fdfrq64)="Winter squash (e.g., butternut, acorn, hubbard)"
label(data$fdfrq65)="Summer squash (e.g., yellow zucchini)"
label(data$fdfrq66)="Okra"
label(data$fdfrq67)="Other vegetables (e.g., cucumbers, celery, radish)"
label(data$choice6___1)="If you eat salad greens, they are usually ... (choose all that apply) (choice=Iceberg lettuce)"
label(data$choice6___2)="If you eat salad greens, they are usually ... (choose all that apply) (choice=Romaince lettuce)"
label(data$choice6___3)="If you eat salad greens, they are usually ... (choose all that apply) (choice=Spinach (raw))"
label(data$choice6___4)="If you eat salad greens, they are usually ... (choose all that apply) (choice=Other greens, mixed greens/mesclun)"
label(data$fdpor42)="If you eat salad greens, your portion is usually closest to ..."
label(data$fdpor43)="If you eat cooked greens (e.g. mustard greens, turnip greens, collards, spinach) your portion is usually closest to ..."
label(data$fdpor45)="If you eat raw tomatoes, your portion is usually closest to ... (1 cherry tomato = approx. 1 slice or wedge)"
label(data$choice10___1)="If you eat peppers, they are usually (choose all that apply) ... (choice=sweet green)"
label(data$choice10___2)="If you eat peppers, they are usually (choose all that apply) ... (choice=sweet red)"
label(data$choice10___3)="If you eat peppers, they are usually (choose all that apply) ... (choice=sweet yellow or orange)"
label(data$fdpor62)="If you eat fried onion rings, your portion is usually closest to..."
label(data$fdpor46)="Your usual portion size for most cooked vegetables is closest to ..."
label(data$choice13___1)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Carrots)"
label(data$choice13___2)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=String beans)"
label(data$choice13___3)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Peas)"
label(data$choice13___4)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Corn)"
label(data$choice13___5)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Broccoli)"
label(data$choice13___6)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cauliflower)"
label(data$choice13___7)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Cabbage)"
label(data$choice13___8)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Squash)"
label(data$choice21)="If you add spreads or oils to any of the previous items after cooking, your portion is usually... (1 teaspoon = 1 pat)"
label(data$fdfrq68)="Chili (with or without meat)"
label(data$fdfrq69)="Beans (e.g., pinto, black, white, kidney, lima)"
label(data$fdfrq70)="Peas, not green (e.g. cowpeas or black-eyed)"
label(data$fdfrq71)="Tofu, soy burgers, or meat-substitutes"
label(data$fdfrq72)="Potato salad"
label(data$fdfrq73)="Mashed or scalloped potatoes"
label(data$fdfrq74)="Fast food french fries"
label(data$fdfrq75)="Homemade french fries, hash browns (incl. frozen, restaurant)"
label(data$fdfrq76)="Fast food stuffed baked potato"
label(data$fdfrq77)="Other potatoes (e.e., baked, boiled, roasted)"
label(data$fdfrq78)="Sweet potatoes, yams"
label(data$fdfrq79)="Plantains, green bananas"
label(data$fdfrq80)="Pasteles"
label(data$fdfrq81)="Root crops (e.g., cassava, name, yautia, tannier)"
label(data$fdpor68)="If you eat chili, your portion is usually closest to..."
label(data$choice22___1)="If you eat beans, they are usually prepared ... (choose all that apply) (choice=plain, unseasoned)"
label(data$choice22___2)="If you eat beans, they are usually prepared ... (choose all that apply) (choice=Puerto Rican style)"
label(data$choice22___3)="If you eat beans, they are usually prepared ... (choose all that apply) (choice=baked)"
label(data$choice22___4)="If you eat beans, they are usually prepared ... (choose all that apply) (choice=refried)"
label(data$fdpor69)="If you eat beans (plain, baked, refried or other) and/or peas, your portion is usually closest to ..."
label(data$fdpor71)="If you eat tofu, soy burgers, or soy meat substitute, your portion is usually closest to... (1 burger = approx. 3 ounces)"
label(data$fdpor74)="If you eat french fries, home fries, and/or hash browns, your portion is usually closest to..."
label(data$fdpor76)="If you eat potatoes (other than fried) and/or root crops, your portion is usually closest to ..."
label(data$choice23___1)="If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, boiled/baked)"
label(data$choice23___2)="If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Green, fried)"
label(data$choice23___3)="If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, boiled/baked)"
label(data$choice23___4)="If you eat plantains and/or green bananas, they are usually (choose all that apply) ... (choice=Ripe, fried)"
label(data$fdpor79)="If you eat plantains and/or green bananas, your portion is usually closest to ..."
label(data$fdpor80)="If you eat pasteles, your portion is usually closest to ..."
label(data$choice27___1)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Potatoes)"
label(data$choice27___2)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Sweet potatoes)"
label(data$choice27___3)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Plantains)"
label(data$choice27___4)="Do you add spreads or oils to the following items after cooking? (choose all that apply) (choice=Other root crops)"
label(data$fdfrq82)="Rice cooked with beans or pigeon peas (mixed dish)"
label(data$fdfrq83)="Rice with beef or pork"
label(data$fdfrq84)="Rice with chicken"
label(data$fdfrq85)="Other mixed dishes with rice (incl. Jambalaya)"
label(data$fdfrq86)="Fried rice (incl. Chinese style)"
label(data$fdfrq87)="Flavored rice (e.g. Rice-a-Roni, Spanish, rice pilaf)"
label(data$fdfrq88)="White rice"
label(data$fdfrq89)="Brown rice"
label(data$fdfrq90)="Pasta (e.g. spaghetti, macaroni, linguini)"
label(data$fdfrq91)="Pasta mixed dishes (e.g. lasagna, ravioli, baked ziti)"
label(data$fdfrq92)="Lo mein or rice noodles (incl. Chinese style)"
label(data$fdfrq93)="Macaroni salad, pasta salad"
label(data$fdfrq94)="Mexican foods (e.g. burritos, tacos, tamales, enchiladas)"
label(data$fdfrq95)="Pizza"
label(data$fdfrq96)="Eggrolls, turnovers"
label(data$fdpor82)="If you eat mixed dishes made with rice, your portion is usually closest to ..."
label(data$fdpor86)="If you eat plain, fried or flavored rice, your portion (cooked) is usually closest to ..."
label(data$fdpor90)="If you eat pasta or mixed pasta dishes (e.g. lasagna), your portion is usually closest to ..."
label(data$choice31___1)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Plain (no sauce))"
label(data$choice31___2)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Butter and/or olive oil)"
label(data$choice31___3)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce (no meat))"
label(data$choice31___4)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Tomato or spaghetti sauce with meat)"
label(data$choice31___5)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Clam sauce)"
label(data$choice31___6)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Pesto sauce)"
label(data$choice31___7)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cream sauce)"
label(data$choice31___8)="What type of sauce do you usually eat with your pasta? (choose all that apply) (choice=Cheese sauce (e.g. macaroni and cheese))"
label(data$fdpor93)="If you eat macaroni salad or pasta salad, your portion is usually closest to ..."
label(data$choice39___1)="If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Burritos)"
label(data$choice39___2)="If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tacos)"
label(data$choice39___3)="If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Tamales)"
label(data$choice39___4)="If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Enchiladas)"
label(data$choice39___5)="If you eat Mexican foods, they are usually (choose all that apply) ... (choice=Quesadillas)"
label(data$fdpor94)="If you eat Mexican foods (incl. burritos, tacos, tamales, enchiladas), your portion is usually closest to ..."
label(data$choice44___1)="If you eat pizza, it is usually ... (choice=Plain cheese)"
label(data$choice44___2)="If you eat pizza, it is usually ... (choice=With meat)"
label(data$choice44___3)="If you eat pizza, it is usually ... (choice=With vegetables)"
label(data$choice44___4)="If you eat pizza, it is usually ... (choice=With vegetables and meat)"
label(data$fdpor95)="If you eat pizza, your portion is usually closest to ... (1 slice = 1/8 of a large pizza)"
label(data$fdpor96)="If you eat eggrolls and/or turnovers, your portion is usually closest to ..."
label(data$fdfrq97)="Fast food burgers"
label(data$fdfrq98)="Ground beef (including homemade patty, meatballs, meatloaf)"
label(data$fdfrq99)="Mixed dishes with beef or pork (e.g. beef stew, pot pies)"
label(data$fdfrq100)="Beef: steak or roast"
label(data$fdfrq101)="Ground pork"
label(data$fdfrq102)="Pork: chops or roast"
label(data$fdfrq103)="Mixed dishes with pork"
label(data$fdfrq104)="Ham (not including cold cuts/luncheon meat)"
label(data$fdfrq105)="Ribs: beef or pork"
label(data$fdfrq106)="Lamb: chops or leg"
label(data$fdfrq107)="Liver (beef)"
label(data$fdfrq108)="Other organ meats (e.g. tongue, kidney, chitterlings)"
label(data$choice48)="If you eat fast food burgers, they are usually ... (If you add cheese to the burger, indicate below the corresponding item)"
label(data$choice49)="If you eat homemade patties and/or ground beef or pork (including meatloaf), the meat is usually ..."
label(data$fdpor98)="If you eat homemade patties and/or ground beef or pork, your portion is usually closest to ..."
label(data$choice50___1)="If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=American style)"
label(data$choice50___2)="If you eat mixed dishes made with beef or pork (e.g. beef stew), you usually prepare it ... (choose all that apply) (choice=Puerto Rican style)"
label(data$fdpor99)="If you eat mixed dishes with beef or pork (incl. meat pies), your portion is usually closest to ..."
label(data$fdpor100)="If you eat beef, pork or lamb, your portion is usually closest to (edible portion) ... (3 oz. is about the size of 1 deck of cards)"
label(data$fdpor107)="If you eat liver and/or other organ meats, your portion is usually closest to ..."
label(data$fdfrq109)="Fast food chicken"
label(data$fdfrq110)="Ground chicken/turkey (including homemade patty, meatballs, and/or meatloaf)"
label(data$fdfrq111)="Mixed dishes made with chicken (e.g. pot pie, chicken and dumplings, chicken stew)"
label(data$fdfrq112)="Chicken or turkey: roasted, broiled, grilled, baked"
label(data$fdfrq113)="Fried chicken (including fast food nuggets, KFC)"
label(data$fdfrq114)="Chicken or turkey salad"
label(data$fdfrq115)="Liver (chicken)"
label(data$fdpor110)="If you eat homemade patties and/or ground chicken/turkey (including meatloaf), your portion is usually closest to ..."
label(data$choice52___1)="If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=American style)"
label(data$choice52___2)="If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=Puerto Rican style)"
label(data$choice52___3)="If you eat mixed dishes with chicken/turkey, you usually prepare it (choose all that apply) ... (choice=other)"
label(data$fdpor111)="If you eat other mixed dishes with chicken/turkey (incl. meat pies), your portion is usually closest to ..."
label(data$choice55)="If you eat chicken or turkey, roasted, broiled, grilled and/or baked, it is usually ..."
label(data$choice56)="Do you eat the skin on chicken or turkey?"
label(data$fdpor112)="If you eat chicken or turkey, roasted, baked, and/or fried, your portion is usually closest to (edible portion) ..."
label(data$fdpor114)="If you eat chicken salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
label(data$fdpor115)="If you eat chicken liver, your portion is usually closest to ..."
label(data$fdfrq116)="Fast food fish sandwich"
label(data$fdfrq117)="Shellfish, fried (e.g. fried clams, shrimp, scallops)"
label(data$fdfrq118)="Shellfish, not fried (e.g. lobster, scallops, shrimp, clams)"
label(data$fdfrq119)="Fish, fried (e.g. battered and fried fillets)"
label(data$fdfrq120)="Salmon (fresh or canned)"
label(data$fdfrq121)="Tuna (fresh or canned, not tuna salad)"
label(data$fdfrq122)="Tuna salad (incl. in a sandwich, sub or wrap)"
label(data$fdfrq123)="Bacalao (salted cod fish)"
label(data$fdfrq124)="Sardines"
label(data$fdfrq125)="Other fish, not fried (e.g. halibut, cod, haddock, sole)"
label(data$fdpor117)="If you eat shellfish, your portion is usually closest to ..."
label(data$fdpor119)="If you eat fish, your portion is usually closest to (1 fillet = approx. 3 ounces) ..."
label(data$choice57)="If you eat canned tuna and/or other canned fish, it is usually"
label(data$fdpor122)="If you eat tuna salad, your portion is usually closest to (1/2 cup prepared = approx. 1/2 of a 6 ounce can & 2 tbsp. mayonnaise) ..."
label(data$fdpor124)="If you eat sardines, your portion is usually closest to (1 can = 3.5 ounces) ..."
label(data$fdfrq126)="Chicken or turkey cold cuts (luncheon meat)"
label(data$fdfrq127)="Roast beef cold cuts (luncheon meat)"
label(data$fdfrq128)="Ham cold cuts (luncheon meat)"
label(data$fdfrq129)="Other luncheon meats (e.g. Salami, Bologna)"
label(data$fdfrq130)="Hot dogs"
label(data$fdfrq131)="Sausage (not breakfast type)"
label(data$fdfrq132)="Breakfast sausage"
label(data$fdfrq133)="Bacon, beef jerky (e.g., Slim Jim, Big Jerk)"
label(data$choice58)="If you eat luncheon meat, it is usually ..."
label(data$choice59)="Do you add cheese to your luncheon meat sandwiches?"
label(data$fdpor126)="If you eat luncheon meat, your portion is usually closest to ..."
label(data$choice60)="If you eat hot dogs, bacon and/or sausage they are usually ..."
label(data$fdpor130)="If you eat hot dogs and/or sausage your portion is usually closest to ..."
label(data$fdpor132)="If you eat bacon, beef jerky and/or breakfast sausage, your portion is usually closest to ..."
label(data$fdfrq134)="Mayonnaise or tartar sauce (added to sandwiches or used as dip)"
label(data$fdfrq135)="Salad dressing"
label(data$fdfrq136)="Sour cream"
label(data$fdfrq137)="Cranberry sauce"
label(data$fdfrq138)="Soy sauce, teriyaki sauce, barbeque sauce"
label(data$fdfrq139)="Ketchup"
label(data$fdfrq140)="Mustard"
label(data$fdfrq141)="Sauerkraut"
label(data$fdfrq142)="Pickles, relish, horseradish"
label(data$fdfrq143)="Olives"
label(data$fdfrq144)="Garlic, fresh or powder"
label(data$fdfrq145)="Sweet & sour sauce, duck sauce"
label(data$fdfrq146)="Salsa"
label(data$fdfrq147)="Hot peppers (e.g. jalapeno)"
label(data$fdfrq148)="Green tomato or green chile sauce"
label(data$fdfrq149)="Gravy or white sauce (on meat, potatoes, rice and/or biscuits)"
label(data$fdfrq150)="Lemon, lime; wedge or juice"
label(data$fdfrq151)="Herbs, fresh or dried (e.g. cilantro)"
label(data$choice61)="If you use mayonnaise or sour cream, it is usually ..."
label(data$fdpor134)="If you use mayonnaise or sour cream, your portion is usually closest to ..."
label(data$choice62)="If you use salad dressing, it is usually ..."
label(data$choice63)="If you use salad dressing, it is usually ..."
label(data$fdpor135)="If you use salad dressing, your portion is usually closest to ..."
label(data$fdpor136)="If you use sauces, ketchup, mustard and/or relish, your portion is usually closest to ..."
label(data$fdpor144)="If you use salsa, hot peppers and/or duck sauce, your portion is usually closest to ..."
label(data$fdpor149)="If you use gravy or white sauce, your portion is usually closest to ..."
label(data$choice64)="If you cook with garlic and/or herbs, you use mostly ..."
label(data$fdfrq152)="New England clam or fish chowder (cream-based)"
label(data$fdfrq153)="Manhattan clam chowder (tomato-based)"
label(data$fdfrq154)="Other cream-based soup (e.g. corn chowder, cream of vegetable)"
label(data$fdfrq155)="Bean, pea or lentil soup"
label(data$fdfrq156)="Other homemade or home-style soup, with meat or chicken (e.g. gumbo)"
label(data$fdfrq157)="Other homemade or home-style soup, without meat"
label(data$fdfrq158)="Chicken noodle, ramen noodle and/or chicken rice soup; canned or instant"
label(data$fdfrq159)="Vegetable and/or tomato based soup; canned or instant (e.g. veg. beef, minestrone)"
label(data$fdpor152)="If you eat homemade or home-style soup, with or without meat, your portion is usually closest to ..."
label(data$fdpor158)="If you eat canned soup, your portion (prepared amount) is usually closest to ..."
label(data$fdfrq160)="Milk, plain (including soymilk; as beverage, not in cereal or coffee/tea)"
label(data$fdfrq161)="Chocolate or flavored milk"
label(data$fdfrq162)="Cheese, hard (e.g. cheddar, parmesan, swiss)"
label(data$fdfrq163)="Cheese, processed (American slices, Velveeta)"
label(data$fdfrq164)="Cheese, soft (e.g. feta, mozzarella, brie, farmer's)"
label(data$fdfrq165)="Cheese spreads or dips"
label(data$fdfrq166)="Cottage cheese"
label(data$fdfrq167)="Yogurt (not frozen)"
label(data$fdfrq168)="Egg substitute"
label(data$fdfrq169)="Eggs (e.g. soft or hard-boiled)"
label(data$fdfrq170)="Eggs (e.g. fried, scrambled, omelets)"
label(data$fdfrq171)="Egg salad (incl. in a sandwich, sub or wrap)"
label(data$fdfrq172)="Fast food egg sandwich"
label(data$choice65)="If you drink milk and/or flavored milk, it is usually ..."
label(data$fdpor160)="If you drink milk and/or flavored milk, your portion is usually closest to ..."
label(data$choice66)="If you eat cheese, it is usually ..."
label(data$fdpor162)="If you eat cheese, your portion is usually closest to ..."
label(data$fdpor166)="If you eat cottage cheese, your portion is usually closest to ..."
label(data$choice67)="If you eat yogurt, it is usually ..."
label(data$fdpor167)="If you eat yogurt, your portion is usually closest to (1 yogurt container = 1 cup) ..."
label(data$fdpor168)="If you eat eggs and/or egg substitute, your portion is usually closest to ... (1/4 cup raw egg substitute = 1 egg)"
label(data$fdpor171)="If you eat egg salad, your portion is usually closest to ..."
label(data$fdfrq173)="Fast food shakes"
label(data$fdfrq174)="Ice cream"
label(data$fdfrq175)="Frozen yogurt"
label(data$fdfrq176)="Sherbet"
label(data$fdfrq177)="Jell-O, sorbet, popsicles"
label(data$fdfrq178)="Pudding, custard (flan), cheesecake"
label(data$fdfrq179)="Doughnuts, Danish"
label(data$fdfrq180)="Cookies (homemade or store-bought; e.g. Oreos, Chips-A-Hoy)"
label(data$fdfrq181)="Quick breads, muffins (e.g. corn bread, blueberry or bran muffin)"
label(data$fdfrq182)="Cakes, brownies, sweet rolls"
label(data$fdfrq183)="Sweet potato pie, pumpkin pie"
label(data$fdfrq184)="Fruit pies, cobblers, crisps (including fast food pies)"
label(data$fdfrq185)="Chocolate candy"
label(data$fdfrq186)="Other candy"
label(data$fdfrq187)="Jelly, jam, honey, syrup"
label(data$choice68)="If you eat ice cream, frozen yogurt and/or pudding, it is usually ..."
label(data$fdpor174)="If you eat ice cream, frozen yogurt, sherbet, Jell-O and/or pudding, your portion is usually closest to ..."
label(data$fdpor179)="If you eat doughnuts, your portion is usually closest to ..."
label(data$choice69)="If you eat cakes, cookies, sweet rolls and/or muffins, they are usually ..."
label(data$fdpor181)="If you eat quick bread or muffins, your portion is usually closest to ..."
label(data$fdpor180)="If you eat cookies, your portion is usually closest to (1 medium cookie = approx. 2 1/4 dia) ..."
label(data$fdpor182)="If you eat cake, sweet rolls and/or pie, your portion is usually closest to ..."
label(data$fdpor185)="If you eat chocolate candy and/or other candy, your portion is usually closest to ..."
label(data$fdpor187)="If you use jelly, jam, honey, and/or syrup, your portion is usually closest to ..."
label(data$fdfrq188)="Potato chips (all types)"
label(data$fdfrq189)="Crackers, matzo"
label(data$fdfrq190)="Tortilla chips, corn chips (including Doritos, Fritos)"
label(data$fdfrq191)="Popcorn"
label(data$fdfrq192)="Rice Cakes"
label(data$fdfrq193)="Pretzels"
label(data$fdfrq194)="Coconut meat, dried and sweetened"
label(data$fdfrq195)="Nuts (incl. peanuts, walnuts, cashews, pistachios)"
label(data$fdfrq196)="Sunflower seeds"
label(data$fdfrq197)="Peanut butter"
label(data$fdpor188)="If you eat chips (potato or corn), your portion is usually closest to (1 ounce = approx. 28 chips or 1 snack-size bag) ..."
label(data$choice70)="If you eat popcorn, it is usually ..."
label(data$fdpor191)="If you eat popcorn, your portion is usually closest to ..."
label(data$fdpor189)="If you eat crackers, your portion is usually closest to ..."
label(data$choice71___1)="If you eat nuts, they are usually (choose all that apply) ... (choice=Peanuts)"
label(data$choice71___2)="If you eat nuts, they are usually (choose all that apply) ... (choice=Walnuts)"
label(data$choice71___3)="If you eat nuts, they are usually (choose all that apply) ... (choice=Almonds)"
label(data$choice71___4)="If you eat nuts, they are usually (choose all that apply) ... (choice=Pecans)"
label(data$choice71___5)="If you eat nuts, they are usually (choose all that apply) ... (choice=Cashews)"
label(data$choice71___6)="If you eat nuts, they are usually (choose all that apply) ... (choice=Pistachios)"
label(data$choice71___7)="If you eat nuts, they are usually (choose all that apply) ... (choice=Mixed Nuts)"
label(data$fdpor194)="If you eat nuts and/or seeds, your portion (without shells) is usually closest to (2 tablespoons = approx. 1 ounce) ..."
label(data$fdpor197)="If you eat peanut butter, your portion is usually closest to ..."
label(data$choice78)="If you eat snacks, they are usually ..."
label(data$bvfrq1)="Orange juice (100% juice, not fruit drinks)"
label(data$bvfrq2)="Grapefruit juice (100% juice)"
label(data$bvfrq3)="Prune Juice"
label(data$bvfrq4)="Tomato or vegetable juice (e.g.V-8)"
label(data$bvfrq5)="Grape juice (100% juice)"
label(data$bvfrq6)="Apple juice (100% juice)"
label(data$bvfrq7)="Cranberry juice (including cranberry juice cocktail)"
label(data$bvfrq8)="Nectars (e.g. peach, pear, guava, mango)"
label(data$bvfrq9)="Other 100% fruit juices and/or blends"
label(data$bvfrq10)="Fortified fruit drinks (e.g. Sunny Delight, Hi-C)"
label(data$bvfrq11)="Non-fortified fruit drinks (e.g. lemonade, Kool-aid)"
label(data$bvfrq12)="Soft drinks, regular (e.g. cola, 7-up, ginger ale)"
label(data$bvfrq13)="Soft drinks, diet"
label(data$bvfrq14)="Sports drinks or energy drinks (e.g. Gatorade, Powerade, Red Bull)"
label(data$bvfrq15)="Bottled or powdered iced tea, pre-sweetened (not fresh brewed)"
label(data$bvfrq16)="Bottled or powdered iced tea, unsweetened or diet (not fresh brewed)"
label(data$bvfrq17)="Non-alcoholic beer (e.g. Malta)"
label(data$bvfrq18)="Meal replacement beverages (e.g. Slim-Fast, Atkins)"
label(data$bvfrq19)="Water (including tap, filtered, bottled)"
label(data$choice79)="If you drink 100% orange juice, it is usually..."
label(data$bvpor1)="If you drink fruit juice and/or vegetable juices, your portion is usually closest to (8 fl. ounces = 1 cup) ..."
label(data$choice80)="If you drink soft drinks, regular or diet, they are usually ..."
label(data$bvpor10)="If you drink soft drinks and/or other cold beverages (including fruit drinks, sports drinks), your portion (before adding ice) is usually closest to (1 can = 12 fl. ounce) ..."
label(data$choice81)="Do you add ice to your soft drinks?"
label(data$choice82)="If you drink meal replacement beverages or shakes, they are usually ..."
label(data$bvpor18)="If you drink meal replacement beverages or shakes, your portion is usually closest to ..."
label(data$choice83)="If you drink water, it is usually ..."
label(data$bvpor19)="If you drink water, your portion is usually closest to (8 fl. ounces = 1 cup; 1 liter = 33 fl. ounces) ..."
label(data$bvfrq20)="Beer"
label(data$bvfrq21)="Wine coolers"
label(data$bvfrq22)="Wine (red)"
label(data$bvfrq23)="Wine (white)"
label(data$bvfrq24)="Mixed drinks"
label(data$bvfrq25)="Other alcohol (e.g., whiskey, vodka, brandy)"
label(data$choice84)="If you drink beer, it is usually..."
label(data$bvpor20)="If you drink beer or wine coolers, your portion is usually closest to... (1 can or bottle = 12 fl ounces)"
label(data$bvpor22)="If you drink wine, your portion is usually closest to... (1 glass = 4 fl ounces)"
label(data$bvpor24)="If you drink mixed drinks and/or other alcohol, your portion is usually closest to... (1 drink = 1 1/2 fl ounces or 1 shot)"
label(data$bvfrq26)="Hot chocolate, cocoa"
label(data$bvfrq27)="Coffee (regular)"
label(data$bvfrq28)="Coffee (decaffeinated)"
label(data$bvfrq29)="Pre-sweetened coffee drinks (e.g., Dunkin Donut's Coffee Coolatta, Starbuck's Frappuccino)"
label(data$bvfrq30)="Herbal or green tea (hot or fresh-brewed iced)"
label(data$bvfrq31)="Black tea (regular, hot or fresh-brewed iced)"
label(data$bvfrq32)="Black tea (decaffeinated, hot of fresh-brewed iced)"
label(data$bvpor26)="If you drink hot chocolate or cocoa, your portion is usually closest to ..."
label(data$choice85___1)="If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=regular ground)"
label(data$choice85___2)="If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=espresso)"
label(data$choice85___3)="If you drink coffee, it is usually prepared with (choose all that apply) ... (choice=instant)"
label(data$bvpor27)="If you drink coffee or tea, your portion (including milk/cream) is usually closest to ..."
label(data$c88)="If you add sugar to coffee, it is usually(choose one)?..."
label(data$c88_2)="If you add sugar to tea, it is usually(choose one)?..."
label(data$c93)="If you add milk or cream to coffee, it is usually prepared.."
label(data$c93_2)="If you add milk or cream to tea, it is usually prepared..."
label(data$choice98)="If you add milk or cream to coffee and/or tea, it is usually (choose one) ..."
label(data$choice99)="If you add cream substitute (liquid or powder) to coffee and/or tea, it is usually..."
label(data$summary1)="How often do you add salt to your food at the table?"
label(data$summary2___1)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=stick margarine)"
label(data$summary2___2)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=lard, salt pork or bacon fat)"
label(data$summary2___3)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like)"
label(data$summary2___4)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=canola oil)"
label(data$summary2___5)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=other vegetable oil)"
label(data$summary2___6)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=tub margarine)"
label(data$summary2___7)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=spread, light)"
label(data$summary2___8)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=shortening)"
label(data$summary2___9)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=margarine-like spread)"
label(data$summary2___10)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=butter)"
label(data$summary2___11)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=olive oil)"
label(data$summary2___12)="If you add spreads or oil during cooking (incl. vegetables, rice, pasta and/or beans), they are usually (specify one or two only) ... (choice=corn oil)"
label(data$summary14)="Not including lettuce or potatoes, how often do you eat vegetables?"
label(data$summary15)="Not including juices, how often do you eat fruit?"
label(data$summary16)="How often do you eat out (incl. restaurants, fast food and/or take-out)?"
label(data$summary17)="Do you follow a specific diet regimen (e.g., kosher, vegetarian)?"
label(data$summary18)="Where do you usually eat breakfast?"
label(data$summary19)="Where do you usually eat lunch?"
label(data$summary20)="Where do you usually eat dinner?"
label(data$open_end3)="Are there any other foods that you eat at least once per week (not mentioned in the previous sections)? If so, please describe:"
label(data$supp_yn)="Do you currently take any vitamin or mineral supplements or antacids?"
label(data$supfrq1)="Multi-vitamin (e.g. Centrum, One-A-Day)"
label(data$supdur1)="Multi-vitamin (e.g., Centrum, One-A-Day)"
label(data$supfrq2)="Senior formula"
label(data$supdur2)="Senior formula"
label(data$supfrq3)="Stress tabs or B-complex"
label(data$supdur3)="Stress tabs or B-complex"
label(data$supfrq4)="Calcium/Vitamin D or bone complex (e.g. Oscal)"
label(data$supdur4)="Calcium/Vitamin D or bone complex (e.g., Oscal)"
label(data$supfrq5)="Vitamin A"
label(data$supdur5)="Vitamin A"
label(data$supfrq6)="Vitamin C"
label(data$supdur6)="Vitamin C"
label(data$supfrq7)="Vitamin D"
label(data$supdur7)="Vitamin D"
label(data$supfrq8)="Vitamin E"
label(data$supdur8)="Vitamin E"
label(data$supfrq9)="Folic Acid"
label(data$supdur9)="Folic Acid"
label(data$supfrq10)="Vitamin B-6"
label(data$supdur10)="Vitamin B-6"
label(data$supfrq11)="Vitamin B-12"
label(data$supdur11)="Vitamin B-12"
label(data$supfrq12)="Calcium"
label(data$supdur12)="Calcium"
label(data$supfrq13)="Magnesium"
label(data$supdur13)="Magnesium"
label(data$supfrq14)="Potassium"
label(data$supdur14)="Potassium"
label(data$supfrq15)="Iron"
label(data$supdur15)="Iron"
label(data$supfrq16)="Selenium"
label(data$supdur16)="Selenium"
label(data$supfrq17)="Fish oil"
label(data$supdur17)="Fish Oil"
label(data$supfrq18)="Calcium containing antacids (e.g. Tums, Alka-Mints, Maalox tablets)"
label(data$supdur18)="Calcium containing antacids (e.g., Tums, Alka-Mints, Maalox tablets)"
label(data$supfrq19)="Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
label(data$supdur19)="Other antacids (e.g. Mylanta, Rolaids, D-Gel)"
label(data$open_end4)="Are there any other supplements or highly fortified foods or beverages (not mentioned in the previous sections) that you take at least once per week? If so, please describe:"
label(data$tufts_food_frequency_v_1)="Complete?"

#Create new variables for factors
data$sex.factor = factor(data$sex, levels = c("2","1"))
levels(data$sex.factor) = c("Female","Male")

data$age_cat.factor = factor(data$age_cat, levels = c("5","4","3","2","1"))
levels(data$age_cat.factor) = c(">80","71-80","51-70","31-50","19-30")

data$frt_sadj___1.factor = factor(data$frt_sadj___1, levels = c("1","0"))
levels(data$frt_sadj___1.factor) = c("Checked","Unchecked")

data$frt_sadj___2.factor = factor(data$frt_sadj___2, levels = c("0","1"))
levels(data$frt_sadj___2.factor) = c("Unchecked","Checked")

data$frt_sadj___3.factor = factor(data$frt_sadj___3, levels = c("0","1"))
levels(data$frt_sadj___3.factor) = c("Unchecked","Checked")

data$frt_sadj___4.factor = factor(data$frt_sadj___4, levels = c("0","1"))
levels(data$frt_sadj___4.factor) = c("Unchecked","Checked")

data$frt_sadj___5.factor = factor(data$frt_sadj___5, levels = c("0","1"))
levels(data$frt_sadj___5.factor) = c("Unchecked","Checked")

data$frt_sadj___6.factor = factor(data$frt_sadj___6, levels = c("0","1"))
levels(data$frt_sadj___6.factor) = c("Unchecked","Checked")

data$frt_sadj___7.factor = factor(data$frt_sadj___7, levels = c("0","1"))
levels(data$frt_sadj___7.factor) = c("Unchecked","Checked")

data$frt_sadj___8.factor = factor(data$frt_sadj___8, levels = c("0","1"))
levels(data$frt_sadj___8.factor) = c("Unchecked","Checked")

data$fdfrq1.factor = factor(data$fdfrq1, levels = c("3","5","6","4","2","1","8","7","0","9"))
levels(data$fdfrq1.factor) = c("2-3x per month","2x per week","3-4x per week","1x per week","1x per month","< 1x per month","1x per day","5-6x per week","Never","2+x per day")

data$fdfrq2.factor = factor(data$fdfrq2, levels = c("6","5","8","3","4","7","0","1","2","9"))
levels(data$fdfrq2.factor) = c("3-4x per week","2x per week","1x per day","2-3x per month","1x per week","5-6x per week","Never","< 1x per month","1x per month","2+x per day")

data$fdfrq3.factor = factor(data$fdfrq3, levels = c("3","1","4","2","5","0","6","8","7","9"))
levels(data$fdfrq3.factor) = c("2-3x per month","< 1x per month","1x per week","1x per month","2x per week","Never","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq4.factor = factor(data$fdfrq4, levels = c("0","1","2","3","4","6","5","8","7","9"))
levels(data$fdfrq4.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","3-4x per week","2x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq5.factor = factor(data$fdfrq5, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq5.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq6.factor = factor(data$fdfrq6, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq6.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq7.factor = factor(data$fdfrq7, levels = c("3","1","2","4","5","6","0","7","8","9"))
levels(data$fdfrq7.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","2x per week","3-4x per week","Never","5-6x per week","1x per day","2+x per day")

data$fdfrq8.factor = factor(data$fdfrq8, levels = c("0","3","1","4","2","5","6","7","8","9"))
levels(data$fdfrq8.factor) = c("Never","2-3x per month","< 1x per month","1x per week","1x per month","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq9.factor = factor(data$fdfrq9, levels = c("0","1","2","3","4","5","6","8","9","7"))
levels(data$fdfrq9.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","2+x per day","5-6x per week")

data$fdfrq10.factor = factor(data$fdfrq10, levels = c("0","1","2","3","4","5","8","6","7","9"))
levels(data$fdfrq10.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","1x per day","3-4x per week","5-6x per week","2+x per day")

data$fdfrq11.factor = factor(data$fdfrq11, levels = c("0","1","2","3","5","4","6","7","8","9"))
levels(data$fdfrq11.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq12.factor = factor(data$fdfrq12, levels = c("1","3","0","2","5","6","4","8","7","9"))
levels(data$fdfrq12.factor) = c("< 1x per month","2-3x per month","Never","1x per month","2x per week","3-4x per week","1x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq13.factor = factor(data$fdfrq13, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq13.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq14.factor = factor(data$fdfrq14, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq14.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq15.factor = factor(data$fdfrq15, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq15.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq16.factor = factor(data$fdfrq16, levels = c("1","2","3","0","4","5","6","7","8","9"))
levels(data$fdfrq16.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq17.factor = factor(data$fdfrq17, levels = c("3","2","4","5","1","6","0","7","8","9"))
levels(data$fdfrq17.factor) = c("2-3x per month","1x per month","1x per week","2x per week","< 1x per month","3-4x per week","Never","5-6x per week","1x per day","2+x per day")

data$fdfrq18.factor = factor(data$fdfrq18, levels = c("3","1","6","5","2","4","8","0","7","9"))
levels(data$fdfrq18.factor) = c("2-3x per month","< 1x per month","3-4x per week","2x per week","1x per month","1x per week","1x per day","Never","5-6x per week","2+x per day")

data$fdfrq19.factor = factor(data$fdfrq19, levels = c("1","0","3","2","4","5","6","8","7","9"))
levels(data$fdfrq19.factor) = c("< 1x per month","Never","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdpor12.factor = factor(data$fdpor12, levels = c("1","2","4","3"))
levels(data$fdpor12.factor) = c("1/8 CUP","1/4 CUP","1/2 CUP or more","3/8 CUP")

data$fdpor13.factor = factor(data$fdpor13, levels = c("2","1","3","4"))
levels(data$fdpor13.factor) = c("1 wedge or 3/4 CUP","1/2 wedge or 1/2 CUP","1 1/2 wedges or 1 CUP","2 or more wedges or 1 1/2 cups or more")

data$fdpor15.factor = factor(data$fdpor15, levels = c("2","3","1","4"))
levels(data$fdpor15.factor) = c("1 med. slice/wedge","1 lg.slice/wedge","1 sm. slice or 1/2 wedge","> 1 lg. slice/wedge")

data$fdpor16.factor = factor(data$fdpor16, levels = c("1","2","3","4"))
levels(data$fdpor16.factor) = c("1/2 cup","1 cup","1&1/2cups","2 cups or more")

data$fdpor19.factor = factor(data$fdpor19, levels = c("1","2","3","4"))
levels(data$fdpor19.factor) = c("1/2 cup","1 cup","1&1/2cups","2 cups or more")

data$fdfrq20.factor = factor(data$fdfrq20, levels = c("1","0","6","8","3","5","7","4","2","9"))
levels(data$fdfrq20.factor) = c("< 1x per month","Never","3-4x per week","1x per day","2-3x per month","2x per week","5-6x per week","1x per week","1x per month","2+x per day")

data$fdfrq22.factor = factor(data$fdfrq22, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq22.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq23.factor = factor(data$fdfrq23, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq23.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq24.factor = factor(data$fdfrq24, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq24.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq28.factor = factor(data$fdfrq28, levels = c("0","1","3","2","5","4","6","8","7","9"))
levels(data$fdfrq28.factor) = c("Never","< 1x per month","2-3x per month","1x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq29.factor = factor(data$fdfrq29, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq29.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq30.factor = factor(data$fdfrq30, levels = c("0","1","3","2","5","4","6","8","7","9"))
levels(data$fdfrq30.factor) = c("Never","< 1x per month","2-3x per month","1x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdpor20.factor = factor(data$fdpor20, levels = c("2","3","1","4"))
levels(data$fdpor20.factor) = c("3/4 cup","1&1/2cups","1/2 cup","2 cups or more")

data$fdpor21.factor = factor(data$fdpor21, levels = c("2","1","3","4"))
levels(data$fdpor21.factor) = c("1/2 cup","1/4 cup","1 cup","1&1/2cups")

data$choice1.factor = factor(data$choice1, levels = c("1","2","3"))
levels(data$choice1.factor) = c("regular/old-fashioned","quick","instant/fortified")

data$fdpor22.factor = factor(data$fdpor22, levels = c("2","1","3","4"))
levels(data$fdpor22.factor) = c("3/4 cup","1/2 cup","1&1/2cups","2 cups or more")

data$fdpor25.factor = factor(data$fdpor25, levels = c("1","2","3","4"))
levels(data$fdpor25.factor) = c("1/4 cup","1/2 cup","1 cup","1&1/2cups")

data$fdpor29.factor = factor(data$fdpor29, levels = c("2","1","4","3"))
levels(data$fdpor29.factor) = c("1 bar","1/2 bar","2 bars or more","1&1/2 bars")

data$choice2.factor = factor(data$choice2, levels = c("2","1","3"))
levels(data$choice2.factor) = c("low-carb/high protein (e.g., Atkins)","high-carb/low fat (e.g., PowerBars)","low-calorie/ weight loss (e.g., Slim-Fast)")

data$fdpor30.factor = factor(data$fdpor30, levels = c("2","1","4","3"))
levels(data$fdpor30.factor) = c("1 bar","1/2 bar","2 bars or more","1 1/2 bars")

data$choice3.factor = factor(data$choice3, levels = c("1"))
levels(data$choice3.factor) = c("Do not know brand name")

data$open_end1.factor = factor(data$open_end1, levels = c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78"))
levels(data$open_end1.factor) = c("Default cereal","All Bran Cereal (Kelloggs)","Alpha-Bits","Apple Cinnamon Cheerios","Apple Jacks (Kelloggs)","Banana Nut Crunch Cereal (Post)","Basic 4 Cereal","Bran cereal 100% (Nabisco)","Bran Chex","Capn Crunch","Cheerios (General Mills)","Cocoa Krispies","Cocoa Pebbles","Cocoa Puffs","Complete Oat Bran Flakes (Kelloggs)","Complete Wheat Bran Flakes (Kelloggs)","Cookie-Crisp","Corn Chex Cereal (Ralston)","Corn Flakes (Kelloggs)","Corn Pops","Cracklin Oat Bran (Kelloggs)","Crispix Cereal (Kelloggs)","Crispy Rice","Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)","Fiber One (General Mills)","Frosted Cheerios","Frosted Flakes (Kelloggs)","Frosted Mini Wheat Cereal (Kelloggs)","Fruit And Fiber Dates Raisins and Walnuts (Post)","Fruit Loops (Kelloggs)","Fruity Pebbles","Golden Grahams","Golden Sugar Crisps (Post)","Grape-nut Flakes Cereal (Post)","Great Grains Raisin Date and Pecan (Post)","Honey Bunches of Oats","Honey Bunches of Oats with Almonds (Post)","Honey Graham Ohs Cereal","Honey Graham Ohs cereal (Quaker)","Honey Nut Cheerios","Honey Nut Oat Rings","Honey Nut Oats (Quaker)","Honey Smacks","Honeycomb Cereal (Post)","Just right Fruit & Nut cereal (Kelloggs)","King Vitamin","Kix","Life (Cinnamon)","Life (Plain)","Lucky Charms","Malt-O-Meal Corn Bursts","Malt-O-Meal Golden Puffs (formerly Sugar Puffs)","Mueslix Apple And Almond Crunch (Kelloggs)","Multi Bran Chex Cereal","Multi Grain Cheerios (Kelloggs)","Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)","Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kelloggs)","Oat Bran Flakes (Health Valley)","Oatmeal Crisp with Almonds","Oatmeal Crisp with Apple Cinnamon (General Mills)","Oatmeal Crisp with Raisin (General Mills)","Product 19 (Kelloggs)","Raisin Bran (Post)","Raisin Square Cereal","Reeses Peanut Butter Puffs Cereal","Rice Chex","Rice Krispies","Shredded Wheat 100%","Special K (Kelloggs)","Sweet Puffs Quaker","Toasted Oat Cereal (Quaker)","Total Corn Flakes","Total Raisin Bran (General Mills)","Trix","Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kelloggs)","Wheat Chex","Wheat Puffed Plain","Wheaties Cereal")

data$open_end2.factor = factor(data$open_end2, levels = c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78"))
levels(data$open_end2.factor) = c("Default cereal","All Bran Cereal (Kelloggs)","Alpha-Bits","Apple Cinnamon Cheerios","Apple Jacks (Kelloggs)","Banana Nut Crunch Cereal (Post)","Basic 4 Cereal","Bran cereal 100% (Nabisco)","Bran Chex","Capn Crunch","Cheerios (General Mills)","Cocoa Krispies","Cocoa Pebbles","Cocoa Puffs","Complete Oat Bran Flakes (Kelloggs)","Complete Wheat Bran Flakes (Kelloggs)","Cookie-Crisp","Corn Chex Cereal (Ralston)","Corn Flakes (Kelloggs)","Corn Pops","Cracklin Oat Bran (Kelloggs)","Crispix Cereal (Kelloggs)","Crispy Rice","Fat-free Honey Cluster Flakes Apple Cinnamon (Healthy valley)","Fiber One (General Mills)","Frosted Cheerios","Frosted Flakes (Kelloggs)","Frosted Mini Wheat Cereal (Kelloggs)","Fruit And Fiber Dates Raisins and Walnuts (Post)","Fruit Loops (Kelloggs)","Fruity Pebbles","Golden Grahams","Golden Sugar Crisps (Post)","Grape-nut Flakes Cereal (Post)","Great Grains Raisin Date and Pecan (Post)","Honey Bunches of Oats","Honey Bunches of Oats with Almonds (Post)","Honey Graham Ohs Cereal","Honey Graham Ohs cereal (Quaker)","Honey Nut Cheerios","Honey Nut Oat Rings","Honey Nut Oats (Quaker)","Honey Smacks","Honeycomb Cereal (Post)","Just right Fruit & Nut cereal (Kelloggs)","King Vitamin","Kix","Life (Cinnamon)","Life (Plain)","Lucky Charms","Malt-O-Meal Corn Bursts","Malt-O-Meal Golden Puffs (formerly Sugar Puffs)","Mueslix Apple And Almond Crunch (Kelloggs)","Multi Bran Chex Cereal","Multi Grain Cheerios (Kelloggs)","Natural Cereal with Oats Honey and Raisins 100% (Grist Mill)","Nutri-Grain Biscuits Whole Grain Shredded Wheat (Kelloggs)","Oat Bran Flakes (Health Valley)","Oatmeal Crisp with Almonds","Oatmeal Crisp with Apple Cinnamon (General Mills)","Oatmeal Crisp with Raisin (General Mills)","Product 19 (Kelloggs)","Raisin Bran (Post)","Raisin Square Cereal","Reeses Peanut Butter Puffs Cereal","Rice Chex","Rice Krispies","Shredded Wheat 100%","Special K (Kelloggs)","Sweet Puffs Quaker","Toasted Oat Cereal (Quaker)","Total Corn Flakes","Total Raisin Bran (General Mills)","Trix","Wheat Bran Flakes 40% - Now Called Complete Bran Flakes (Kelloggs)","Wheat Chex","Wheat Puffed Plain","Wheaties Cereal")

data$fdfrq31.factor = factor(data$fdfrq31, levels = c("0","1","5","3","6","4","2","8","7","9"))
levels(data$fdfrq31.factor) = c("Never","< 1x per month","2x per week","2-3x per month","3-4x per week","1x per week","1x per month","1x per day","5-6x per week","2+x per day")

data$fdfrq32.factor = factor(data$fdfrq32, levels = c("0","1","3","2","4","5","6","7","8","9"))
levels(data$fdfrq32.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq33.factor = factor(data$fdfrq33, levels = c("0","1","3","4","2","5","6","8","7","9"))
levels(data$fdfrq33.factor) = c("Never","< 1x per month","2-3x per month","1x per week","1x per month","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq34.factor = factor(data$fdfrq34, levels = c("0","1","2","3","5","4","6","8","7","9"))
levels(data$fdfrq34.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq35.factor = factor(data$fdfrq35, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq35.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq36.factor = factor(data$fdfrq36, levels = c("1","0","2","3","4","5","8","6","7","9"))
levels(data$fdfrq36.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","1x per day","3-4x per week","5-6x per week","2+x per day")

data$fdfrq37.factor = factor(data$fdfrq37, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq37.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq38.factor = factor(data$fdfrq38, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq38.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq39.factor = factor(data$fdfrq39, levels = c("1","2","0","3","4","5","6","8","7","9"))
levels(data$fdfrq39.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$choice4.factor = factor(data$choice4, levels = c("1","2","3","4"))
levels(data$choice4.factor) = c("regular/commercial","homemade/bakery","light/reduced calorie","low carb")

data$fdpor31.factor = factor(data$fdpor31, levels = c("2","1","3","4"))
levels(data$fdpor31.factor) = c("2 slices or pieces","1 slice or piece","3 slices or pieces","4 slices or pieces or more")

data$fdpor35.factor = factor(data$fdpor35, levels = c("2","1","3","4"))
levels(data$fdpor35.factor) = c("1 medium","1/2 medium","1 large","2 medium or more")

data$fdpor36.factor = factor(data$fdpor36, levels = c("2","1","3","4"))
levels(data$fdpor36.factor) = c("1 medium","1/2 medium","1 large","2 medium or more")

data$choice5.factor = factor(data$choice5, levels = c("2","1","3","4"))
levels(data$choice5.factor) = c("corn flour","white flour","whole wheat flour","other")

data$fdpor37.factor = factor(data$fdpor37, levels = c("1","2","3","4"))
levels(data$fdpor37.factor) = c("1 medium","2 medium or 1 large","3 medium","4 medium or 2 large or more")

data$fdpor39.factor = factor(data$fdpor39, levels = c("2","3","1","4"))
levels(data$fdpor39.factor) = c("2 pancakes, waffles or slices of french toast","3 pancakes, waffles or slices of french toast","1 pancake, waffle or slice of french toast","4 pancakes, waffles or slices of french toast or more")

data$fdpor40.factor = factor(data$fdpor40, levels = c("2","1","3","4"))
levels(data$fdpor40.factor) = c("1 pat","1/2 pat","1&1/2 pats","2 pats or more")

data$fdpor41.factor = factor(data$fdpor41, levels = c("1","2","3","4"))
levels(data$fdpor41.factor) = c("1 tablespoon","2 tablespoons","3 tablespoons","4 tablespoons or more")

data$fdfrq42.factor = factor(data$fdfrq42, levels = c("6","7","5","8","3","4","2","0","9","1"))
levels(data$fdfrq42.factor) = c("3-4x per week","5-6x per week","2x per week","1x per day","2-3x per month","1x per week","1x per month","Never","2+x per day","< 1x per month")

data$fdfrq43.factor = factor(data$fdfrq43, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq43.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq44.factor = factor(data$fdfrq44, levels = c("3","1","2","4","0","5","6","7","8","9"))
levels(data$fdfrq44.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq45.factor = factor(data$fdfrq45, levels = c("6","5","3","4","7","8","2","0","1","9"))
levels(data$fdfrq45.factor) = c("3-4x per week","2x per week","2-3x per month","1x per week","5-6x per week","1x per day","1x per month","Never","< 1x per month","2+x per day")

data$fdfrq46.factor = factor(data$fdfrq46, levels = c("3","1","4","2","0","5","6","8","7","9"))
levels(data$fdfrq46.factor) = c("2-3x per month","< 1x per month","1x per week","1x per month","Never","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq47.factor = factor(data$fdfrq47, levels = c("3","6","4","1","5","2","0","7","8","9"))
levels(data$fdfrq47.factor) = c("2-3x per month","3-4x per week","1x per week","< 1x per month","2x per week","1x per month","Never","5-6x per week","1x per day","2+x per day")

data$fdfrq48.factor = factor(data$fdfrq48, levels = c("1","3","2","4","0","5","6","7","8","9"))
levels(data$fdfrq48.factor) = c("< 1x per month","2-3x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq49.factor = factor(data$fdfrq49, levels = c("3","4","2","5","1","0","6","7","8","9"))
levels(data$fdfrq49.factor) = c("2-3x per month","1x per week","1x per month","2x per week","< 1x per month","Never","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq50.factor = factor(data$fdfrq50, levels = c("3","1","2","4","0","5","6","7","8","9"))
levels(data$fdfrq50.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq51.factor = factor(data$fdfrq51, levels = c("3","2","1","4","5","0","6","7","8","9"))
levels(data$fdfrq51.factor) = c("2-3x per month","1x per month","< 1x per month","1x per week","2x per week","Never","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq52.factor = factor(data$fdfrq52, levels = c("3","4","0","2","1","5","6","7","8","9"))
levels(data$fdfrq52.factor) = c("2-3x per month","1x per week","Never","1x per month","< 1x per month","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq53.factor = factor(data$fdfrq53, levels = c("4","3","5","6","2","0","1","7","8","9"))
levels(data$fdfrq53.factor) = c("1x per week","2-3x per month","2x per week","3-4x per week","1x per month","Never","< 1x per month","5-6x per week","1x per day","2+x per day")

data$fdfrq54.factor = factor(data$fdfrq54, levels = c("3","1","2","4","0","5","6","7","8","9"))
levels(data$fdfrq54.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq55.factor = factor(data$fdfrq55, levels = c("1","2","3","0","4","5","6","8","7","9"))
levels(data$fdfrq55.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq56.factor = factor(data$fdfrq56, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq56.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq57.factor = factor(data$fdfrq57, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq57.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq58.factor = factor(data$fdfrq58, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq58.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq59.factor = factor(data$fdfrq59, levels = c("1","3","2","4","0","5","6","7","9","8"))
levels(data$fdfrq59.factor) = c("< 1x per month","2-3x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","2+x per day","1x per day")

data$fdfrq60.factor = factor(data$fdfrq60, levels = c("3","1","0","2","4","5","6","7","8","9"))
levels(data$fdfrq60.factor) = c("2-3x per month","< 1x per month","Never","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq61.factor = factor(data$fdfrq61, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq61.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq62.factor = factor(data$fdfrq62, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq62.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq63.factor = factor(data$fdfrq63, levels = c("3","6","5","4","0","1","2","7","8","9"))
levels(data$fdfrq63.factor) = c("2-3x per month","3-4x per week","2x per week","1x per week","Never","< 1x per month","1x per month","5-6x per week","1x per day","2+x per day")

data$fdfrq64.factor = factor(data$fdfrq64, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq64.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq65.factor = factor(data$fdfrq65, levels = c("3","1","2","0","4","5","6","7","8","9"))
levels(data$fdfrq65.factor) = c("2-3x per month","< 1x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq66.factor = factor(data$fdfrq66, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq66.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq67.factor = factor(data$fdfrq67, levels = c("3","6","5","4","2","7","1","0","8","9"))
levels(data$fdfrq67.factor) = c("2-3x per month","3-4x per week","2x per week","1x per week","1x per month","5-6x per week","< 1x per month","Never","1x per day","2+x per day")

data$choice6___1.factor = factor(data$choice6___1, levels = c("0","1"))
levels(data$choice6___1.factor) = c("Unchecked","Checked")

data$choice6___2.factor = factor(data$choice6___2, levels = c("1","0"))
levels(data$choice6___2.factor) = c("Checked","Unchecked")

data$choice6___3.factor = factor(data$choice6___3, levels = c("1","0"))
levels(data$choice6___3.factor) = c("Checked","Unchecked")

data$choice6___4.factor = factor(data$choice6___4, levels = c("1","0"))
levels(data$choice6___4.factor) = c("Checked","Unchecked")

data$fdpor42.factor = factor(data$fdpor42, levels = c("2","3","4","1"))
levels(data$fdpor42.factor) = c("1 cup","1 1/2 cups","2 cups or more","1/2 cup")

data$fdpor43.factor = factor(data$fdpor43, levels = c("2","3","4","1"))
levels(data$fdpor43.factor) = c("1/2 cup","3/4 cup","1 cup or more","1/4 cup")

data$fdpor45.factor = factor(data$fdpor45, levels = c("2","3","4","1"))
levels(data$fdpor45.factor) = c("2 slices or wedges","3 slices or wedges","4 slices or wedges or more","1 slice or wedge")

data$choice10___1.factor = factor(data$choice10___1, levels = c("1","0"))
levels(data$choice10___1.factor) = c("Checked","Unchecked")

data$choice10___2.factor = factor(data$choice10___2, levels = c("1","0"))
levels(data$choice10___2.factor) = c("Checked","Unchecked")

data$choice10___3.factor = factor(data$choice10___3, levels = c("1","0"))
levels(data$choice10___3.factor) = c("Checked","Unchecked")

data$fdpor62.factor = factor(data$fdpor62, levels = c("1","2","3","4"))
levels(data$fdpor62.factor) = c("sm order (1/2 cup)","med order (1 cup)","lg order (1 1/2 cups)","supersize (2 cups)")

data$fdpor46.factor = factor(data$fdpor46, levels = c("2","3","4","1"))
levels(data$fdpor46.factor) = c("1/2 cup","3/4 cup","1 cup or more","1/4 cup")

data$choice13___1.factor = factor(data$choice13___1, levels = c("0","1"))
levels(data$choice13___1.factor) = c("Unchecked","Checked")

data$choice13___2.factor = factor(data$choice13___2, levels = c("0","1"))
levels(data$choice13___2.factor) = c("Unchecked","Checked")

data$choice13___3.factor = factor(data$choice13___3, levels = c("0","1"))
levels(data$choice13___3.factor) = c("Unchecked","Checked")

data$choice13___4.factor = factor(data$choice13___4, levels = c("0","1"))
levels(data$choice13___4.factor) = c("Unchecked","Checked")

data$choice13___5.factor = factor(data$choice13___5, levels = c("0","1"))
levels(data$choice13___5.factor) = c("Unchecked","Checked")

data$choice13___6.factor = factor(data$choice13___6, levels = c("0","1"))
levels(data$choice13___6.factor) = c("Unchecked","Checked")

data$choice13___7.factor = factor(data$choice13___7, levels = c("0","1"))
levels(data$choice13___7.factor) = c("Unchecked","Checked")

data$choice13___8.factor = factor(data$choice13___8, levels = c("0","1"))
levels(data$choice13___8.factor) = c("Unchecked","Checked")

data$choice21.factor = factor(data$choice21, levels = c("1","2","3","4","9","5","6","7","8"))
levels(data$choice21.factor) = c("1","2","3","4","9","5","6","7","8")

data$fdfrq68.factor = factor(data$fdfrq68, levels = c("1","2","0","3","4","5","9","6","8","7"))
levels(data$fdfrq68.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","2+x per day","3-4x per week","1x per day","5-6x per week")

data$fdfrq69.factor = factor(data$fdfrq69, levels = c("3","2","1","0","4","5","6","7","8","9"))
levels(data$fdfrq69.factor) = c("2-3x per month","1x per month","< 1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq70.factor = factor(data$fdfrq70, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq70.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq71.factor = factor(data$fdfrq71, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq71.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq72.factor = factor(data$fdfrq72, levels = c("1","2","0","3","4","5","6","8","7","9"))
levels(data$fdfrq72.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq73.factor = factor(data$fdfrq73, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq73.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq74.factor = factor(data$fdfrq74, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq74.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq75.factor = factor(data$fdfrq75, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq75.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq76.factor = factor(data$fdfrq76, levels = c("0","1","2","3","5","4","6","7","8","9"))
levels(data$fdfrq76.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq77.factor = factor(data$fdfrq77, levels = c("3","2","1","4","0","5","6","7","8","9"))
levels(data$fdfrq77.factor) = c("2-3x per month","1x per month","< 1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq78.factor = factor(data$fdfrq78, levels = c("3","2","1","4","0","5","6","7","8","9"))
levels(data$fdfrq78.factor) = c("2-3x per month","1x per month","< 1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq79.factor = factor(data$fdfrq79, levels = c("0","1","2","3","4","5","7","9","6","8"))
levels(data$fdfrq79.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","5-6x per week","2+x per day","3-4x per week","1x per day")

data$fdfrq80.factor = factor(data$fdfrq80, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq80.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq81.factor = factor(data$fdfrq81, levels = c("0","1","2","3","4","5","7","6","8","9"))
levels(data$fdfrq81.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","5-6x per week","3-4x per week","1x per day","2+x per day")

data$fdpor68.factor = factor(data$fdpor68, levels = c("2","3","1","4"))
levels(data$fdpor68.factor) = c("1 cup","1 1/2 cups","1/2 cup","2 cups or more")

data$choice22___1.factor = factor(data$choice22___1, levels = c("0","1"))
levels(data$choice22___1.factor) = c("Unchecked","Checked")

data$choice22___2.factor = factor(data$choice22___2, levels = c("0","1"))
levels(data$choice22___2.factor) = c("Unchecked","Checked")

data$choice22___3.factor = factor(data$choice22___3, levels = c("0","1"))
levels(data$choice22___3.factor) = c("Unchecked","Checked")

data$choice22___4.factor = factor(data$choice22___4, levels = c("0","1"))
levels(data$choice22___4.factor) = c("Unchecked","Checked")

data$fdpor69.factor = factor(data$fdpor69, levels = c("1","2","3","4"))
levels(data$fdpor69.factor) = c("1/2 cup","1 cup","1 1/2 cups","2 cups or more")

data$fdpor71.factor = factor(data$fdpor71, levels = c("1","2","3","4"))
levels(data$fdpor71.factor) = c("3 ounces","6 ounces","9 ounces","12 ounces or more")

data$fdpor74.factor = factor(data$fdpor74, levels = c("1","2","3","4"))
levels(data$fdpor74.factor) = c("1/2 cup (sm. order)","1 cup (med. order)","1 1/2 cups (lg. order)","2 cups (super size)")

data$fdpor76.factor = factor(data$fdpor76, levels = c("2","1","3","4"))
levels(data$fdpor76.factor) = c("1 cup","1/2 cup","1 1/2 cups","2 cups or more")

data$choice23___1.factor = factor(data$choice23___1, levels = c("0","1"))
levels(data$choice23___1.factor) = c("Unchecked","Checked")

data$choice23___2.factor = factor(data$choice23___2, levels = c("0","1"))
levels(data$choice23___2.factor) = c("Unchecked","Checked")

data$choice23___3.factor = factor(data$choice23___3, levels = c("0","1"))
levels(data$choice23___3.factor) = c("Unchecked","Checked")

data$choice23___4.factor = factor(data$choice23___4, levels = c("0","1"))
levels(data$choice23___4.factor) = c("Unchecked","Checked")

data$fdpor79.factor = factor(data$fdpor79, levels = c("2","1","3","4"))
levels(data$fdpor79.factor) = c("1/2 plantain or 3 slices","1/4 plantain or 1 slice","1 plantain or 6 slices","1 1/2 plantains or 9 slices or more")

data$fdpor80.factor = factor(data$fdpor80, levels = c("1","2","3","4"))
levels(data$fdpor80.factor) = c("1 each","2 each","3 each","4 each or more")

data$choice27___1.factor = factor(data$choice27___1, levels = c("0","1"))
levels(data$choice27___1.factor) = c("Unchecked","Checked")

data$choice27___2.factor = factor(data$choice27___2, levels = c("0","1"))
levels(data$choice27___2.factor) = c("Unchecked","Checked")

data$choice27___3.factor = factor(data$choice27___3, levels = c("0","1"))
levels(data$choice27___3.factor) = c("Unchecked","Checked")

data$choice27___4.factor = factor(data$choice27___4, levels = c("0","1"))
levels(data$choice27___4.factor) = c("Unchecked","Checked")

data$fdfrq82.factor = factor(data$fdfrq82, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq82.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq83.factor = factor(data$fdfrq83, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq83.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq84.factor = factor(data$fdfrq84, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq84.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq85.factor = factor(data$fdfrq85, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq85.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq86.factor = factor(data$fdfrq86, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq86.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq87.factor = factor(data$fdfrq87, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq87.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq88.factor = factor(data$fdfrq88, levels = c("1","0","3","2","4","5","6","8","7","9"))
levels(data$fdfrq88.factor) = c("< 1x per month","Never","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq89.factor = factor(data$fdfrq89, levels = c("1","3","0","2","4","5","6","7","8","9"))
levels(data$fdfrq89.factor) = c("< 1x per month","2-3x per month","Never","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq90.factor = factor(data$fdfrq90, levels = c("3","2","4","1","0","5","6","7","8","9"))
levels(data$fdfrq90.factor) = c("2-3x per month","1x per month","1x per week","< 1x per month","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq91.factor = factor(data$fdfrq91, levels = c("1","2","3","0","4","5","6","7","8","9"))
levels(data$fdfrq91.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq92.factor = factor(data$fdfrq92, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq92.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq93.factor = factor(data$fdfrq93, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq93.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq94.factor = factor(data$fdfrq94, levels = c("1","0","2","3","4","5","9","6","7","8"))
levels(data$fdfrq94.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","2+x per day","3-4x per week","5-6x per week","1x per day")

data$fdfrq95.factor = factor(data$fdfrq95, levels = c("1","3","2","0","4","5","6","8","7","9"))
levels(data$fdfrq95.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq96.factor = factor(data$fdfrq96, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq96.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdpor82.factor = factor(data$fdpor82, levels = c("1","2","3","4"))
levels(data$fdpor82.factor) = c("1 cup","2 cups","3 cups","4 cups or more")

data$fdpor86.factor = factor(data$fdpor86, levels = c("1","2","3","4"))
levels(data$fdpor86.factor) = c("1/2 cup","1 cup","1 1/2 cups","2 cups or more")

data$fdpor90.factor = factor(data$fdpor90, levels = c("1","2","3","4"))
levels(data$fdpor90.factor) = c("1 cup","2 cups","3 cups","4 cups or more")

data$choice31___1.factor = factor(data$choice31___1, levels = c("0","1"))
levels(data$choice31___1.factor) = c("Unchecked","Checked")

data$choice31___2.factor = factor(data$choice31___2, levels = c("0","1"))
levels(data$choice31___2.factor) = c("Unchecked","Checked")

data$choice31___3.factor = factor(data$choice31___3, levels = c("1","0"))
levels(data$choice31___3.factor) = c("Checked","Unchecked")

data$choice31___4.factor = factor(data$choice31___4, levels = c("1","0"))
levels(data$choice31___4.factor) = c("Checked","Unchecked")

data$choice31___5.factor = factor(data$choice31___5, levels = c("0","1"))
levels(data$choice31___5.factor) = c("Unchecked","Checked")

data$choice31___6.factor = factor(data$choice31___6, levels = c("0","1"))
levels(data$choice31___6.factor) = c("Unchecked","Checked")

data$choice31___7.factor = factor(data$choice31___7, levels = c("0","1"))
levels(data$choice31___7.factor) = c("Unchecked","Checked")

data$choice31___8.factor = factor(data$choice31___8, levels = c("0","1"))
levels(data$choice31___8.factor) = c("Unchecked","Checked")

data$fdpor93.factor = factor(data$fdpor93, levels = c("1","2","3","4"))
levels(data$fdpor93.factor) = c("1/2 cup","1 cup","1 1/2 cups","2 cups or more")

data$choice39___1.factor = factor(data$choice39___1, levels = c("0","1"))
levels(data$choice39___1.factor) = c("Unchecked","Checked")

data$choice39___2.factor = factor(data$choice39___2, levels = c("1","0"))
levels(data$choice39___2.factor) = c("Checked","Unchecked")

data$choice39___3.factor = factor(data$choice39___3, levels = c("0","1"))
levels(data$choice39___3.factor) = c("Unchecked","Checked")

data$choice39___4.factor = factor(data$choice39___4, levels = c("0","1"))
levels(data$choice39___4.factor) = c("Unchecked","Checked")

data$choice39___5.factor = factor(data$choice39___5, levels = c("0","1"))
levels(data$choice39___5.factor) = c("Unchecked","Checked")

data$fdpor94.factor = factor(data$fdpor94, levels = c("2","1","3","4"))
levels(data$fdpor94.factor) = c("2 each","1 each","3 each","4 each or more")

data$choice44___1.factor = factor(data$choice44___1, levels = c("0","1"))
levels(data$choice44___1.factor) = c("Unchecked","Checked")

data$choice44___2.factor = factor(data$choice44___2, levels = c("0","1"))
levels(data$choice44___2.factor) = c("Unchecked","Checked")

data$choice44___3.factor = factor(data$choice44___3, levels = c("0","1"))
levels(data$choice44___3.factor) = c("Unchecked","Checked")

data$choice44___4.factor = factor(data$choice44___4, levels = c("0","1"))
levels(data$choice44___4.factor) = c("Unchecked","Checked")

data$fdpor95.factor = factor(data$fdpor95, levels = c("2","3","1","4"))
levels(data$fdpor95.factor) = c("2 slices","3 slices","1 slice","4 slices or more")

data$fdpor96.factor = factor(data$fdpor96, levels = c("1","2","3","4"))
levels(data$fdpor96.factor) = c("1 each","2 each","3 each","4 each or more")

data$fdfrq97.factor = factor(data$fdfrq97, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq97.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq98.factor = factor(data$fdfrq98, levels = c("3","2","1","0","4","5","6","7","8","9"))
levels(data$fdfrq98.factor) = c("2-3x per month","1x per month","< 1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq99.factor = factor(data$fdfrq99, levels = c("1","2","3","0","4","5","6","7","8","9"))
levels(data$fdfrq99.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq100.factor = factor(data$fdfrq100, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq100.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq101.factor = factor(data$fdfrq101, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq101.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq102.factor = factor(data$fdfrq102, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq102.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq103.factor = factor(data$fdfrq103, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq103.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq104.factor = factor(data$fdfrq104, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq104.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq105.factor = factor(data$fdfrq105, levels = c("1","0","2","3","4","5","7","6","8","9"))
levels(data$fdfrq105.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","5-6x per week","3-4x per week","1x per day","2+x per day")

data$fdfrq106.factor = factor(data$fdfrq106, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq106.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq107.factor = factor(data$fdfrq107, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq107.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq108.factor = factor(data$fdfrq108, levels = c("0","1","2","3","7","4","5","6","8","9"))
levels(data$fdfrq108.factor) = c("Never","< 1x per month","1x per month","2-3x per month","5-6x per week","1x per week","2x per week","3-4x per week","1x per day","2+x per day")

data$choice48.factor = factor(data$choice48, levels = c("1","5","6","2","3","7","8","4"))
levels(data$choice48.factor) = c("Regular single burger","Cheeseburger","Double or 1/4 pound burger w/ cheese","Double or 1/4 pound burger","Whopper","Whopper w/ cheese","Big Mac w/ cheese","Big Mac")

data$choice49.factor = factor(data$choice49, levels = c("2","1","3"))
levels(data$choice49.factor) = c("Lean","Regular","Extra lean")

data$fdpor98.factor = factor(data$fdpor98, levels = c("2","1","3","4"))
levels(data$fdpor98.factor) = c("1 med. patty or 6 ounces","1 small patty or 3 ounces","1 large patty or 9 ounces","2 patties or 12 ounces or more")

data$choice50___1.factor = factor(data$choice50___1, levels = c("1","0"))
levels(data$choice50___1.factor) = c("Checked","Unchecked")

data$choice50___2.factor = factor(data$choice50___2, levels = c("0","1"))
levels(data$choice50___2.factor) = c("Unchecked","Checked")

data$fdpor99.factor = factor(data$fdpor99, levels = c("1","2","3","4"))
levels(data$fdpor99.factor) = c("1 cup","2 cups","3 cups","4 cups or more")

data$fdpor100.factor = factor(data$fdpor100, levels = c("2","1","3","4"))
levels(data$fdpor100.factor) = c("4 ounces","2 ounces","6 ounces","8 ounces or more")

data$fdpor107.factor = factor(data$fdpor107, levels = c("2","1","3","4"))
levels(data$fdpor107.factor) = c("4 ounces","2 ounces","6 ounces","8 ounces or more")

data$fdfrq109.factor = factor(data$fdfrq109, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq109.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq110.factor = factor(data$fdfrq110, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq110.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq111.factor = factor(data$fdfrq111, levels = c("1","2","0","3","4","5","6","7","9","8"))
levels(data$fdfrq111.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","2+x per day","1x per day")

data$fdfrq112.factor = factor(data$fdfrq112, levels = c("3","4","5","2","6","1","0","7","8","9"))
levels(data$fdfrq112.factor) = c("2-3x per month","1x per week","2x per week","1x per month","3-4x per week","< 1x per month","Never","5-6x per week","1x per day","2+x per day")

data$fdfrq113.factor = factor(data$fdfrq113, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq113.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq114.factor = factor(data$fdfrq114, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq114.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq115.factor = factor(data$fdfrq115, levels = c("0","1","2","3","5","4","6","7","8","9"))
levels(data$fdfrq115.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdpor110.factor = factor(data$fdpor110, levels = c("2","1","3","4"))
levels(data$fdpor110.factor) = c("1 med. patty or 6 ounces","1 small patty or 3 ounces","1 large patty or 9 ounces","2 patties or 12 ounces or more")

data$choice52___1.factor = factor(data$choice52___1, levels = c("1","0"))
levels(data$choice52___1.factor) = c("Checked","Unchecked")

data$choice52___2.factor = factor(data$choice52___2, levels = c("0","1"))
levels(data$choice52___2.factor) = c("Unchecked","Checked")

data$choice52___3.factor = factor(data$choice52___3, levels = c("0","1"))
levels(data$choice52___3.factor) = c("Unchecked","Checked")

data$fdpor111.factor = factor(data$fdpor111, levels = c("2","1","3","4"))
levels(data$fdpor111.factor) = c("1 cup","1/2 cup","1 1/2 cups","2 cups or more")

data$choice55.factor = factor(data$choice55, levels = c("3","1","2"))
levels(data$choice55.factor) = c("Both","White meat","Dark meat")

data$choice56.factor = factor(data$choice56, levels = c("2","1","3"))
levels(data$choice56.factor) = c("Sometimes","Never","Often/always")

data$fdpor112.factor = factor(data$fdpor112, levels = c("2","3","1","4"))
levels(data$fdpor112.factor) = c("4 ounces (1 piece of breast or 1 whole leg = drumstick & thigh)","6 ounces","2 ounces (1 drumstick or thigh)","8 ounces or more")

data$fdpor114.factor = factor(data$fdpor114, levels = c("1","2","3","4"))
levels(data$fdpor114.factor) = c("1/2 cup","1 cup","1 1/2 cups","2 cups or more")

data$fdpor115.factor = factor(data$fdpor115, levels = c("1","2","3","4"))
levels(data$fdpor115.factor) = c("1 ounce","2 ounces","3 ounces","4 ounces")

data$fdfrq116.factor = factor(data$fdfrq116, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq116.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq117.factor = factor(data$fdfrq117, levels = c("1","0","2","3","4","6","5","7","8","9"))
levels(data$fdfrq117.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","3-4x per week","2x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq118.factor = factor(data$fdfrq118, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq118.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq119.factor = factor(data$fdfrq119, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq119.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq120.factor = factor(data$fdfrq120, levels = c("3","2","4","1","0","5","6","7","8","9"))
levels(data$fdfrq120.factor) = c("2-3x per month","1x per month","1x per week","< 1x per month","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq121.factor = factor(data$fdfrq121, levels = c("1","2","0","3","4","5","6","7","8","9"))
levels(data$fdfrq121.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq122.factor = factor(data$fdfrq122, levels = c("1","2","0","3","4","5","6","7","8","9"))
levels(data$fdfrq122.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq123.factor = factor(data$fdfrq123, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq123.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq124.factor = factor(data$fdfrq124, levels = c("0","1","2","3","4","5","7","6","8","9"))
levels(data$fdfrq124.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","5-6x per week","3-4x per week","1x per day","2+x per day")

data$fdfrq125.factor = factor(data$fdfrq125, levels = c("1","2","3","0","4","5","6","7","8","9"))
levels(data$fdfrq125.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdpor117.factor = factor(data$fdpor117, levels = c("2","1","3","4"))
levels(data$fdpor117.factor) = c("6 ounces or 1 cup","3 ounces or 1/2 cup","9 ounces or 1 1/2 cups","12 ounces or 2 cups or more")

data$fdpor119.factor = factor(data$fdpor119, levels = c("2","1","3","4"))
levels(data$fdpor119.factor) = c("6 ounces or 1 cup","3 ounces or 1/2 cup","9 ounces or 1 1/2 cups","12 ounces or 2 cups or more")

data$choice57.factor = factor(data$choice57, levels = c("2","3","1"))
levels(data$choice57.factor) = c("Water packed","Either","Oil packed")

data$fdpor122.factor = factor(data$fdpor122, levels = c("1","2","3","4"))
levels(data$fdpor122.factor) = c("1/2 cup","1 cup","1 1/2 cups","2 cups or more")

data$fdpor124.factor = factor(data$fdpor124, levels = c("4","2","1","3"))
levels(data$fdpor124.factor) = c("1 can or more","1/2 can","1/4 can","3/4 can")

data$fdfrq126.factor = factor(data$fdfrq126, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq126.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq127.factor = factor(data$fdfrq127, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq127.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq128.factor = factor(data$fdfrq128, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq128.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq129.factor = factor(data$fdfrq129, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq129.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq130.factor = factor(data$fdfrq130, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq130.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq131.factor = factor(data$fdfrq131, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq131.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq132.factor = factor(data$fdfrq132, levels = c("1","0","3","2","4","5","6","8","7","9"))
levels(data$fdfrq132.factor) = c("< 1x per month","Never","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq133.factor = factor(data$fdfrq133, levels = c("0","1","3","2","4","5","6","8","7","9"))
levels(data$fdfrq133.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$choice58.factor = factor(data$choice58, levels = c("1","2","3","4"))
levels(data$choice58.factor) = c("Regular","Lean/lowfat","Extra lean","Fat free")

data$choice59.factor = factor(data$choice59, levels = c("2","3","1"))
levels(data$choice59.factor) = c("Sometimes","Often/always","Never")

data$fdpor126.factor = factor(data$fdpor126, levels = c("2","1","3","4"))
levels(data$fdpor126.factor) = c("2 slices","1 slice","3 slices","4slices or more")

data$choice60.factor = factor(data$choice60, levels = c("1","3","2"))
levels(data$choice60.factor) = c("Regular","Chicken or turkey","Lowfat")

data$fdpor130.factor = factor(data$fdpor130, levels = c("1","2","3","4"))
levels(data$fdpor130.factor) = c("1 each","2 each","3 each","4 each or more")

data$fdpor132.factor = factor(data$fdpor132, levels = c("2","3","1","4"))
levels(data$fdpor132.factor) = c("2 slices or pieces","3 slices or pieces","1 slice or piece","4 slices or pieces or more")

data$fdfrq134.factor = factor(data$fdfrq134, levels = c("3","1","0","2","4","6","5","7","8","9"))
levels(data$fdfrq134.factor) = c("2-3x per month","< 1x per month","Never","1x per month","1x per week","3-4x per week","2x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq135.factor = factor(data$fdfrq135, levels = c("6","3","5","0","4","1","7","2","8","9"))
levels(data$fdfrq135.factor) = c("3-4x per week","2-3x per month","2x per week","Never","1x per week","< 1x per month","5-6x per week","1x per month","1x per day","2+x per day")

data$fdfrq136.factor = factor(data$fdfrq136, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq136.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq137.factor = factor(data$fdfrq137, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq137.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq138.factor = factor(data$fdfrq138, levels = c("1","3","0","2","4","5","6","7","8","9"))
levels(data$fdfrq138.factor) = c("< 1x per month","2-3x per month","Never","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq139.factor = factor(data$fdfrq139, levels = c("3","1","2","0","4","5","6","7","8","9"))
levels(data$fdfrq139.factor) = c("2-3x per month","< 1x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq140.factor = factor(data$fdfrq140, levels = c("3","1","2","0","4","5","6","7","8","9"))
levels(data$fdfrq140.factor) = c("2-3x per month","< 1x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq141.factor = factor(data$fdfrq141, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq141.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq142.factor = factor(data$fdfrq142, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq142.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq143.factor = factor(data$fdfrq143, levels = c("0","1","3","2","4","5","6","7","8","9"))
levels(data$fdfrq143.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq144.factor = factor(data$fdfrq144, levels = c("0","3","1","6","5","4","2","7","8","9"))
levels(data$fdfrq144.factor) = c("Never","2-3x per month","< 1x per month","3-4x per week","2x per week","1x per week","1x per month","5-6x per week","1x per day","2+x per day")

data$fdfrq145.factor = factor(data$fdfrq145, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq145.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq146.factor = factor(data$fdfrq146, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq146.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq147.factor = factor(data$fdfrq147, levels = c("0","1","2","3","4","5","6","8","7","9"))
levels(data$fdfrq147.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq148.factor = factor(data$fdfrq148, levels = c("0","1","2","3","4","6","5","7","8","9"))
levels(data$fdfrq148.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","3-4x per week","2x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq149.factor = factor(data$fdfrq149, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq149.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq150.factor = factor(data$fdfrq150, levels = c("3","1","0","2","6","5","4","7","8","9"))
levels(data$fdfrq150.factor) = c("2-3x per month","< 1x per month","Never","1x per month","3-4x per week","2x per week","1x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq151.factor = factor(data$fdfrq151, levels = c("0","1","3","6","4","5","7","2","8","9"))
levels(data$fdfrq151.factor) = c("Never","< 1x per month","2-3x per month","3-4x per week","1x per week","2x per week","5-6x per week","1x per month","1x per day","2+x per day")

data$choice61.factor = factor(data$choice61, levels = c("1","2","3"))
levels(data$choice61.factor) = c("Regular","Reduced fat/light","Fat free")

data$fdpor134.factor = factor(data$fdpor134, levels = c("1","2","3","4"))
levels(data$fdpor134.factor) = c("1 tablespoon","2 tablespoons","3 tablespoons","4 tablespoons or more")

data$choice62.factor = factor(data$choice62, levels = c("3","2","1"))
levels(data$choice62.factor) = c("Both","Clear","Creamy")

data$choice63.factor = factor(data$choice63, levels = c("1","2","3"))
levels(data$choice63.factor) = c("Regular","Reduced fat/low calorie","Fat free")

data$fdpor135.factor = factor(data$fdpor135, levels = c("2","1","3","4"))
levels(data$fdpor135.factor) = c("2 tablespoons","1 tablespoon","3 tablespoons","4 tablespoons or more")

data$fdpor136.factor = factor(data$fdpor136, levels = c("2","1","3","4"))
levels(data$fdpor136.factor) = c("2 teaspoons","1 teaspoon","3 teaspoons","4 teaspoons or more")

data$fdpor144.factor = factor(data$fdpor144, levels = c("1","2","3","4"))
levels(data$fdpor144.factor) = c("1 tablespoon","2 tablespoons","3 tablespoons","4 tablespoons or more")

data$fdpor149.factor = factor(data$fdpor149, levels = c("1","2","3","4"))
levels(data$fdpor149.factor) = c("1/4 cup","1/2 cup","3/4 cup","1 cup or more")

data$choice64.factor = factor(data$choice64, levels = c("3","1","2"))
levels(data$choice64.factor) = c("Both","Fresh","Dried")

data$fdfrq152.factor = factor(data$fdfrq152, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq152.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq153.factor = factor(data$fdfrq153, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq153.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq154.factor = factor(data$fdfrq154, levels = c("1","0","2","3","4","5","8","6","7","9"))
levels(data$fdfrq154.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","1x per day","3-4x per week","5-6x per week","2+x per day")

data$fdfrq155.factor = factor(data$fdfrq155, levels = c("1","2","3","0","4","5","6","8","7","9"))
levels(data$fdfrq155.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq156.factor = factor(data$fdfrq156, levels = c("1","2","3","0","4","5","6","7","8","9"))
levels(data$fdfrq156.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq157.factor = factor(data$fdfrq157, levels = c("1","2","0","3","4","5","6","7","8","9"))
levels(data$fdfrq157.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq158.factor = factor(data$fdfrq158, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq158.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq159.factor = factor(data$fdfrq159, levels = c("1","2","0","3","4","5","6","7","8","9"))
levels(data$fdfrq159.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdpor152.factor = factor(data$fdpor152, levels = c("1","2","3","4"))
levels(data$fdpor152.factor) = c("1 cup","2 cups","3 cups","4 cups or more")

data$fdpor158.factor = factor(data$fdpor158, levels = c("2","3","1","4"))
levels(data$fdpor158.factor) = c("1 cup","1 1/2 cups","1/2 cup","2 cups or more")

data$fdfrq160.factor = factor(data$fdfrq160, levels = c("0","1","8","6","3","2","5","4","7","9"))
levels(data$fdfrq160.factor) = c("Never","< 1x per month","1x per day","3-4x per week","2-3x per month","1x per month","2x per week","1x per week","5-6x per week","2+x per day")

data$fdfrq161.factor = factor(data$fdfrq161, levels = c("0","1","2","3","5","4","8","6","7","9"))
levels(data$fdfrq161.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","1x per day","3-4x per week","5-6x per week","2+x per day")

data$fdfrq162.factor = factor(data$fdfrq162, levels = c("3","5","6","4","1","0","2","7","8","9"))
levels(data$fdfrq162.factor) = c("2-3x per month","2x per week","3-4x per week","1x per week","< 1x per month","Never","1x per month","5-6x per week","1x per day","2+x per day")

data$fdfrq163.factor = factor(data$fdfrq163, levels = c("0","1","3","2","4","5","6","7","8","9"))
levels(data$fdfrq163.factor) = c("Never","< 1x per month","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq164.factor = factor(data$fdfrq164, levels = c("3","1","2","4","0","5","6","7","8","9"))
levels(data$fdfrq164.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","Never","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq165.factor = factor(data$fdfrq165, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq165.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq166.factor = factor(data$fdfrq166, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq166.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq167.factor = factor(data$fdfrq167, levels = c("0","3","1","5","6","4","2","8","7","9"))
levels(data$fdfrq167.factor) = c("Never","2-3x per month","< 1x per month","2x per week","3-4x per week","1x per week","1x per month","1x per day","5-6x per week","2+x per day")

data$fdfrq168.factor = factor(data$fdfrq168, levels = c("0","1","2","6","4","3","5","8","7","9"))
levels(data$fdfrq168.factor) = c("Never","< 1x per month","1x per month","3-4x per week","1x per week","2-3x per month","2x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq169.factor = factor(data$fdfrq169, levels = c("3","1","0","4","5","2","6","7","8","9"))
levels(data$fdfrq169.factor) = c("2-3x per month","< 1x per month","Never","1x per week","2x per week","1x per month","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq170.factor = factor(data$fdfrq170, levels = c("4","3","5","6","2","0","1","7","8","9"))
levels(data$fdfrq170.factor) = c("1x per week","2-3x per month","2x per week","3-4x per week","1x per month","Never","< 1x per month","5-6x per week","1x per day","2+x per day")

data$fdfrq171.factor = factor(data$fdfrq171, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq171.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq172.factor = factor(data$fdfrq172, levels = c("0","1","2","3","4","6","5","9","7","8"))
levels(data$fdfrq172.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","3-4x per week","2x per week","2+x per day","5-6x per week","1x per day")

data$choice65.factor = factor(data$choice65, levels = c("1","2","3","4"))
levels(data$choice65.factor) = c("Skim/nonfat or 1%","2%","Whole","Soymilk")

data$fdpor160.factor = factor(data$fdpor160, levels = c("2","1","3","4"))
levels(data$fdpor160.factor) = c("8 fl. ounces (1 cup)","4 fl. Ounces","12 fl. ounces","16 fl. ounces or more")

data$choice66.factor = factor(data$choice66, levels = c("1","2","3"))
levels(data$choice66.factor) = c("Regular","Low/reduced fat","Nonfat/fat free")

data$fdpor162.factor = factor(data$fdpor162, levels = c("2","1","3","4"))
levels(data$fdpor162.factor) = c("2 slices or 3 tablespoons","1 slice or 2 tablespoons","3 slices or 4 tablespoons","4 slices or 5 tablespoons or more")

data$fdpor166.factor = factor(data$fdpor166, levels = c("2","1","3","4"))
levels(data$fdpor166.factor) = c("1/2 cup","1/4 cup","3/4 cup","1 cup or more")

data$choice67.factor = factor(data$choice67, levels = c("1","2","3","4"))
levels(data$choice67.factor) = c("Regular","Low/reduced fat","Nonfat/fat free","Light/no sugar added")

data$fdpor167.factor = factor(data$fdpor167, levels = c("2","1","3","4"))
levels(data$fdpor167.factor) = c("1 cup","1/2 cup","1 1/2 cups","2 cups or more")

data$fdpor168.factor = factor(data$fdpor168, levels = c("2","1","3","4"))
levels(data$fdpor168.factor) = c("2 eggs","1 egg","3 eggs","4 eggs or more")

data$fdpor171.factor = factor(data$fdpor171, levels = c("2","1","3","4"))
levels(data$fdpor171.factor) = c("1/2 cup","1/4 cup","3/4 cup","1 cup or more")

data$fdfrq173.factor = factor(data$fdfrq173, levels = c("0","1","2","3","5","4","7","6","8","9"))
levels(data$fdfrq173.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","5-6x per week","3-4x per week","1x per day","2+x per day")

data$fdfrq174.factor = factor(data$fdfrq174, levels = c("3","1","2","5","4","6","0","7","8","9"))
levels(data$fdfrq174.factor) = c("2-3x per month","< 1x per month","1x per month","2x per week","1x per week","3-4x per week","Never","5-6x per week","1x per day","2+x per day")

data$fdfrq175.factor = factor(data$fdfrq175, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$fdfrq175.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq176.factor = factor(data$fdfrq176, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq176.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq177.factor = factor(data$fdfrq177, levels = c("0","1","2","3","4","5","6","7","9","8"))
levels(data$fdfrq177.factor) = c("Never","< 1x per month","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","2+x per day","1x per day")

data$fdfrq178.factor = factor(data$fdfrq178, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq178.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq179.factor = factor(data$fdfrq179, levels = c("1","0","2","3","4","5","6","7","8","9"))
levels(data$fdfrq179.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq180.factor = factor(data$fdfrq180, levels = c("3","1","2","4","5","0","6","7","8","9"))
levels(data$fdfrq180.factor) = c("2-3x per month","< 1x per month","1x per month","1x per week","2x per week","Never","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq181.factor = factor(data$fdfrq181, levels = c("1","2","3","0","4","5","6","8","7","9"))
levels(data$fdfrq181.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq182.factor = factor(data$fdfrq182, levels = c("1","2","3","0","4","5","6","8","7","9"))
levels(data$fdfrq182.factor) = c("< 1x per month","1x per month","2-3x per month","Never","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq183.factor = factor(data$fdfrq183, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq183.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq184.factor = factor(data$fdfrq184, levels = c("1","0","2","3","4","5","6","8","7","9"))
levels(data$fdfrq184.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq185.factor = factor(data$fdfrq185, levels = c("1","3","6","4","5","0","2","8","7","9"))
levels(data$fdfrq185.factor) = c("< 1x per month","2-3x per month","3-4x per week","1x per week","2x per week","Never","1x per month","1x per day","5-6x per week","2+x per day")

data$fdfrq186.factor = factor(data$fdfrq186, levels = c("1","0","3","2","4","5","6","8","7","9"))
levels(data$fdfrq186.factor) = c("< 1x per month","Never","2-3x per month","1x per month","1x per week","2x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq187.factor = factor(data$fdfrq187, levels = c("1","3","4","2","5","0","6","8","7","9"))
levels(data$fdfrq187.factor) = c("< 1x per month","2-3x per month","1x per week","1x per month","2x per week","Never","3-4x per week","1x per day","5-6x per week","2+x per day")

data$choice68.factor = factor(data$choice68, levels = c("1","2","4","3"))
levels(data$choice68.factor) = c("Regular","Light/low fat","Sugar free/no sugar added","Fat free")

data$fdpor174.factor = factor(data$fdpor174, levels = c("2","1","3","4"))
levels(data$fdpor174.factor) = c("1 cup","1/2 cup","1 1/2 cups","2 cups or more")

data$fdpor179.factor = factor(data$fdpor179, levels = c("1","2","3","4"))
levels(data$fdpor179.factor) = c("1 doughnut","2 doughnuts","3 doughnuts","4 doughnuts")

data$choice69.factor = factor(data$choice69, levels = c("1","2","4","3"))
levels(data$choice69.factor) = c("Regular","Light/low fat","Sugar free/no sugar added","Fat free")

data$fdpor181.factor = factor(data$fdpor181, levels = c("1","2","3","4"))
levels(data$fdpor181.factor) = c("Small muffin or 1 piece","Medium muffin or 2 pieces","Large muffin or 3 pieces","2 medium muffins or 4 pieces or more")

data$fdpor180.factor = factor(data$fdpor180, levels = c("2","1","3","4"))
levels(data$fdpor180.factor) = c("2 medium cookies","1 medium cookie","3 medium cookies","4 medium or 1 large cookie or more")

data$fdpor182.factor = factor(data$fdpor182, levels = c("2","1","3","4"))
levels(data$fdpor182.factor) = c("1 regular piece or 1 medium roll","1/2 piece or 1 small roll","1 large piece or 1 large roll","2 regular pieces or 2+ rolls")

data$fdpor185.factor = factor(data$fdpor185, levels = c("1","2","3","4"))
levels(data$fdpor185.factor) = c("1/2 regular bar or package or 1 snack size","1 regular bar or package","1 1/2 regular bars or packages or 1 king size","2 bars or packages or more")

data$fdpor187.factor = factor(data$fdpor187, levels = c("2","1","3","4"))
levels(data$fdpor187.factor) = c("1 tablespoon","1 teaspoon","2 tablespoons","3 tablespoons or more")

data$fdfrq188.factor = factor(data$fdfrq188, levels = c("1","3","2","0","4","5","6","7","8","9"))
levels(data$fdfrq188.factor) = c("< 1x per month","2-3x per month","1x per month","Never","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq189.factor = factor(data$fdfrq189, levels = c("3","1","0","2","4","5","6","7","8","9"))
levels(data$fdfrq189.factor) = c("2-3x per month","< 1x per month","Never","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq190.factor = factor(data$fdfrq190, levels = c("1","3","0","2","4","5","6","7","8","9"))
levels(data$fdfrq190.factor) = c("< 1x per month","2-3x per month","Never","1x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq191.factor = factor(data$fdfrq191, levels = c("1","2","0","3","4","5","6","7","8","9"))
levels(data$fdfrq191.factor) = c("< 1x per month","1x per month","Never","2-3x per month","1x per week","2x per week","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq192.factor = factor(data$fdfrq192, levels = c("0","1","2","3","5","4","6","8","7","9"))
levels(data$fdfrq192.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq193.factor = factor(data$fdfrq193, levels = c("1","0","2","3","4","6","5","7","8","9"))
levels(data$fdfrq193.factor) = c("< 1x per month","Never","1x per month","2-3x per month","1x per week","3-4x per week","2x per week","5-6x per week","1x per day","2+x per day")

data$fdfrq194.factor = factor(data$fdfrq194, levels = c("0","1","2","3","5","4","6","8","7","9"))
levels(data$fdfrq194.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq195.factor = factor(data$fdfrq195, levels = c("6","8","3","5","7","4","2","1","9","0"))
levels(data$fdfrq195.factor) = c("3-4x per week","1x per day","2-3x per month","2x per week","5-6x per week","1x per week","1x per month","< 1x per month","2+x per day","Never")

data$fdfrq196.factor = factor(data$fdfrq196, levels = c("0","1","2","3","5","4","6","8","7","9"))
levels(data$fdfrq196.factor) = c("Never","< 1x per month","1x per month","2-3x per month","2x per week","1x per week","3-4x per week","1x per day","5-6x per week","2+x per day")

data$fdfrq197.factor = factor(data$fdfrq197, levels = c("3","1","0","5","4","2","6","7","8","9"))
levels(data$fdfrq197.factor) = c("2-3x per month","< 1x per month","Never","2x per week","1x per week","1x per month","3-4x per week","5-6x per week","1x per day","2+x per day")

data$fdpor188.factor = factor(data$fdpor188, levels = c("1","2","3","4"))
levels(data$fdpor188.factor) = c("1 ounce","2 ounces","3 ounces","4 ounces or more")

data$choice70.factor = factor(data$choice70, levels = c("2","1","3"))
levels(data$choice70.factor) = c("Regular (with butter or oil)","Lowfat","Movie theater style")

data$fdpor191.factor = factor(data$fdpor191, levels = c("2","1","3","4"))
levels(data$fdpor191.factor) = c("2 1/2 cups (1 snack-size bag)","1 cup","5 cups","7 1/2 cups (1 microwave bag) or more")

data$fdpor189.factor = factor(data$fdpor189, levels = c("2","1","3","4"))
levels(data$fdpor189.factor) = c("6 crackers","3 crackers","9 crackers","12 crackers or more")

data$choice71___1.factor = factor(data$choice71___1, levels = c("1","0"))
levels(data$choice71___1.factor) = c("Checked","Unchecked")

data$choice71___2.factor = factor(data$choice71___2, levels = c("1","0"))
levels(data$choice71___2.factor) = c("Checked","Unchecked")

data$choice71___3.factor = factor(data$choice71___3, levels = c("1","0"))
levels(data$choice71___3.factor) = c("Checked","Unchecked")

data$choice71___4.factor = factor(data$choice71___4, levels = c("1","0"))
levels(data$choice71___4.factor) = c("Checked","Unchecked")

data$choice71___5.factor = factor(data$choice71___5, levels = c("1","0"))
levels(data$choice71___5.factor) = c("Checked","Unchecked")

data$choice71___6.factor = factor(data$choice71___6, levels = c("0","1"))
levels(data$choice71___6.factor) = c("Unchecked","Checked")

data$choice71___7.factor = factor(data$choice71___7, levels = c("1","0"))
levels(data$choice71___7.factor) = c("Checked","Unchecked")

data$fdpor194.factor = factor(data$fdpor194, levels = c("2","3","4","1"))
levels(data$fdpor194.factor) = c("2 tablespoons","3 tablespoons","4 tablespoons or more","1 tablespoon")

data$fdpor197.factor = factor(data$fdpor197, levels = c("1","2","3","4"))
levels(data$fdpor197.factor) = c("2 tablespoons","4 tablespoons","6 tablespoons","8 tablespoons or more")

data$choice78.factor = factor(data$choice78, levels = c("1","2","3","4"))
levels(data$choice78.factor) = c("Regular","Baked/lowfat","Fat free","Low carb")

data$bvfrq1.factor = factor(data$bvfrq1, levels = c("1","0","2","6","4","3","5","7","8","9"))
levels(data$bvfrq1.factor) = c("< 1x per month","Never","1-3x per month","1x per day","2-4x per week","1x per week","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq2.factor = factor(data$bvfrq2, levels = c("0","1","2","3","4","6","5","8","7","9"))
levels(data$bvfrq2.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","4-5x per day","2-3x per day","6+x per day")

data$bvfrq3.factor = factor(data$bvfrq3, levels = c("0","1","2","6","3","4","7","5","9","8"))
levels(data$bvfrq3.factor) = c("Never","< 1x per month","1-3x per month","1x per day","1x per week","2-4x per week","2-3x per day","5-6x per week","6+x per day","4-5x per day")

data$bvfrq4.factor = factor(data$bvfrq4, levels = c("0","1","2","3","4","6","5","7","9","8"))
levels(data$bvfrq4.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","6+x per day","4-5x per day")

data$bvfrq5.factor = factor(data$bvfrq5, levels = c("0","1","2","3","4","6","5","9","8","7"))
levels(data$bvfrq5.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","6+x per day","4-5x per day","2-3x per day")

data$bvfrq6.factor = factor(data$bvfrq6, levels = c("0","1","2","3","4","6","5","7","8","9"))
levels(data$bvfrq6.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq7.factor = factor(data$bvfrq7, levels = c("0","1","2","4","3","6","5","7","8","9"))
levels(data$bvfrq7.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","1x per day","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq8.factor = factor(data$bvfrq8, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$bvfrq8.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","5-6x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq9.factor = factor(data$bvfrq9, levels = c("0","1","2","3","4","6","5","7","8","9"))
levels(data$bvfrq9.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq10.factor = factor(data$bvfrq10, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$bvfrq10.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","5-6x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq11.factor = factor(data$bvfrq11, levels = c("0","1","2","3","4","5","6","7","8","9"))
levels(data$bvfrq11.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","5-6x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq12.factor = factor(data$bvfrq12, levels = c("0","1","2","3","4","6","5","7","8","9"))
levels(data$bvfrq12.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq13.factor = factor(data$bvfrq13, levels = c("0","1","2","4","6","3","5","7","9","8"))
levels(data$bvfrq13.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per day","1x per week","5-6x per week","2-3x per day","6+x per day","4-5x per day")

data$bvfrq14.factor = factor(data$bvfrq14, levels = c("0","1","2","4","3","6","5","8","7","9"))
levels(data$bvfrq14.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","1x per day","5-6x per week","4-5x per day","2-3x per day","6+x per day")

data$bvfrq15.factor = factor(data$bvfrq15, levels = c("0","1","2","3","4","5","6","7","9","8"))
levels(data$bvfrq15.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","5-6x per week","1x per day","2-3x per day","6+x per day","4-5x per day")

data$bvfrq16.factor = factor(data$bvfrq16, levels = c("0","1","2","4","3","5","6","7","9","8"))
levels(data$bvfrq16.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","5-6x per week","1x per day","2-3x per day","6+x per day","4-5x per day")

data$bvfrq17.factor = factor(data$bvfrq17, levels = c("0","1","2","3","5","4","6","7","8","9"))
levels(data$bvfrq17.factor) = c("Never","< 1x per month","1-3x per month","1x per week","5-6x per week","2-4x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq18.factor = factor(data$bvfrq18, levels = c("0","1","2","4","6","3","5","7","8","9"))
levels(data$bvfrq18.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per day","1x per week","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq19.factor = factor(data$bvfrq19, levels = c("8","7","9","6","0","5","4","2","3","1"))
levels(data$bvfrq19.factor) = c("4-5x per day","2-3x per day","6+x per day","1x per day","Never","5-6x per week","2-4x per week","1-3x per month","1x per week","< 1x per month")

data$choice79.factor = factor(data$choice79, levels = c("1","2","3"))
levels(data$choice79.factor) = c("regular","fortified with calcium and/or vitamin D","fortified with other vitamins/minerals")

data$bvpor1.factor = factor(data$bvpor1, levels = c("1","2","3","4"))
levels(data$bvpor1.factor) = c("4 fl. Ounces","8 fl. ounces","12 fl. ounces","16 fl. ounces or more")

data$choice80.factor = factor(data$choice80, levels = c("1","4","2","3"))
levels(data$choice80.factor) = c("cola","other caffeine-free non-cola (e.g., 7-Up, orange, ginger ale)","caffeine-free cola","other caffeinated non-cola (e.g. Mountain Dew)")

data$bvpor10.factor = factor(data$bvpor10, levels = c("1","2","3","4"))
levels(data$bvpor10.factor) = c("8 fl. ounces","12 fl. ounces","16 fl. ounces","24 fl. ounces or more")

data$choice81.factor = factor(data$choice81, levels = c("2","3","1"))
levels(data$choice81.factor) = c("sometimes","always","never")

data$choice82.factor = factor(data$choice82, levels = c("2","3","1"))
levels(data$choice82.factor) = c("High protein type (e.g. Atkins)","Standard, balanced nutrition type (e.g. Carnation Instant Breakfast, Ensure, Snapple-a-Day)","Weight loss type (e.g. Slim-Fast)")

data$bvpor18.factor = factor(data$bvpor18, levels = c("2","1","4","3"))
levels(data$bvpor18.factor) = c("1 can or 1 scoop powder","1/2 can or 1/2 scoop powder","2 cans or 2 scoops powder","1 1/2 cans or 1 1/2 scoops powder")

data$choice83.factor = factor(data$choice83, levels = c("1","2","3","4","5"))
levels(data$choice83.factor) = c("tap","bottled, purified (e.g., Aquafina, Dasani)","bottled, spring (e.g., Poland Spring, Evian)","bottled, carbonated (e.g., soda water)","bottled, mineral (e.g., Perrier)")

data$bvpor19.factor = factor(data$bvpor19, levels = c("2","3","1","4"))
levels(data$bvpor19.factor) = c("8 fl. ounces","12 fl. ounces","4 fl. Ounces","16 fl. ounces or more")

data$bvfrq20.factor = factor(data$bvfrq20, levels = c("0","1","2","3","4","6","5","7","9","8"))
levels(data$bvfrq20.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","6+x per day","4-5x per day")

data$bvfrq21.factor = factor(data$bvfrq21, levels = c("0","1","2","3","6","4","7","5","8","9"))
levels(data$bvfrq21.factor) = c("Never","< 1x per month","1-3x per month","1x per week","1x per day","2-4x per week","2-3x per day","5-6x per week","4-5x per day","6+x per day")

data$bvfrq22.factor = factor(data$bvfrq22, levels = c("0","1","4","2","3","5","6","7","8","9"))
levels(data$bvfrq22.factor) = c("Never","< 1x per month","2-4x per week","1-3x per month","1x per week","5-6x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq23.factor = factor(data$bvfrq23, levels = c("0","1","2","4","3","5","6","7","8","9"))
levels(data$bvfrq23.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","5-6x per week","1x per day","2-3x per day","4-5x per day","6+x per day")

data$bvfrq24.factor = factor(data$bvfrq24, levels = c("0","1","2","3","4","5","7","6","8","9"))
levels(data$bvfrq24.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","5-6x per week","2-3x per day","1x per day","4-5x per day","6+x per day")

data$bvfrq25.factor = factor(data$bvfrq25, levels = c("0","1","2","3","4","6","5","7","8","9"))
levels(data$bvfrq25.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$choice84.factor = factor(data$choice84, levels = c("1","2"))
levels(data$choice84.factor) = c("regular","light")

data$bvpor20.factor = factor(data$bvpor20, levels = c("1","2","3","4"))
levels(data$bvpor20.factor) = c("1 can or bottle","2 cans or bottles","3 cans or bottles","4 cans or bottles or more")

data$bvpor22.factor = factor(data$bvpor22, levels = c("1","2","3","4"))
levels(data$bvpor22.factor) = c("1 glass","2 glasses","3 glasses","4 glasses or more")

data$bvpor24.factor = factor(data$bvpor24, levels = c("1","2","3","4"))
levels(data$bvpor24.factor) = c("1 drink","2 drinks","3 drinks","4 drinks or more")

data$bvfrq26.factor = factor(data$bvfrq26, levels = c("1","0","2","3","4","6","5","7","9","8"))
levels(data$bvfrq26.factor) = c("< 1x per month","Never","1-3x per month","1x per week","2-4x per week","1x per day","5-6x per week","2-3x per day","6+x per day","4-5x per day")

data$bvfrq27.factor = factor(data$bvfrq27, levels = c("0","6","7","1","4","5","2","8","3","9"))
levels(data$bvfrq27.factor) = c("Never","1x per day","2-3x per day","< 1x per month","2-4x per week","5-6x per week","1-3x per month","4-5x per day","1x per week","6+x per day")

data$bvfrq28.factor = factor(data$bvfrq28, levels = c("0","1","6","2","4","3","7","5","8","9"))
levels(data$bvfrq28.factor) = c("Never","< 1x per month","1x per day","1-3x per month","2-4x per week","1x per week","2-3x per day","5-6x per week","4-5x per day","6+x per day")

data$bvfrq29.factor = factor(data$bvfrq29, levels = c("0","1","2","3","4","6","7","5","8","9"))
levels(data$bvfrq29.factor) = c("Never","< 1x per month","1-3x per month","1x per week","2-4x per week","1x per day","2-3x per day","5-6x per week","4-5x per day","6+x per day")

data$bvfrq30.factor = factor(data$bvfrq30, levels = c("0","1","2","4","6","3","5","7","8","9"))
levels(data$bvfrq30.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per day","1x per week","5-6x per week","2-3x per day","4-5x per day","6+x per day")

data$bvfrq31.factor = factor(data$bvfrq31, levels = c("0","1","2","4","3","6","7","5","9","8"))
levels(data$bvfrq31.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","1x per day","2-3x per day","5-6x per week","6+x per day","4-5x per day")

data$bvfrq32.factor = factor(data$bvfrq32, levels = c("0","1","2","4","3","6","7","5","8","9"))
levels(data$bvfrq32.factor) = c("Never","< 1x per month","1-3x per month","2-4x per week","1x per week","1x per day","2-3x per day","5-6x per week","4-5x per day","6+x per day")

data$bvpor26.factor = factor(data$bvpor26, levels = c("1","2","3","4"))
levels(data$bvpor26.factor) = c("Small (6 fl. ounces or 3/4 cup)","Medium (12 fl. ounces or 1 1/2 cups)","Large (18 fl. ounces or 2 1/4 cups)","Extra Large (24 fl. ounces or 3 cups) or more")

data$choice85___1.factor = factor(data$choice85___1, levels = c("1","0"))
levels(data$choice85___1.factor) = c("Checked","Unchecked")

data$choice85___2.factor = factor(data$choice85___2, levels = c("0","1"))
levels(data$choice85___2.factor) = c("Unchecked","Checked")

data$choice85___3.factor = factor(data$choice85___3, levels = c("0","1"))
levels(data$choice85___3.factor) = c("Unchecked","Checked")

data$bvpor27.factor = factor(data$bvpor27, levels = c("1","2","3","4"))
levels(data$bvpor27.factor) = c("Sm. (8 fl. ounces or 1 cup)","Med. (12 fl. ounces or 1 1/2 cups)","Lg. (16 fl. ounces or 2 cups)","Extra lg. (24 fl. ounces or 3 cups) or more")

data$c88.factor = factor(data$c88, levels = c("1","2","5","3","4","0"))
levels(data$c88.factor) = c("1 teaspoon in coffee","2 teaspoon in coffee","artificial sweetener in coffee","3 teaspoon in coffee","4 teaspoon in coffee","no sugar in coffee")

data$c88_2.factor = factor(data$c88_2, levels = c("1","2","5","3","4","0"))
levels(data$c88_2.factor) = c("1 teaspoon in tea","2 teaspoon in tea","artificial sweetener in tea","3 teaspoon in tea","4 teaspoon in tea","no sugar in tea")

data$c93.factor = factor(data$c93, levels = c("2","3","1","4","5"))
levels(data$c93.factor) = c("regular (some milk/cream) in coffee","light (extra milk/cream) in coffee","dark (very little milk/cream) in coffee","half milk/cream, in coffee","more milk/cream, in coffee")

data$c93_2.factor = factor(data$c93_2, levels = c("2","3","1","4","5"))
levels(data$c93_2.factor) = c("regular (some milk/cream) in tea","light (extra milk/cream) in tea","dark (very little milk/cream) in tea","half milk/cream, in tea","more milk/cream, in tea")

data$choice98.factor = factor(data$choice98, levels = c("1","2","4","3","5"))
levels(data$choice98.factor) = c("milk","half & half cream","cream substitute, liquid (e.g., Coffee Rich, Coffee-mate, International Delight)","light or coffee cream","cream substitute, powdered (e.g., Coffee-mate, Cremora)")

data$choice99.factor = factor(data$choice99, levels = c("1","2","3"))
levels(data$choice99.factor) = c("regular","reduced fat or light","fat free")

data$summary1.factor = factor(data$summary1, levels = c("2","1","3"))
levels(data$summary1.factor) = c("Sometimes","Never","Often/always")

data$summary2___1.factor = factor(data$summary2___1, levels = c("0","1"))
levels(data$summary2___1.factor) = c("Unchecked","Checked")

data$summary2___2.factor = factor(data$summary2___2, levels = c("0","1"))
levels(data$summary2___2.factor) = c("Unchecked","Checked")

data$summary2___3.factor = factor(data$summary2___3, levels = c("0","1"))
levels(data$summary2___3.factor) = c("Unchecked","Checked")

data$summary2___4.factor = factor(data$summary2___4, levels = c("0","1"))
levels(data$summary2___4.factor) = c("Unchecked","Checked")

data$summary2___5.factor = factor(data$summary2___5, levels = c("0","1"))
levels(data$summary2___5.factor) = c("Unchecked","Checked")

data$summary2___6.factor = factor(data$summary2___6, levels = c("0","1"))
levels(data$summary2___6.factor) = c("Unchecked","Checked")

data$summary2___7.factor = factor(data$summary2___7, levels = c("0","1"))
levels(data$summary2___7.factor) = c("Unchecked","Checked")

data$summary2___8.factor = factor(data$summary2___8, levels = c("0","1"))
levels(data$summary2___8.factor) = c("Unchecked","Checked")

data$summary2___9.factor = factor(data$summary2___9, levels = c("0","1"))
levels(data$summary2___9.factor) = c("Unchecked","Checked")

data$summary2___10.factor = factor(data$summary2___10, levels = c("0","1"))
levels(data$summary2___10.factor) = c("Unchecked","Checked")

data$summary2___11.factor = factor(data$summary2___11, levels = c("1","0"))
levels(data$summary2___11.factor) = c("Checked","Unchecked")

data$summary2___12.factor = factor(data$summary2___12, levels = c("0","1"))
levels(data$summary2___12.factor) = c("Unchecked","Checked")

data$summary14.factor = factor(data$summary14, levels = c("5","6","4","3","7","2","8","0","1"))
levels(data$summary14.factor) = c("1x per day","2x per day","5-6x per week","3-4x per week","3x per day","1-2x per week","4+x per day","Never","< 1x per week")

data$summary15.factor = factor(data$summary15, levels = c("5","6","3","4","2","7","1","0","8"))
levels(data$summary15.factor) = c("1x per day","2x per day","3-4x per week","5-6x per week","1-2x per week","3x per day","< 1x per week","Never","4+x per day")

data$summary16.factor = factor(data$summary16, levels = c("1","2","3","0","4","5","6","7","8"))
levels(data$summary16.factor) = c("< 1x per week","1-2x per week","3-4x per week","Never","5-6x per week","1x per day","2x per day","3x per day","4+x per day")

data$summary17.factor = factor(data$summary17, levels = c("3","2","4","1"))
levels(data$summary17.factor) = c("weight reduction","vegetarian/vegan","physician-prescribed diet","kosher")

data$summary18.factor = factor(data$summary18, levels = c("1","2","4","3","5"))
levels(data$summary18.factor) = c("Home","Work","Fast food chain","Cafeteria","Restaurant")

data$summary19.factor = factor(data$summary19, levels = c("1","2","5","3","4"))
levels(data$summary19.factor) = c("Home","Work","Restaurant","Cafeteria","Fast food chain")

data$summary20.factor = factor(data$summary20, levels = c("1","5","3","2","4"))
levels(data$summary20.factor) = c("Home","Restaurant","Cafeteria","Work","Fast food chain")

data$supp_yn.factor = factor(data$supp_yn, levels = c("1","0"))
levels(data$supp_yn.factor) = c("Yes","No (if so, stop here)")

data$supfrq1.factor = factor(data$supfrq1, levels = c("2","1"))
levels(data$supfrq1.factor) = c("Daily","Occasionally")

data$supdur1.factor = factor(data$supdur1, levels = c("4","3","2","1"))
levels(data$supdur1.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq2.factor = factor(data$supfrq2, levels = c("2","1"))
levels(data$supfrq2.factor) = c("Daily","Occasionally")

data$supdur2.factor = factor(data$supdur2, levels = c("4","3","2","1"))
levels(data$supdur2.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq3.factor = factor(data$supfrq3, levels = c("2","1"))
levels(data$supfrq3.factor) = c("Daily","Occasionally")

data$supdur3.factor = factor(data$supdur3, levels = c("4","2","3","1"))
levels(data$supdur3.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq4.factor = factor(data$supfrq4, levels = c("2","1"))
levels(data$supfrq4.factor) = c("Daily","Occasionally")

data$supdur4.factor = factor(data$supdur4, levels = c("4","3","2","1"))
levels(data$supdur4.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq5.factor = factor(data$supfrq5, levels = c("2","1"))
levels(data$supfrq5.factor) = c("Daily","Occasionally")

data$supdur5.factor = factor(data$supdur5, levels = c("4","2","1","3"))
levels(data$supdur5.factor) = c("10+ years","1-4 years","Less than 1 year","5-9 years")

data$supfrq6.factor = factor(data$supfrq6, levels = c("2","1"))
levels(data$supfrq6.factor) = c("Daily","Occasionally")

data$supdur6.factor = factor(data$supdur6, levels = c("4","3","2","1"))
levels(data$supdur6.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq7.factor = factor(data$supfrq7, levels = c("2","1"))
levels(data$supfrq7.factor) = c("Daily","Occasionally")

data$supdur7.factor = factor(data$supdur7, levels = c("4","2","3","1"))
levels(data$supdur7.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq8.factor = factor(data$supfrq8, levels = c("2","1"))
levels(data$supfrq8.factor) = c("Daily","Occasionally")

data$supdur8.factor = factor(data$supdur8, levels = c("4","3","2","1"))
levels(data$supdur8.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq9.factor = factor(data$supfrq9, levels = c("2","1"))
levels(data$supfrq9.factor) = c("Daily","Occasionally")

data$supdur9.factor = factor(data$supdur9, levels = c("4","2","3","1"))
levels(data$supdur9.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq10.factor = factor(data$supfrq10, levels = c("2","1"))
levels(data$supfrq10.factor) = c("Daily","Occasionally")

data$supdur10.factor = factor(data$supdur10, levels = c("4","2","3","1"))
levels(data$supdur10.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq11.factor = factor(data$supfrq11, levels = c("2","1"))
levels(data$supfrq11.factor) = c("Daily","Occasionally")

data$supdur11.factor = factor(data$supdur11, levels = c("2","4","3","1"))
levels(data$supdur11.factor) = c("1-4 years","10+ years","5-9 years","Less than 1 year")

data$supfrq12.factor = factor(data$supfrq12, levels = c("2","1"))
levels(data$supfrq12.factor) = c("Daily","Occasionally")

data$supdur12.factor = factor(data$supdur12, levels = c("4","3","2","1"))
levels(data$supdur12.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq13.factor = factor(data$supfrq13, levels = c("2","1"))
levels(data$supfrq13.factor) = c("Daily","Occasionally")

data$supdur13.factor = factor(data$supdur13, levels = c("4","2","1","3"))
levels(data$supdur13.factor) = c("10+ years","1-4 years","Less than 1 year","5-9 years")

data$supfrq14.factor = factor(data$supfrq14, levels = c("2","1"))
levels(data$supfrq14.factor) = c("Daily","Occasionally")

data$supdur14.factor = factor(data$supdur14, levels = c("4","2","3","1"))
levels(data$supdur14.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq15.factor = factor(data$supfrq15, levels = c("2","1"))
levels(data$supfrq15.factor) = c("Daily","Occasionally")

data$supdur15.factor = factor(data$supdur15, levels = c("4","2","3","1"))
levels(data$supdur15.factor) = c("10+ years","1-4 years","5-9 years","Less than 1 year")

data$supfrq16.factor = factor(data$supfrq16, levels = c("2","1"))
levels(data$supfrq16.factor) = c("Daily","Occasionally")

data$supdur16.factor = factor(data$supdur16, levels = c("4","2","1","3"))
levels(data$supdur16.factor) = c("10+ years","1-4 years","Less than 1 year","5-9 years")

data$supfrq17.factor = factor(data$supfrq17, levels = c("2","1"))
levels(data$supfrq17.factor) = c("Daily","Occasionally")

data$supdur17.factor = factor(data$supdur17, levels = c("4","3","2","1"))
levels(data$supdur17.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq18.factor = factor(data$supfrq18, levels = c("1","2"))
levels(data$supfrq18.factor) = c("Occasionally","Daily")

data$supdur18.factor = factor(data$supdur18, levels = c("4","3","2","1"))
levels(data$supdur18.factor) = c("10+ years","5-9 years","1-4 years","Less than 1 year")

data$supfrq19.factor = factor(data$supfrq19, levels = c("1","2"))
levels(data$supfrq19.factor) = c("Occasionally","Daily")

data$supdur19.factor = factor(data$supdur19, levels = c("2","4","1","3"))
levels(data$supdur19.factor) = c("1-4 years","10+ years","Less than 1 year","5-9 years")

data$tufts_food_frequency_v_1.factor = factor(data$tufts_food_frequency_v_1, levels = c("2","0","1"))
levels(data$tufts_food_frequency_v_1.factor) = c("Complete","Incomplete","Unverified")

