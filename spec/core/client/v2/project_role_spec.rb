RSpec.describe Core::Client::V2::ProjectRole do
  it ".first returns an instance of Core::Client::V2::ProjectRole" do
    project_role = Core::Client::V2::ProjectRole.first
    expect(project_role).to be_a Core::Client::V2::ProjectRole
    expect(project_role.name).to eq "Software Engineer"
  end
end
