require 'rails_helper'

RSpec.describe "ProjectDocuments", type: :request do
  describe "GET /project_documents" do
    it "works! (now write some real specs)" do
      get project_documents_path
      expect(response).to have_http_status(200)
    end
  end
end
