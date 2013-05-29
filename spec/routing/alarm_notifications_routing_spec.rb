require "spec_helper"

describe AlarmNotificationsController do
  describe "routing" do

    it "routes to #index" do
      get("/alarm_notifications").should route_to("alarm_notifications#index")
    end

    it "routes to #new" do
      get("/alarm_notifications/new").should route_to("alarm_notifications#new")
    end

    it "routes to #show" do
      get("/alarm_notifications/1").should route_to("alarm_notifications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alarm_notifications/1/edit").should route_to("alarm_notifications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alarm_notifications").should route_to("alarm_notifications#create")
    end

    it "routes to #update" do
      put("/alarm_notifications/1").should route_to("alarm_notifications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alarm_notifications/1").should route_to("alarm_notifications#destroy", :id => "1")
    end

  end
end
