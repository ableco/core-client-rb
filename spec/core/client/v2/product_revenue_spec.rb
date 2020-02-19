RSpec.describe Core::Client::V2::ProductRevenue do
  skip ".first returns an instance of Core::Client::V2::ProductRevenue" do
    product_revenue = Core::Client::V2::ProductRevenue.first
    expect(product_revenue).to be_a Core::Client::V2::ProductRevenue
    expect(product_revenue.assigneeId).to eq 82
    expect(product_revenue.assigneeType).to eq "User"
  end
end
