RSpec.describe Core::Client::V1::ProductInvestment do
  skip ".first returns an instance of Core::Client::V1::ProductInvestment" do
    product_investment = Core::Client::V1::ProductInvestment.first
    expect(product_investment).to be_a Core::Client::V1::ProductInvestment
    expect(product_investment.assigneeId).to eq 82
    expect(product_investment.assigneeType).to eq "User"
  end
end
