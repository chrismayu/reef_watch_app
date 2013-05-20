require "spec_helper"

describe LivestockImportsController do
  describe "routing" do

    it "routes to #index" do
      get("/livestock_imports").should route_to("livestock_imports#index")
    end

    it "routes to #new" do
      get("/livestock_imports/new").should route_to("livestock_imports#new")
    end

    it "routes to #show" do
      get("/livestock_imports/1").should route_to("livestock_imports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/livestock_imports/1/edit").should route_to("livestock_imports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/livestock_imports").should route_to("livestock_imports#create")
    end

    it "routes to #update" do
      put("/livestock_imports/1").should route_to("livestock_imports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/livestock_imports/1").should route_to("livestock_imports#destroy", :id => "1")
    end

  end
end
