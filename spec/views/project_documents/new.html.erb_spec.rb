require 'rails_helper'

RSpec.describe "project_documents/new", type: :view do
  before(:each) do
    assign(:project_document, ProjectDocument.new(
      :project => nil,
      :title => "MyString"
    ))
  end

  it "renders new project_document form" do
    render

    assert_select "form[action=?][method=?]", project_documents_path, "post" do

      assert_select "input#project_document_project_id[name=?]", "project_document[project_id]"

      assert_select "input#project_document_title[name=?]", "project_document[title]"
    end
  end
end
