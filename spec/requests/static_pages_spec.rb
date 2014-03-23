require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'microblog'"do
      visit '/static_pages/home'
      expect(page).to have_content('microblog')
    end
  end

  describe "Help pages" do
    it "shold have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Microblog | Help')
    end
  end

  describe "Abuout pages" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Microblog | About Us')
    end
  end
end
