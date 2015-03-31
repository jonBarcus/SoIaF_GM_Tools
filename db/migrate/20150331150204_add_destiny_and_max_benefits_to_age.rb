class AddDestinyAndMaxBenefitsToAge < ActiveRecord::Migration
  def change
    add_column :ages, :destiny_points, :integer
    add_column :ages, :max_benefits, :integer
  end
end
