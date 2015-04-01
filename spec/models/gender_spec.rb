require 'rails_helper'

RSpec.describe Gender do
  let(:gender_male) {Gender.new({name: "Male"})}
  let(:gender_female) {Gender.new({name: "Female"})}

  it "Male gender has a name of 'Male'" do
    expect(gender_male.name).to eq("Male")
  end

  it "Female gender has a name of 'Female'" do
    expect(gender_female.name).to eq("Female")
  end

end
