require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "Name",
      :description => "MyText",
      :project_contact => "Project Contact",
      :project_email => "Project Email",
      :app_type => "App Type",
      :design_needed => false,
      :inspiration => "MyText",
      :budget_range => "Budget Range",
      :about_the_project => "MyText",
      :potential_new => false,
      :paid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Project Contact/)
    expect(rendered).to match(/Project Email/)
    expect(rendered).to match(/App Type/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Budget Range/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
