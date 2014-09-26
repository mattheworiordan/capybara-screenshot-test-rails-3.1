require 'rails_helper'

describe "a spec not using Capybara" do
  it "should pass" do
    true.should == true
  end
  it "should fail and not invoke Capybara (\e[33mexpect failure\e[0m)" do
    true.should == false
  end
end

feature "home page" do
  scenario "simply returns the original HTML when viewed with Rack (\e[33mexpect failure\e[0m)" do
    visit '/rack'
    page.should have_content('Rack')
    click_link('Does not exist')
  end

  scenario "generates HTML showing that Javascript under Selenium works (\e[33mexpect failure\e[0m)", :driver => :selenium do
    visit '/selenium'
    page.should have_content('Selenium supports Javascript')
    click_link('Does not exist')
  end

  scenario "generates HTML showing that Javascript under Capybara-webkit works (\e[33mexpect failure\e[0m)", :js => true do
    visit '/webkit'
    page.should have_content('Webkit supports Javascript')
    click_link('Does not exist')
  end
end

feature "The link content element" do
  # replication of issue https://github.com/mattheworiordan/capybara-screenshot/issues/24
  scenario "generates HTML showing that Javascript under Capybara-webkit works (\e[32mexpect success\e[0m)", :driver => :selenium do
    visit '/webkit'
    page.should have_content('Webkit supports Javascript')
  end

  context "Some context" do
    scenario "generates HTML showing that Javascript under Capybara-webkit works (\e[32mexpect success\e[0m)", :driver => :selenium do
      visit '/webkit'
      page.should have_content('Webkit supports Javascript')
    end
  end
end

feature 'Nested screenshot potential issue', :driver => :selenium do
  scenario "should take one screenshot (\e[33mexpect failure\e[0m)" do
    visit '/nested-test'
    raise
  end

  context "nest 1" do
    scenario "should take one screenshot (\e[33mexpect failure\e[0m)" do
      visit '/nested-test'
      raise
    end

    context "nest 2" do
      scenario "should take one screenshot (\e[33mexpect failure\e[0m)" do
        visit '/nested-test'
        raise
      end
    end
  end
end
