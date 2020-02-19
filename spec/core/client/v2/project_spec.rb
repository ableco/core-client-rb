RSpec.describe Core::Client::V2::Project do
  it ".first returns an instance of Core::Client::V2::Project" do
    project = Core::Client::V2::Project.first
    expect(project).to be_a Core::Client::V2::Project
    expect(project.name).to eq "v2.0"
  end

  it "includes a related Core::Client::V2::Product resource" do
    product = Core::Client::V2::Project.includes(:product).first.product
    expect(product).to be_a Core::Client::V2::Product
    expect(product.name).to eq "Cerebro"
  end

  it "filters by product_id" do
    project = Core::Client::V2::Project.includes(:product).where(product_id: 1).first
    expect(project).to be_a Core::Client::V2::Project
    expect(project.product.id).to eq "1"
  end
end
