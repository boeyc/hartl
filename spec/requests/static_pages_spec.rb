require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

subject{ page }

  describe "Home page" do
    before { visit root_path}

    it { should have_content('Sample App')}
    it { should have_title("#{base_title}")}
    it { should_not have_title (' | Home')}

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('help')}
    it { should have_title("#{base_title}")}
    it { should_not have_title (' | Help')}
  end


  describe "About Page" do

    it "should have 'The Goal'" do
      visit static_pages_about_path
      expect(page).to have_content('The Goal')
    end

    it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end
end
