require "spec_helper"

describe AlarmCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/alarm_codes").should route_to("alarm_codes#index")
    end

    it "routes to #new" do
      get("/alarm_codes/new").should route_to("alarm_codes#new")
    end

    it "routes to #show" do
      get("/alarm_codes/1").should route_to("alarm_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alarm_codes/1/edit").should route_to("alarm_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alarm_codes").should route_to("alarm_codes#create")
    end

    it "routes to #update" do
      put("/alarm_codes/1").should route_to("alarm_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alarm_codes/1").should route_to("alarm_codes#destroy", :id => "1")
    end

  end
end
