RSpec.describe Core::Client::V1::Role do
  it ".first returns an instance of Core::Client::V1::Role" do
    role = Core::Client::V1::Role.first
    expect(role).to be_a Core::Client::V1::Role
    expect(role.title).to eq "Operations Manager"
  end
end
