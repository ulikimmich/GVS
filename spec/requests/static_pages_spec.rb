require 'spec_helper'

describe "Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/pages/home'
     expect(page).to have_content("Sample App")
    end
  end

  describe "Has Title" do
    it "should have a title" do
      visit '/pages/home'
      expect(page).to have_title("GVS | Global Virtual Studio")
    end
  end
end
