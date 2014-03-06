require 'spec_helper'

describe "acc_applications/show" do
  before(:each) do
    @acc_application = assign(:acc_application, stub_model(AccApplication))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
