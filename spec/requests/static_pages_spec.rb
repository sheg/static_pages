require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should_not have_selector('title', :text => '| Home') }
    it { should have_selector('title', :text => full_title('')) }
  end

  describe "Help page" do
    before :each do
      visit help_path
    end
    it {should have_content 'Help'}
    it {should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")}
  end

  describe "About page" do
    before :each do
      visit about_path
    end

    it {should have_content "About Us"}
    it {should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")}
  end

  describe "Contact page" do
    before :each do
      visit contact_path
    end

    it {should have_content "Contact Us"}
    it {should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact Us")}

  end
end
