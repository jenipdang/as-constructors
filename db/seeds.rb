# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting user/suggestion data..."
User.destroy_all
Suggestion.destroy_all

puts "🌱 Creating users..."
matt = User.create(name: "Matt Chavez", city: "LA", state: "CA")
jennifer = User.create(name: "Jennifer Cruz", city: "Chicago", state: "IL")
chris = User.create(name: "Chris Vu", city: "NYC", state: "NYC")
francis = User.create(name: "Francis Dang", city: "San Jose", state: "CA")
beto = User.create(name: "Beto Alvarez", city: "Monterey Park", state: "CA")
sophie = User.create(name: "Sophie Nguyen", city: "Garden Grove", state: "CA")

puts "🌱 Creating suggestions..."
Suggestion.create(title: "Landscape", description: "Add lighting to your landscape is inexpensive and most are solar-powered. You can also upgrade to standout features like lanterns, lighting that recesses into a walkway, or even faux rocks with integrated lights that seamlessly blend into the landscaping.", user_id: matt.id)
Suggestion.create(title: "Kitchen Essential Appliances", description: "Samsung 22 cu. ft. Family Hub Counter Depth 4-Door Flex Refrigerator in Stainless Steel, gas range, microwave and Smart Linear dishwasher package.", user_id: jennifer.id)
Suggestion.create(title: "Drought-friendly Landscape", description: "Use tiles to replace grass in the backyard not only do it allow for a welcome pop of color, but they're also drought-friendly and easier to maintain.", user_id: chris.id)
Suggestion.create(title: "Front Yard Landscape", description: "Make a garden bed around your mailbox by planting some Creeping Jasmine or annual flowers next to your mailbox. Make a simple border to contain a little bit of mulch. This scape can add color and personality to the end of your driveway.", user_id: jennifer.id)
Suggestion.create(title: "Refreshing Landscape", description: "Upgrading the border on your flowerbeds will change the whole look of the plants and features already there.", user_id: chris.id)
Suggestion.create(title: "Retro Kitchen", description: "Retro aesthetic will give your dream kitchen a chic colors and smart layout. Classic yet modern. A perfect combination of vintage touches with modern appliances is a great way to make a design statement.", user_id: sophie.id)
Suggestion.create(title: "Rustic Bathroom", description: "Decorating your home with a rustic flair is a great way to show appreciation for natural materials, vintage accessories and architectural details that exude character. This includes not being afraid to show off things like wood beams, stone and clay accents and old-school light fixtures.", user_id: francis.id)
Suggestion.create(title: "Bring the Outdoors In", description: "Add sliding glass doors, oversize windows, and NanaWalls, which are bi-folding doors and glass wall system will create accentuate the outside view from the inside.", user_id: beto.id)
Suggestion.create(title: "Get Darker in the Kitchen", description: "Darker hues create a more distinctive, luxurious feeling. Consider pairing rich oak or walnut cabinets with lighter countertops and flooring.", user_id: beto.id)


puts "🌱 Seeding done!"