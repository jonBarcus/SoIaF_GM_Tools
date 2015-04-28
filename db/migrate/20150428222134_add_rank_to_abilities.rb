class AddRankToAbilities < ActiveRecord::Migration
  def change
    add_column :abilities, :rank, :integer
  end
end
