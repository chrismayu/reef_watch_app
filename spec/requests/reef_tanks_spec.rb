require 'spec_helper'

describe "ReefTanks" do
  describe "GET /reef_tanks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get reef_tanks_path
      response.status.should be(200)
    end
  end
end
