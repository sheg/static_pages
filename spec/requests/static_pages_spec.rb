require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before :each do
      visit '/staticpages/home'
    end

    it "should have the content Sample App!" do
      page.should have_content('Sample App')
    end

    it "should have the base title" do
      visit '/staticpages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/staticpages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help page" do
    before :each do
      visit '/staticpages/help'
    end

    it "should have the content 'Help'" do
      page.should have_content 'Help'
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    before :each do
      visit '/staticpages/about'
    end
    it "should have the content 'About Us'" do
      page.should have_content "About Us"
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do
    before :each do
      visit '/staticpages/contact'
    end

    it "should have content 'Contact Us'" do
      page.should have_content "Contact Us"
    end

    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end
end
