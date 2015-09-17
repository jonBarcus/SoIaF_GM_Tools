class AddAbilityNameIdToSpecialtyNames < ActiveRecord::Migration
  def change
    add_column  :specialty_names, :ability_name_id, :integer
  end
end
