class Ability < ActiveRecord::Base

  belongs_to    :ability_name
  belongs_to    :character

  has_many      :specialties
  accepts_nested_attributes_for :specialties

end
