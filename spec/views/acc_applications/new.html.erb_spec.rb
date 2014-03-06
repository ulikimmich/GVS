require 'spec_helper'

describe "acc_applications/new" do
  before(:each) do
    assign(:acc_application, stub_model(AccApplication).as_new_record)
  end

  it "renders new acc_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", acc_applications_path, "post" do
    end
  end
end
