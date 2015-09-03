class Ability < ActiveRecord::Base

  belongs_to    :ability_name
  belongs_to    :character

end
