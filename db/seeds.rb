# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'faker'
# require 'pry'

#get brewery data
array = []
i = 0
page = 200

while i < page do
  response = RestClient.get("https://api.openbrewerydb.org/breweries/?page=#{i}&per_page=20")
    breweries_data = JSON.parse(response)
    array << breweries_data
    puts array
    i += 1
end


brewery_data = array.flatten
# image_url = image_url: Faker::LoremFlickr.image("300x300", ['beer'])

brewery_images = [
"https://images.unsplash.com/photo-1554127959-b04104f23bab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1528823872057-9c018a7a7553?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1542835497-a6813df96ed9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1545878587-bd777063c414?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1532634733-cae1395e440f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1494346480775-936a9f0d0877?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1524587253133-266042ff67d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1532634786-c8f8c46a0062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1554127963-59370787efb4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1554080600-79746e899fbf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1462395418450-4cb21f57af86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1512568566185-1411b88a4030?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1520031559723-e38a5ab03c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1557064262-6acc904bffbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1540665819048-8016647e27f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1480455550638-f32e7af53106?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1498440844592-7528421f9781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1513828170880-00eeeac21306?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1555658636-6e4a36218be7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1548236434-a7f255435aa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1490854099039-edb56bb6a18e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1559818454-d45ecb9c403a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1505949736107-864c55e886ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1558345061-3dfdd54e9adb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1559180786-c6f26acc1111?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1554127971-30cea6366a72?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1528589343425-8762218e468a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1532382473729-3c77e06b3e9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1549133445-092ae9c969c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000",
"https://images.unsplash.com/photo-1526732779586-14c73df166b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=1000"]



brewery_data.each do |brewery|
  Brewery.find_or_create_by!(
    name: brewery["name"],
    street: brewery["street"],
    city: brewery["city"],
    state: brewery["state"],
    postal_code: brewery["postal_code"],
    image_url: brewery_images.shuffle[0],
    longitude: brewery["longitude"],
    latitude: brewery["latitude"],
    phone: brewery["phone"],
    website_url: brewery["website_url"]
    )
end



