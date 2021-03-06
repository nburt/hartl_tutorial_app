require 'spec_helper'

describe "Static pages" do
  let(:title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content 'Sample App'
    end

    it "should have the base title instead of a custom page title" do
      visit '/static_pages/home'
      expect(page).to_not have_title "#{title} | Home"
      expect(page).to have_title "#{title}"
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content 'Help'
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title "#{title} | Help"
    end
  end

  describe "About Us" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content 'About Us'
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title "#{title} | About Us"
    end
  end

  describe "Contact" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content 'Contact Us'
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title "#{title} | Contact"
    end
  end
end
