require 'rails_helper'

RSpec.describe "project_documents/index", type: :view do
  before(:each) do
    assign(:project_documents, [
      ProjectDocument.create!(
        :project => nil,
        :title => "Title"
      ),
      ProjectDocument.create!(
        :project => nil,
        :title => "Title"
      )
    ])
  end

  it "renders a list of project_documents" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
