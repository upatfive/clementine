require 'rails_helper'

RSpec.describe "project_phases/index", type: :view do
  before(:each) do
    assign(:project_phases, [
      ProjectPhase.create!(
        :title => "Title",
        :description => "MyText",
        :project => nil
      ),
      ProjectPhase.create!(
        :title => "Title",
        :description => "MyText",
        :project => nil
      )
    ])
  end

  it "renders a list of project_phases" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
