require "spec_helper"

describe LivestocksController do
  describe "routing" do

    it "routes to #index" do
      get("/livestocks").should route_to("livestocks#index")
    end

    it "routes to #new" do
      get("/livestocks/new").should route_to("livestocks#new")
    end

    it "routes to #show" do
      get("/livestocks/1").should route_to("livestocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/livestocks/1/edit").should route_to("livestocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/livestocks").should route_to("livestocks#create")
    end

    it "routes to #update" do
      put("/livestocks/1").should route_to("livestocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/livestocks/1").should route_to("livestocks#destroy", :id => "1")
    end

  end
end
