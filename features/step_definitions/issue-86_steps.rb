When(/^I visit (.+)$/) do |site|
  visit "http://#{site}"
  raise "Test error"
end
