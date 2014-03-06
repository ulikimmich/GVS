require "spec_helper"

describe AccApplicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/acc_applications").should route_to("acc_applications#index")
    end

    it "routes to #new" do
      get("/acc_applications/new").should route_to("acc_applications#new")
    end

    it "routes to #show" do
      get("/acc_applications/1").should route_to("acc_applications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/acc_applications/1/edit").should route_to("acc_applications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/acc_applications").should route_to("acc_applications#create")
    end

    it "routes to #update" do
      put("/acc_applications/1").should route_to("acc_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/acc_applications/1").should route_to("acc_applications#destroy", :id => "1")
    end

  end
end
