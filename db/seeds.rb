puts "Cleaning database..."
Garden.destroy_all

puts "Creating gardens..."
garden1 = Garden.create!(
  name: "My zen garden",
  banner_url: "https://images.unsplash.com/photo-1583901382076-c1738a7af487?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHplbiUyMGdhcmRlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
)
puts "  Created #{garden1.name}"

garden2 = Garden.create!(
  name: "My savage garden",
  banner_url: "https://images.unsplash.com/photo-1564974828368-38ab9421ecbc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80"
)
puts "  Created #{garden2.name}"

puts "Finished!"
