require 'rails_helper'

RSpec.describe "project_phases/edit", type: :view do
  before(:each) do
    @project_phase = assign(:project_phase, ProjectPhase.create!(
      :title => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders the edit project_phase form" do
    render

    assert_select "form[action=?][method=?]", project_phase_path(@project_phase), "post" do

      assert_select "input#project_phase_title[name=?]", "project_phase[title]"

      assert_select "textarea#project_phase_description[name=?]", "project_phase[description]"

      assert_select "input#project_phase_project_id[name=?]", "project_phase[project_id]"
    end
  end
end
