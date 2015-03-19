require 'rails_helper'

RSpec.describe House do
  let(:house) {House.new({name: "Testees",
                          region_id:  1,
                          history:    "This is a great house.",
                          user_id:    17})
                          }
  it "has a name of 'Testees'" do
    expect(house.name).to eq("Testees")
  end
  it "has a region_id of 1" do
    expect(house.region_id).to eq(1)
  end
  it "has a history that includes 'great'" do
    expect(house.history).to include(*"great")
  end
  it "has a user_id of 17" do
    expect(house.user_id).to eq(17)
  end

end
