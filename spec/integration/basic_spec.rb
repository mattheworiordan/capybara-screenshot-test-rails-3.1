require 'spec_helper'

describe "home page", :type => :request do
  it "simply returns the original HTML when viewed with Rack" do
    visit '/rack'
    page.should have_content('Rack')
    click_link('Does not exist')
  end
end