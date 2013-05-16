require "spec_helper"

describe ReefTanksController do
  describe "routing" do

    it "routes to #index" do
      get("/reef_tanks").should route_to("reef_tanks#index")
    end

    it "routes to #new" do
      get("/reef_tanks/new").should route_to("reef_tanks#new")
    end

    it "routes to #show" do
      get("/reef_tanks/1").should route_to("reef_tanks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reef_tanks/1/edit").should route_to("reef_tanks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reef_tanks").should route_to("reef_tanks#create")
    end

    it "routes to #update" do
      put("/reef_tanks/1").should route_to("reef_tanks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reef_tanks/1").should route_to("reef_tanks#destroy", :id => "1")
    end

  end
end
