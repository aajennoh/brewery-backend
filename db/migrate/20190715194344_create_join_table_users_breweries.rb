class CreateJoinTableUsersBreweries < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :breweries do |t|
      t.index :user_id
      t.index :brewery_id

    end
  end
end
