require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
  
    it "should have the content 'sample app'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

   it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
            :text => "Ruby on Rails Tutorial Sample App | Home")
    end

  end

 describe "Help page" do
  
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title 'Help'" do
  	visit '/static_pages/help'
  	page.should have_selector ('title', 
  					:text => "Ruby on Rails Tutorial Sample App | Help")
  	end

  end

  describe "About page" do
  
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the right title 'About Us'" do
  	visit '/static_pages/about'
  	page.should have_selector ('title', 
  					:text => "Ruby on Rails Tutorial Sample App | About Us")
  	end
  end

  

end
