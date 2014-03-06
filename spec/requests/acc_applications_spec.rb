require 'spec_helper'

describe "AccApplications" do
  describe "GET /acc_applications" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get acc_applications_path
      response.status.should be(200)
    end
  end
end
