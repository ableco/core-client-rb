RSpec.describe Core::Client::V1::ProductAllocation do
  it ".first returns an instance of Core::Client::V1::ProductAllocation" do
    product_allocation = Core::Client::V1::ProductAllocation.first
    expect(product_allocation).to be_a Core::Client::V1::ProductAllocation
    expect(product_allocation.assigneeId).to eq 117
    expect(product_allocation.assigneeType).to eq "User"
  end

  it "filters by product_id, start_date and end_date" do
    date = Date.today
    product_allocation = Core::Client::V1::ProductAllocation.where(
      product_id: 5,
      start_date: date.beginning_of_month,
      end_date: date.end_of_month
    ).first
    expect(product_allocation).to be_a Core::Client::V1::ProductAllocation
    expect(date.beginning_of_month..date.end_of_month).to cover(
      Date.parse(product_allocation.periodStart)
    )
  end
end
