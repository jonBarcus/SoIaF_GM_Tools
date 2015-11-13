module HouseMaintenance

  DEFAULT_HOUSE_NAME = "No House"
  def self.DefaultHouseName
    return DEFAULT_HOUSE_NAME
  end

  DEFAULT_REGION_NAME = "The Seven Kingdoms"
  def self.DefaultHouseRegionId
    return Region.find_by({name: DEFAULT_REGION_NAME}).id;
  end

  # Checks if the given house is the default house
  #
  # params:
  #   house - The House to delete (as a string or House)
  # returns true if house is the default House
  def self.IsDefaultHouse(house)
    house_name = nil

    if house.class == String
      house_name = house
    elsif house.class == House
      house_name = house.name
    elsif house.class == House.id
      the_house = House.find_by({id: house})
      house_name = the_house.name
    end

    return house_name != nil && house_name == DEFAULT_HOUSE_NAME
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
      if (no_house == nil) || (house_to_delete.id == no_house.id)
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
