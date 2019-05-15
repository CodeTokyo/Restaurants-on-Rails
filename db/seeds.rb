if Rails.env.development?

Customer.destroy_all
Restaurant.destroy_all

restaurants = Restaurant.create([ 
  {name: 'Iron Spike', email: 'ironspike@example.com', password: 'ironspike1', password_confirmation: 'hj8k;cvE'}, 
  {name: 'Jimmy\'s Pizza',email: 'jimmys@example.com', password: 'jimmys1', password_confirmation: 'jimmys1'}, 
  {name: 'Whiskey Barrel',email: 'whiskeybarrel@example.com', password: 'whiskey1', password_confirmation: 'whiskey1'}, 
  {name: 'Baked',email: 'baked@example.com', password: 'baked1', password_confirmation: 'baked1'}, 
  {name: 'Koreana',email: 'koreana@example.com', password: 'koreana1', password_confirmation: 'koreana1'}, 
  {name: 'Globar',email: 'globar@example.com', password: 'globar1', password_confirmation: 'globar1'}
])

whiskey_barrel = Restaurant.find_by_email("whiskeybarrel@example.com")
koreana = Restaurant.find_by_email("koreana@example.com")
jimmys = Restaurant.find_by_email("jimmys@example.com")
baked = Restaurant.find_by_email("baked@example.com")
globar = Restaurant.find_by_email("globar@example.com")
ironspike = Restaurant.find_by_email("ironspike@example.com")


# //Jimmy's Appetizers//
jimmys.meals.create([
  {name:"Onion Rings (half)", description: "Our very own homemade hay stack onion rings",
   price: 325},
  {name:"Onion Rings (full)", description: "Our very own homemade hay stack onion rings", 
    price: 650},
  {name:"Macaroni Bites", description: "Delicious, deep fried macaroni and cheese served with ranch", 
    price: 850},
  {name:"Wings (Bone-In or Boneless)", description: "Choice of hot, mild BBQ, or honey served with Texas toast and ranch or blue cheese dressing", 
    price: 900},
  {name:"Taco Bits", description: "10 mini tacos served with cheese taco sauce", 
    price: 650},
  {name:"Fried Green Beans", description: "Deep fried battened green beans served with ranch", 
    price: 650},
  {name:"Pretzel Sticks", description: "Stick pretzels served warm with salt and a side of melted cheese", 
    price: 750},
  {name:"Pork Nachos", description: "Tortilla chips topped with shredded pork, melted cheddar cheese, tomatoes, black olives, sour cream, and spicy jalapeños", 
    price: 950},
  {name:"Portobello Strips", price: 825},
  {name:"Mozzarella Sticks", price: 750},
  {name:"The Jimmy Combo", description: "mozzarella sticks, fried green beans, breaded dill pickles, and taco bits", 
    price: 850}
])

# //Jimmy's Grilled Cheese//
jimmys.meals.create([
  {name:"Buddy Holly", description: "A classic favorite - grilled cheese, A decadent, cheesy treat",
   price: 450},
  {name:"The Fonz", description: "Grilled cheese with bacon, tomatoes, grilled ham, and mayo", 
    price: 600},
  {name:"The Richie C.", description: "Grilled cheese and fried chicken strips", 
    price: 650},
  {name:"Ralph 'Mouth'", description: "Stacked grilled cheeses with a 1/3 lb. burger in between", 
    price: 650}
])

# //Jimmy's Grilled Tenderloins//
jimmys.meals.create([
  {name:"Original Jimmy Tenderloin", description: "Our breaded and fried signature tenderloin",
   price: 695},
  {name:"Grilled Tenderloin", description: "Grilled tenderloin with your choice of toppings", 
    price: 795},
  {name:"The Pizzaloin", description: "Jimmy's grilled tenderloin topped with our house made, signature sauce, pepperoni, and mozzarella cheese", 
    price: 800}
])

# //Jimmy's Burgers//
jimmys.meals.create([
  {name:"Hamburger", description: "1/3 lb. delicious, Angus beef",
   price: 625},
  {name:"Wyatt E. - Bang!", description: "Hot pepper cheese, grilled mushrooms, and spicy horsey sauce topped with our haystack onion rings", 
    price: 800},
  {name:"Rat Pack", description: "1/3 lb. burger topped with pulled pork, grilled ham, bacon, and your choice of cheese", 
    price: 900},
  {name:"Towering Inferno", description: "(2) 1/3 lb. burgers stocked with pepper jack cheese and spicy jalapeños", 
    price: 975},
  {name:"Paula D. - Queen of the South", description: "1/3 lb. burger with Swiss cheese, bacon, and our house made coleslaw", 
    price: 700},
  {name:"Book 'em Danno", description: "1/3 lb. burger topped with Swiss cheese and pineapple", 
    price: 700},
  {name:"The King", description: "1/3 lb. Angus burger topped with Swiss cheese and grilled mushrooms", 
  price: 700},
  {name:"The Balboa 1, 2 Punch", description: "1/3 lb. Angus burger seasoned with a Cajun kick and topped with blue cheese", 
  price: 700},
  {name:"We Love Lucy", description: "1/3 lb. Angus burger served on Texas toast, topped with Swiss cheese, grilled onions, and 1000 Island dressing", 
  price: 750}
])

# //Jimmy's Sandwiches//
jimmys.meals.create([
  {name:"Film Star Betty G.", description: "Breaded deep fried chicken breast topped with bacon and your choice of cheese",
   price: 725},
  {name:"The Comic Betty W.", description: "Breaded deep fried chicken dipped in hot or mild sauce, topped with bacon and your choice of cheese", 
    price: 795},
  {name:"Greed Chicken Breast", description: "Grilled chicken breast served with lettuce, tomato, and mayo", 
    price: 600},
  {name:"Chicken Strips", description: "Breaded, deep fried chicken tenders served with your choice of BBQ sauce or ranch dressing", 
    price: 900},
  {name:"Pulled Pork Sandwich", description: "Pulled pork sandwich served with a side of coleslaw", 
    price: 725},
  {name:"Fish Sandwich",
    price: 700}
])

# //Jimmy's Pizza//
jimmys.meals.create([
  {name:"Taco Pizza (Large)", description: "Beef, Chili Beans, Cheddar Cheese, Lettuce, Tomatoes, Chips",
   price: 2045},
  {name:"Taco Deluxe Pizza (Large)", description: "Beef, Chili Beans, Cheddar Cheese, Lettuce, Tomatoes, Chips", 
    price: 2095},
  {name:"Garlic Tomato-Basil (Large)", description: "Mozzarella, Tomatoes, Garlic & Italian Spices", 
    price: 2030},
  {name:"BBQ Chicken (Large)", description: "Marinated Chicken, Red Onion, BBQ sauce", 
    price: 2045},
  {name:"Chicken Wing Taco Pizza (Large)", description: "Marinated Chicken, Beans, Lettuce, Cheddar Cheese, Tomatoes, Chips", 
    price: 2095},
  {name:"Vegetarian Pizza (Large)", description: "Mushrooms, Green Peppers, Onions, Black Olives, Tomatoes",
    price: 2015},
  {name:"Hawaiian Pizza (Large)", description: "Ham & Pineapple", 
    price: 1955},
  {name:"BLT Pizza (Large)",
    price: 1900},
  {name:"Jimmy's Supreme (Large)", description: "Sausage, Mushrooms, Onions, Ham, Green Peppers, Pepperoni, Black Olives", 
    price: 2015},
  {name:"Bacon Cheeseburger Pizza (Large)",
    price: 2025},
  {name:"Meat Eaters Pizza (Large)", description: "Bacon, Italian Sausage, Hamburger, Pepperoni, Ham", 
    price: 2060},
  {name:"Chicken Wing (Large)", description: "Marinated Chicken, Spices, Cheese", 
    price: 2045},
  {name:"Chicken Wing Veggie (Large)", description: "Marinated Chicken, Green Peppers, Onions, Black Olives, Mushrooms, Tomatoes", 
    price: 2045}
])

# //Jimmy's Sides//
jimmys.meals.create([
  {name:"French Fries",
   price: 195},
  {name:"Cajun Fries",
    price: 195},
  {name:"Cheesy Fries",
    price: 250},
  {name:"Cajun Cheesy Fries",
    price: 250},
  {name:"Sweet Potato Fries",
    price: 250},
  {name:"Coleslaw",
    price: 150},
  {name:"Cottage Cheese",
    price: 150},
  {name:"Side Salad",
    price: 250}
])

# //Koreana Soups//
koreana.meals.create([ 
 {name:"Kimchi Jigae", description: "Spicy kimchi soup with pork and tofu", price: 895}, 
 {name:"DoenJang Jigae", description: "Bean paste soup with tofu and vegetables(can be made not spicy)", price: 895}, 
 {name:"Mandu Guk", description: "Vegetable dumplings in beef broth", price: 895},
 {name:"Mandu Guk", description: "Vegetable dumplings in beef broth", price: 895},
])

# //Koreana Fried Rice//
koreana.meals.create([ 
 {name:"Chicken Fried Rice", price: 795},
 {name:"Ham Fried Rice", price: 795},
 {name:"Beef Fried Rice", price: 895},
 {name:"Pork Fried Rice", price: 795},
 {name:"Kimchi Fried Rice", price: 695}
])

# //Koreana Entrees//
koreana.meals.create([ 
  {name:"BiBimBap", 
  description: "bowl of warm white rice topped with vegetables, beef, a fried egg, and hot pepper paste", 
  price: 995},
  {name:"Dol Sot BiBimBap", 
  description: "Hot stonebowl of warm white rice topped with sauteed and seasoned vegetables, beef, a fried egg, and hot pepper paste", 
  price: 1095},
  {name:"Jap Chae", 
  description: "Stir-fried sweet potato vermicelli noodles with vegetables in a rich soy based sauce", 
  price: 995},
  {name:"Beef Bulgogi", 
  description: "grilled marinated beef", 
  price: 1195},
  {name:"Pork Bulgogi", 
  description: "grilled spicy marinated pork", 
  price: 1095},
  {name:"Chicken Bulgogi", 
  description: "grilled spicy marinated chicken", 
  price: 1095},
  {name:"LA Kalbi", 
  description: "grilled cut beef short ribs with marinated sauce", 
  price: 1295}
])

# //Koreana Fried Appetizers//
koreana.meals.create([ 
 {name:"Korean Roll (kimpop)(1)", description: "Vegetables, egg, and seasoned rice rolled with seawood",
  price: 495},
 {name:"Korean Roll (kimpop) with ham", description: "Vegetables, egg, and seasoned rice rolled with seawood and ham",
  price: 595},
 {name: "Korean Roll (kimpop) with bulgogi", description: "Vegetables, egg, and seasoned rice rolled with seawood and bulgogi",
  price: 695},
  {name: "Korean Roll (kimpop) with bulgogi", description: "Vegetables, egg, and seasoned rice rolled with seawood and bulgogi",
  price: 695},
  {name: "Pan Fried Vegetable Dumpling (6)", 
  price: 695},
  {name: "Pan Fried Pork Dumpling (6)", 
  price: 795},
  {name: "Kim's Egg Rolls (1)", description: "Homemade egg rolls with cabbage, beef, green onion, and carrots", 
  price: 150},
  {name: "Pan Fried Tofu", description: "Tofu pan friend topped with a side of hot soy based sauce", 
  price: 695},
  {name: "Steamed Egg", description: "Steamed egg with green onion in hot pot", 
  price: 495}
])

# //Whiskey Barrel Appetizers//
whiskey_barrel.meals.create([ 
 {name:"Onion String", price: 495}, 
 {name:"Pick 3 Sampler", price: 1495}, 
 {name:"Fried Pickle Spears", price: 595}, 
 {name:"Country Fried Steak Bites", price: 895}, 
 {name:"Onion String", price: 495}, 
 {name:"Friend Green Tomatoes", price: 695}, 
 {name:"Sharable Pretzel", price: 795}, 
 {name:"Wings (6)", price: 695}, 
 {name:"Wings (12)", price: 995}, 
 {name:"Wings (24)", price: 1895}
])

# //Whiskey Barrel Sandwiches//
whiskey_barrel.meals.create([ {name:"Regular Burger", price: 1195}, 
 {name:"Whiskey Burger", price: 1295}, 
 {name:"Smoking' Whiskey BBQ Burger", price: 1295}, 
 {name:"Pulled Pork", price: 895}, 
 {name:"Tenderloin", price: 995}, 
 {name:"Chicken Sandwich", price: 895}
])

# //Whiskey Barrel Soups & Salads//
whiskey_barrel.meals.create([ 
 {name:"Soup of the Day", price: 495}, 
 {name:"Side Salad", price: 395}, 
 {name:"Chef Salad", price: 695}, 
 {name:"Grilled Chicken Salad", price: 795}, 
 {name:"Buffalo Chicken Salads", price: 795}, 
 {name:"BLT Salad", price: 795}
])

# //Whiskey Barrel Dinner//
whiskey_barrel.meals.create([
 {name:"New York Strip", price: 1595}, 
 {name:"Filet Mignon", price: 2295}, 
 {name:"Ribeye", price: 1595}, 
 {name:"Country Fried Steak", price: 1195}, 
 {name:"Hamburger Steak", price: 1195},
 {name:"Chicken Strips", price: 995},
 {name:"Fried Chicken", price: 1195},
 {name:"Catfish Dinner", price: 1195},
 {name:"Pork Chop Dinner", price: 1595}
])

# //Whiskey Barrel Family Style//
whiskey_barrel.meals.create([
 {name:"Fried Chicken Dinner for 4", price: 3995}, 
 {name:"Country Fried Steak Dinner for 4", price: 3995}, 
 {name:"Catfish Dinner for 4", price: 3995}, 
])

# //Whiskey Barrel Sides//
whiskey_barrel.meals.create([
 {name:"Fresh Cut Fries", price: 295}, 
 {name:"Baked Potatoes", price: 195}, 
 {name:"Mashed Potatoes", price: 195},
 {name:"Green Beans", price: 195},
 {name:"Mac N Cheese", price: 295}, 
 {name:"Coleslaw", price: 195},
 {name:"Baked Beans", price: 195},
 {name:"Cottage Cheese", price: 195},
])

# //Whiskey Barrel Kids Menu//
whiskey_barrel.meals.create([
 {name:"Kids Fried Steak Bites", price: 595}, 
 {name:"Kids Mac N Cheese", price: 595}, 
 {name:"Kids Cheese Burger", price: 595},
 {name:"Kids Chicken Strips", price: 595}
]) 
puts "Development database ready for use."

else 

puts "Do not run this in production!"

end