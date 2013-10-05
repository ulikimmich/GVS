require 'spec_helper'

describe "Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/pages/home'
     expect(page).to have_content("Sample App")
    end
  end
end
