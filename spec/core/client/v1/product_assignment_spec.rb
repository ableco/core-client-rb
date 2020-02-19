RSpec.describe Core::Client::V1::ProductAssignment do
  it ".first returns an instance of Core::Client::V1::ProductAssignment" do
    product_assignment = Core::Client::V1::ProductAssignment.first
    expect(product_assignment).to be_a Core::Client::V1::ProductAssignment
    expect(product_assignment.assigneeId).to eq 198
    expect(product_assignment.assigneeType).to eq "User"
  end

  it "filters by product_id, start_date and end_date" do
    date = Date.today
    product_assignment = Core::Client::V1::ProductAssignment.where(
      product_id: 5,
      start_date: date.beginning_of_month,
      end_date: date.end_of_month,
    ).first
    expect(product_assignment).to be_a Core::Client::V1::ProductAssignment
    expect(date.beginning_of_month..date.end_of_month).to cover(Date.parse(product_assignment.periodStart))
  end
end
