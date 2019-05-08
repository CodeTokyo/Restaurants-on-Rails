if Rails.env.development?
 
restaurants = Restaurant.create([ 
  {email: 'ironspike@example.com', password: 'ironspike1', password_confirmation: 'hj8k;cvE'}, 
  {email: 'jimmys@example.com', password: 'jimmys1', password_confirmation: 'jimmys1'}, 
  {email: 'whiskeybarrel@example.com', password: 'whiskey1', password_confirmation: 'whiskey1'}, 
  {email: 'baked@example.com', password: 'baked1', password_confirmation: 'baked1'}, 
  {email: 'koreana@example.com', password: 'koreana1', password_confirmation: 'koreana1'}, 
  {email: 'globar@example.com', password: 'globar1', password_confirmation: 'globar1'}
])

whiskey_barrel = Restaurant.find_by_email("whiskeybarrel@example.com")

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