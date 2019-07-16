# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
# require 'pry'

#get brewery data
array = []
i = 0
page = 8029

while i < page do
  response = RestClient.get("https://api.openbrewerydb.org/breweries/#{i+1}")
    breweries_data = JSON.parse(response)
    array << breweries_data
    puts array
    i += 1

end

brewery_data = array.flatten

brewery_data.each do |brewery|
  Brewery.create!(name: brewery["name"],
    street: brewery["street"],
    city: brewery["city"],
    state: brewery["state"],
    postal_code: brewery["postal_code"],
    longitude: brewery["longitude"],
    latitude: brewery["latitude"],
    phone: brewery["phone"],
    website_url: brewery["website_url"])
end