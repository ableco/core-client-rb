RSpec.describe Core::Client::V1::Product do
  it ".first returns an instance of Core::Client::V1::Product" do
    product = Core::Client::V1::Product.first
    expect(product).to be_a Core::Client::V1::Product
    expect(product.name).to eq "We The Action"
  end
end
