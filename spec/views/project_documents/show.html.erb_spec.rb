require 'rails_helper'

RSpec.describe "project_documents/show", type: :view do
  before(:each) do
    @project_document = assign(:project_document, ProjectDocument.create!(
      :project => nil,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
  end
end
