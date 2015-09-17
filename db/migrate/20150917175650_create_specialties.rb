class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.integer    :character_id
      t.integer    :specialty_name_id
      t.integer    :ability_id
      t.timestamps
    end
  end
end
