require 'rails_helper'

#TODO As we add in the Abilities and Specialties add tests

RSpec.describe Character do
  let(:new_character) {Character.new({name:       "Test",
                                      surname:    "Character",
                                      gender_id:  2,
                                      house_id:   1})}
  it "Character has a first name of 'Test'" do
    expect(new_character.name).to eq("Test")
  end

  it "Character has a surname of 'Character'" do
    expect(new_character.surname).to eq("Character")
  end

  it "Character has a gender of 'Female'" do
    expect(new_character.gender.name).to eq("Female")
  end

  it "Character has a house name of 'Testee'" do
    binding.pry
    expect(new_character.house.name).to eq("Testee")
  end

end
