class Character < ActiveRecord::Base

  belongs_to    :user
  belongs_to    :house
  belongs_to    :gender
  belongs_to    :age

end
