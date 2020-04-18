RSpec.describe Core::Client::V2::Cheer do
  it ".first returns an instance of Core::Client::V2::Cheer" do
    cheer = Core::Client::V2::Cheer.first
    expect(cheer).to be_a Core::Client::V2::Cheer
    expect(cheer.type).to eq "cheers" 
  end

end
