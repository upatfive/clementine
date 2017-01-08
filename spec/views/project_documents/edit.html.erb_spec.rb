require 'rails_helper'

RSpec.describe "project_documents/edit", type: :view do
  before(:each) do
    @project_document = assign(:project_document, ProjectDocument.create!(
      :project => nil,
      :title => "MyString"
    ))
  end

  it "renders the edit project_document form" do
    render

    assert_select "form[action=?][method=?]", project_document_path(@project_document), "post" do

      assert_select "input#project_document_project_id[name=?]", "project_document[project_id]"

      assert_select "input#project_document_title[name=?]", "project_document[title]"
    end
  end
end
