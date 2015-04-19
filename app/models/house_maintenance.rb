module HouseMaintenance

  DEFAULT_HOUSE_NAME = "No House"
  def self.DefaultHouseName
    return DEFAULT_HOUSE_NAME
  end

  # Moves all characters from the house being
  # deleted to the default house.
  #
  # params:
  #   house - The House to delete
  # returns false if the default house is
  #   attempting to be deleted
  def self.PrepareForHouseDeletion(house)
    house_to_delete = nil
    if house.class == House
      house_to_delete = house
    elsif house.class == House.id
      house_to_delete = House.find_by({id: house})
    end

    if house_to_delete == nil
      return false
    else
      no_house = House.find_by(name: DEFAULT_HOUSE_NAME, user_id: house_to_delete.user_id)
      if (house_to_delete.id == no_house.id) || (no_house == nil)
        return false
      end

      house_to_delete.characters.each do |c|
        c.house = no_house
        c.save
      end
    end

    return true
  end
end
