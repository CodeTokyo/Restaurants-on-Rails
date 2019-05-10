if Rails.env.development?

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