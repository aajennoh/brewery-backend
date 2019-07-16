class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :postal_code, :phone, :website_url, :longitude, :latitude
  has_many :users
end
