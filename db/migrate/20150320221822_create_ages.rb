class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.string      "name"
      t.integer     "age_min"
      t.integer     "age_max"
      t.integer     "ability_xp"
      t.integer     "specialty_xp"
      t.timestamps
    end
  end
end
