class AbilityName < ActiveRecord::Base

  has_many    :abilities
  has_many    :characters, through: :abilities

end
