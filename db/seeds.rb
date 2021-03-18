puts "Cleaning database..."
Garden.destroy_all

puts "Creating gardens..."
zen = Garden.create!(
  name: "My zen garden",
  banner_url: "https://images.unsplash.com/photo-1583901382076-c1738a7af487?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHplbiUyMGdhcmRlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
)
puts "  Created #{zen.name}"

savage = Garden.create!(
  name: "My savage garden",
  banner_url: "https://images.unsplash.com/photo-1564974828368-38ab9421ecbc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80"
)
puts "  Created #{savage.name}"

puts "Creating plants..."

cattleya = Plant.create!(
  name: "Cattleya",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c1/Cattleya_labiata_Orchi_1013.jpg",
  garden: zen
)
puts "  Created #{cattleya.name}"

opuntia = Plant.create!(
  name: "Opuntia Cactus",
  image_url: "https://www.calloways.com/wp-content/uploads/24233.jpg",
  garden: zen
)
puts "  Created #{opuntia.name}"

monstera = Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: zen
)
puts "  Created #{monstera.name}"

philo = Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: savage
)
puts "  Created #{philo.name}"

dieff = Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: savage
)
puts "  Created #{dieff.name}"

puts "Creating tags..."

names = ['orchid', 'flower', 'cactus', 'palm tree', 'fern']

names.each do |name|
  tag = Tag.create!(
    name: name
  )
  puts "  Created #{tag.name} tag."
end

puts "Finished!"
