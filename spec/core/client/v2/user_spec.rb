RSpec.describe Core::Client::V2::User do
  it ".first returns an instance of Core::Client::V2::User" do
    user = Core::Client::V2::User.first
    expect(user).to be_a Core::Client::V2::User
    expect(user.fullName).to eq "Mike Potter"
  end

  it ".find returns an existing user" do
    user = Core::Client::V2::User.find(1)
    expect(user).to be_a Core::Client::V2::User
    expect(user.fullName).to eq "Mike Potter"
  end
end
