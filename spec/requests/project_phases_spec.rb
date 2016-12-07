require 'rails_helper'

RSpec.describe "ProjectPhases", type: :request do
  describe "GET /project_phases" do
    it "works! (now write some real specs)" do
      get project_phases_path
      expect(response).to have_http_status(200)
    end
  end
end
