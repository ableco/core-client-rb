RSpec.describe Core::Client::V2::Role do
  it ".first returns an instance of Core::Client::V2::Role" do
    role = Core::Client::V2::Role.first
    expect(role).to be_a Core::Client::V2::Role
    expect(role.title).to eq "CEO"
  end
end
