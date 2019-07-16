class DropUsersDropUserbreweries < ActiveRecord::Migration[5.2]
  def change
    drop_table :userbreweries do |t|
      t.integer :user_id
      t.integer :brewery_id
    end
  end
end
