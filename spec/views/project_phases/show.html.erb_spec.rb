require 'rails_helper'

RSpec.describe "project_phases/show", type: :view do
  before(:each) do
    @project_phase = assign(:project_phase, ProjectPhase.create!(
      :title => "Title",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
