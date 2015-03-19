class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string        "name"
      t.integer       "region_id"
      t.text          "history"
      t.integer       "user_id"
      t.timestamps
    end
  end
end
