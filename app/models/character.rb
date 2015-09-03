class Character < ActiveRecord::Base

  belongs_to    :user
  belongs_to    :house
  belongs_to    :gender
  belongs_to    :age

  has_many      :abilities
  has_many      :ability_names, through: :abilities

end
