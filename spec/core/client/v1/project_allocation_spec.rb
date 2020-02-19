RSpec.describe Core::Client::V1::ProjectAllocation do
  it ".first returns an instance of Core::Client::V1::ProjectAllocation" do
    project_allocation = Core::Client::V1::ProjectAllocation.first
    expect(project_allocation).to be_a Core::Client::V1::ProjectAllocation
    expect(project_allocation.assigneeId).to eq 18
    expect(project_allocation.assigneeType).to eq "User"
  end

  it "filters by project_id" do
    date = Date.today
    project_allocation = Core::Client::V1::ProjectAllocation.where(
      project_id: 114
    ).first
    expect(project_allocation).to be_a Core::Client::V1::ProjectAllocation
    expect(project_allocation.projectId).to eq 114

  end
end
