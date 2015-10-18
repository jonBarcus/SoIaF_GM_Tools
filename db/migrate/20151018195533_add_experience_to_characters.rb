class AddExperienceToCharacters < ActiveRecord::Migration
  def change
    add_column  :characters, :available_experience, :integer
  end
end
