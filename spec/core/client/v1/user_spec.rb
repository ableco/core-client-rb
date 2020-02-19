RSpec.describe Core::Client::V1::User do
  it ".first returns an instance of Core::Client::V1::User" do
    user = Core::Client::V1::User.first
    expect(user).to be_a Core::Client::V1::User
    expect(user.fullName).to eq "Edgar Alfaro"
  end

  it ".find returns an existing user" do
    user = Core::Client::V1::User.find(1)
    expect(user).to be_a Core::Client::V1::User
    expect(user.fullName).to eq "Mike Potter"
  end
end
