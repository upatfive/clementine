require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
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
      ),
      Project.create!(
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
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Project Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Project Email".to_s, :count => 2
    assert_select "tr>td", :text => "App Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Budget Range".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
