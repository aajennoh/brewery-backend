class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone
      t.string :website_url
      t.string :image_url
      t.string :longitude
      t.string :latitude
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0
      t.timestamps
    end
  end
end
