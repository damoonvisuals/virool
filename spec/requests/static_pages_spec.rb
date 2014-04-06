require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    # end

    it "should have the content 'Virool Small Task'" do
      visit '/'
      expect(page).to have_content('Virool Small Task')
    end

    it "should have the title 'Home'" do
      visit '/'
      expect(page).to have_title("Virool | Home")
    end
  end
end