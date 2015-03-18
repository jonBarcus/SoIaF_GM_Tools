require 'rails_helper'

RSpec.describe User do
  it "has a first name" do
    user = User.new({first_name: "Steven"})
    expect(user.first_name).to eq("Steven")
  end
end
