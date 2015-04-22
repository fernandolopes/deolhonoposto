require "rails_helper"

RSpec.describe PostosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/postos").to route_to("postos#index")
    end

    it "routes to #new" do
      expect(:get => "/postos/new").to route_to("postos#new")
    end

    it "routes to #show" do
      expect(:get => "/postos/1").to route_to("postos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/postos/1/edit").to route_to("postos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/postos").to route_to("postos#create")
    end

    it "routes to #update" do
      expect(:put => "/postos/1").to route_to("postos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/postos/1").to route_to("postos#destroy", :id => "1")
    end

  end
end
