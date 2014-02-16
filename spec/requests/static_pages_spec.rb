require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}


  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have title 'home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' | Home')
    end
  end

  describe "Help Page" do

    it "should have 'Admin Credentials'" do
      visit '/static_pages/help'
      expect(page).to have_content('clarence.boey@gmail.com')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do

    it "should have 'The Goal'" do
      visit '/static_pages/about'
      expect(page).to have_content('The Goal')
    end

    it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
end
