require 'rails_helper'

RSpec.describe User do
  it "has a first name" do
    user = User.new({first_name: "Steven"})
    expect(user.first_name).to eq("Steven")
  end
  it "has a last name" do
    user = User.new({last_name: "Stevenson"})
    expect(user.last_name).to eq("Stevenson")
  end
end
