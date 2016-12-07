require 'rails_helper'

RSpec.describe "project_phases/new", type: :view do
  before(:each) do
    assign(:project_phase, ProjectPhase.new(
      :title => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders new project_phase form" do
    render

    assert_select "form[action=?][method=?]", project_phases_path, "post" do

      assert_select "input#project_phase_title[name=?]", "project_phase[title]"

      assert_select "textarea#project_phase_description[name=?]", "project_phase[description]"

      assert_select "input#project_phase_project_id[name=?]", "project_phase[project_id]"
    end
  end
end
