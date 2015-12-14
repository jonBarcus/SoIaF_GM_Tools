class Character < ActiveRecord::Base

  belongs_to    :user
  belongs_to    :house
  belongs_to    :gender
  belongs_to    :age

  has_many      :abilities
  has_many      :specialties
  has_many      :ability_names, through: :abilities
  has_many      :specialty_names, through: :specialties

  accepts_nested_attributes_for :abilities
  # accepts_nested_attributes_for :ability_names

end
