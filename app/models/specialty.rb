class Specialty < ActiveRecord::Base

  belongs_to    :specialty_name
  belongs_to    :character
  belongs_to    :ability

end
