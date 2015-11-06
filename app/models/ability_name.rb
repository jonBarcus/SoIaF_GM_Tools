class AbilityName < ActiveRecord::Base

  has_many    :abilities
  has_many    :characters, through: :abilities

  # accepts_nested_attributes_for :abilities

end
