[["Classic Burger Joint", "Bachoura, Beirut, Lebanon"], ["Mayrig", "Downtown Beirut, Lebanon"], ["cooqley", "Dbayeh, Lebanon"]].each do |restaurant|

  created_restaurant = Restaurant.create!({
    name: restaurant.first,
    address: restaurant.last
  })

  puts "Created restaurant: #{created_restaurant.name}"

end
