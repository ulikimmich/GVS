require 'spec_helper'

describe "acc_applications/index" do
  before(:each) do
    assign(:acc_applications, [
      stub_model(AccApplication),
      stub_model(AccApplication)
    ])
  end

  it "renders a list of acc_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
