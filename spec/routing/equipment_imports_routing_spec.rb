require "spec_helper"

describe EquipmentImportsController do
  describe "routing" do

    it "routes to #index" do
      get("/equipment_imports").should route_to("equipment_imports#index")
    end

    it "routes to #new" do
      get("/equipment_imports/new").should route_to("equipment_imports#new")
    end

    it "routes to #show" do
      get("/equipment_imports/1").should route_to("equipment_imports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipment_imports/1/edit").should route_to("equipment_imports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipment_imports").should route_to("equipment_imports#create")
    end

    it "routes to #update" do
      put("/equipment_imports/1").should route_to("equipment_imports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipment_imports/1").should route_to("equipment_imports#destroy", :id => "1")
    end

  end
end
