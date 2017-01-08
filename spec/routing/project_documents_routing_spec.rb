require "rails_helper"

RSpec.describe ProjectDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/project_documents").to route_to("project_documents#index")
    end

    it "routes to #new" do
      expect(:get => "/project_documents/new").to route_to("project_documents#new")
    end

    it "routes to #show" do
      expect(:get => "/project_documents/1").to route_to("project_documents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/project_documents/1/edit").to route_to("project_documents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/project_documents").to route_to("project_documents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/project_documents/1").to route_to("project_documents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/project_documents/1").to route_to("project_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/project_documents/1").to route_to("project_documents#destroy", :id => "1")
    end

  end
end
