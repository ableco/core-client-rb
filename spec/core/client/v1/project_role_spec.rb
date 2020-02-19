RSpec.describe Core::Client::V1::ProjectRole do
  it ".first returns an instance of Core::Client::V1::ProjectRole" do
    project_role = Core::Client::V1::ProjectRole.first
    expect(project_role).to be_a Core::Client::V1::ProjectRole
    expect(project_role.name).to eq "Software Engineer"
  end
end
