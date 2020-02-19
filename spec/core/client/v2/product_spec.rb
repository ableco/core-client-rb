RSpec.describe Core::Client::V2::Product do
  it ".first returns an instance of Core::Client::V2::Product" do
    product = Core::Client::V2::Product.first
    expect(product).to be_a Core::Client::V2::Product
    expect(product.name).to eq "Cerebro"
  end
end
