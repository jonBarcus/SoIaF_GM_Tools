# This module will run upon NEW CHARACTER creation.
# Its function is to create all the abilities with the
# default value of 2, regardless of any of the other
# character attributes (i.e. age, gender, etc.)

# module NewCharacterAbilities

#   def self.new(id)

#     ability_names = AbilityName.all

#     ability_names.each do |a|
#       Ability.create(character_id: id,
#                      ability_name_id: a.id)
#     end
#   end

# end

module CharacterMaintenance

  def self.newCharacterAbilities(id)

    ability_names = AbilityName.all

    # Rank is set to 2
    ability_names.each do |a|
      Ability.create(character_id: id,
                     ability_name_id: a.id,
                     rank: 2)
    end
  end


end
