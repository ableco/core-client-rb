RSpec.describe Core::Client::V1::Project do
  it ".first returns an instance of Core::Client::V1::Project" do
    project = Core::Client::V1::Project.first
    expect(project).to be_a Core::Client::V1::Project
    expect(project.name).to eq "v5.2"
  end

  it ".find returns an existing project" do
    project = Core::Client::V1::Project.find(114)
    expect(project).to be_a Core::Client::V1::Project
    expect(project.name).to eq "Feb-Mar 2020"
  end
end
