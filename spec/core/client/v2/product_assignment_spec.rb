RSpec.describe Core::Client::V2::ProductAssignment do
  it ".first returns an instance of Core::Client::V2::ProductAssignment" do
    product_assignment = Core::Client::V2::ProductAssignment.first
    expect(product_assignment).to be_a Core::Client::V2::ProductAssignment
    expect(product_assignment.assigneeId).to eq 82
    expect(product_assignment.assigneeType).to eq "User"
  end
end
