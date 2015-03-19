require 'rails_helper'

RSpec.describe Region do
  let(:test_region) {Region.new({name: "The Stormlands"})}

  it "has a name of 'The Stormlands'" do
    expect(test_region).to eq("The Stormlands")
  end


end
