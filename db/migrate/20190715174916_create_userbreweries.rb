class CreateUserbreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :userbreweries do |t|
      t.integer :user_id
      t.integer :brewery_id

      t.timestamps
    end
  end
end
