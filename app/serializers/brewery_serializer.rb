class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :postal_code, :phone, :website_url, :longitude, :latitude, :likes, :dislikes
  has_many :users
end
