require 'rails_helper'

RSpec.describe User do
  let(:user) {User.new({first_name: "Steven",
                        last_name:  "Stevenson",
                        email:      "test@test.com",
                        is_admin:   false}
                        )}

  it "has a first name" do
    expect(user.first_name).to eq("Steven")
  end
  it "has a last name" do
    expect(user.last_name).to eq("Stevenson")
  end
  it "has an e-mail address" do
    expect(user.email).to eq("test@test.com")
  end
  it "is not an admin" do
    expect(user.is_admin).to be_falsy
  end
end
