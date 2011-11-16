require 'test_helper'

describe 'Mini test without Capybara' do
  it "should pass" do
    true.should == true
  end
  it "should fail and not invoke Capybara" do
    true.should == false
  end
end

describe 'Mini test with Capybara' do
  it "simply returns the original HTML when viewed with Rack" do
    puts "Running test 1"
    visit '/rack'
    page.has_content?('Rack').must_be true
    click_link('Does not exist')
  end

  it "generates HTML showing that Javascript under Selenium works" do
    puts "Running test 2"
    Capybara.current_driver = :selenium
    visit '/selenium'
    page.has_content?('Selenium supports Javascript').must_be true
    click_link('Does not exist')
    Capybara.use_default_driver
  end

  it "generates HTML showing that Javascript under Capybara-webkit works" do
    puts "Running test 3"
    Capybara.current_driver = :webkit
    visit '/webkit'
    page.has_content?('Webkit supports Javascript').must_be true
    click_link('Does not exist')
    Capybara.use_default_driver
  end
end
