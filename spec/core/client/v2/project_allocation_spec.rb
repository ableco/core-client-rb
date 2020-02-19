RSpec.describe Core::Client::V2::ProjectAllocation do
  it ".first returns an instance of Core::Client::V2::ProjectAllocation" do
    project_allocation = Core::Client::V2::ProjectAllocation.first
    expect(project_allocation).to be_a Core::Client::V2::ProjectAllocation
    expect(project_allocation.assigneeId).to eq 18
    expect(project_allocation.assigneeType).to eq "User"
  end
end
