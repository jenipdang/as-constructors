# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting user/suggestion data..."
User.destroy_all
Suggestion.destroy_all

puts "🌱 Creating users..."
matt = User.create(name: "Matt Chavez", email: "mattchavez@gmail.com", city: "LA", state: "CA", username: "mattchavez", password: "Matty@1234", role: 2 )
jennifer = User.create(name: "Jennifer Cruz", email: "jennifer19@yahoo.com", city: "Chicago", state: "IL", username: "jennifercruz", password: "Jennifer@1234", role:2)
chris = User.create(name: "Chris Vu", email: "chrisVu@gmail.com", city: "NYC", state: "NY", username: "chrisvu", password: "Chris@1234", role: 2)
francis = User.create(name: "Francis Dang", email: "srBark2015@gmail.com", city: "San Jose", state: "CA", username: "francisdang", password: "Francis@1234", role: 1)
beto = User.create(name: "Beto Alvarez", email: "beto2012@gmail.com", city: "Monterey Park", state: "CA", username: "betoalvarez", password: "Beto@1234", role: 2)
sophie = User.create(name: "Sophie Nguyen", email: "sophie-ng@gmail.com", city: "Garden Grove", state: "CA", username: "sophienguyen", password: "Sophie@1234", role: 2)

puts "🌱 Creating suggestions..."
Suggestion.create(title: "Landscape", description: "Add lighting to your landscape is inexpensive and most are solar-powered. You can also upgrade to standout features like lanterns, lighting that recesses into a walkway, or even faux rocks with integrated lights that seamlessly blend into the landscaping.", category: "Landscape", like: 6, user: matt)
Suggestion.create(title: "Kitchen Essential Appliances", description: "Samsung 22 cu. ft. Family Hub Counter Depth 4-Door Flex Refrigerator in Stainless Steel, gas range, microwave and Smart Linear dishwasher package.", category: "Kitchen", like: 9, user: jennifer)
Suggestion.create(title: "Drought-friendly Landscape", description: "Use tiles to replace grass in the backyard not only do it allow for a welcome pop of color, but they're also drought-friendly and easier to maintain.", category: "Landscape", like: 50, user: chris)
Suggestion.create(title: "Front Yard Landscape", description: "Make a garden bed around your mailbox by planting some Creeping Jasmine or annual flowers next to your mailbox. Make a simple border to contain a little bit of mulch. This scape can add color and personality to the end of your driveway.", category: "Landscape", like: 10, user: jennifer)
Suggestion.create(title: "Refreshing Landscape", description: "Upgrading the border on your flowerbeds will change the whole look of the plants and features already there.", category: "Landscape", like: 9, user: chris)
Suggestion.create(title: "Retro Kitchen", description: "Retro aesthetic will give your dream kitchen a chic colors and smart layout. Classic yet modern. A perfect combination of vintage touches with modern appliances is a great way to make a design statement.", category: "Kitchen", like: 1, user: sophie)
Suggestion.create(title: "Rustic Bathroom", description: "Decorating your home with a rustic flair is a great way to show appreciation for natural materials, vintage accessories and architectural details that exude character. This includes not being afraid to show off things like wood beams, stone and clay accents and old-school light fixtures.", category: "Bathroom", like: 30, user: francis)
Suggestion.create(title: "Bring the Outdoors In", description: "Add sliding glass doors, oversize windows, and NanaWalls, which are bi-folding doors and glass wall system will create accentuate the outside view from the inside.", category: "Landscape", like: 5, user: beto)
Suggestion.create(title: "Get Darker in the Kitchen", description: "Darker hues create a more distinctive, luxurious feeling. Consider pairing rich oak or walnut cabinets with lighter countertops and flooring.", category: "Kitchen", like: 8, user: beto)
Suggestion.create(title: "Tankless Water Heater", description: "The EcoSmart Tankless Water Heater gives you 2x more hot water, save space and save money.", category: "Appliance", like: 0, user: beto)


puts "🌱 Seeding done!"