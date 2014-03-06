require 'spec_helper'

describe "acc_applications/edit" do
  before(:each) do
    @acc_application = assign(:acc_application, stub_model(AccApplication))
  end

  it "renders the edit acc_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", acc_application_path(@acc_application), "post" do
    end
  end
end
