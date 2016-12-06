require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyText",
      :project_contact => "MyString",
      :project_email => "MyString",
      :app_type => "MyString",
      :design_needed => false,
      :inspiration => "MyText",
      :budget_range => "MyString",
      :about_the_project => "MyText",
      :potential_new => false,
      :paid => false
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_project_contact[name=?]", "project[project_contact]"

      assert_select "input#project_project_email[name=?]", "project[project_email]"

      assert_select "input#project_app_type[name=?]", "project[app_type]"

      assert_select "input#project_design_needed[name=?]", "project[design_needed]"

      assert_select "textarea#project_inspiration[name=?]", "project[inspiration]"

      assert_select "input#project_budget_range[name=?]", "project[budget_range]"

      assert_select "textarea#project_about_the_project[name=?]", "project[about_the_project]"

      assert_select "input#project_potential_new[name=?]", "project[potential_new]"

      assert_select "input#project_paid[name=?]", "project[paid]"
    end
  end
end
