require 'spec_helper'

describe "a spec not using Capybara" do
  it "should pass" do
    true.should == true
  end
  it "should fail and not invoke Capybara" do
    true.should == false
  end
end

describe "home page", :type => :request do
  it "simply returns the original HTML when viewed with Rack" do
    visit '/rack'
    page.should have_content('Rack')
    click_link('Does not exist')
  end

  it "generates HTML showing that Javascript under Selenium works", :driver => :selenium do
    visit '/selenium'
    page.should have_content('Selenium supports Javascript')
    click_link('Does not exist')
  end

  it "generates HTML showing that Javascript under Capybara-webkit works", :js => true do
    visit '/webkit'
    page.should have_content('Webkit supports Javascript')
    click_link('Does not exist')
  end
end
