require 'test_helper'

class BasicTest < ActionDispatch::IntegrationTest

  before { Capybara.use_default_driver }

  it "snapshots the HTML when viewed with Rack and there is a failure" do
    visit '/rack'
    assert page.has_content?('Rack')
    click_link('Does not exist')
  end

  it "snapshots HTML whilst showing that Javascript under Selenium works" do
    Capybara.current_driver = :selenium
    visit '/selenium'
    assert page.has_content?('Selenium supports Javascript')
    click_link('Does not exist')
  end

  it "does not snapshot HTML or screen shot as all the tests pass" do
    Capybara.current_driver = :webkit
    visit '/webkit'
    assert page.has_content?('Webkit supports Javascript')
  end

  it "screenshots when an assertion fails" do
    Capybara.current_driver = :webkit
    visit '/webkit'
    assert page.has_content?('Webkit Does Not Javascript')
  end

  it "screenshots when a capybara error happens" do
    Capybara.current_driver = :webkit
    visit '/webkit'
    click_link('Does not exist')
  end

end

