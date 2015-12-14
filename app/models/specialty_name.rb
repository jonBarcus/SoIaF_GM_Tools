class SpecialtyName < ActiveRecord::Base

  has_many    :specialties
  has_many    :characters, through: :specialties

end
