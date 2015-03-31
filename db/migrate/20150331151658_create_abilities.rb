class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer   :character_id
      t.integer   :ability_name_id
    end
  end
end
