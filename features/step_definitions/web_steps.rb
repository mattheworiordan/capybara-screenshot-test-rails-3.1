Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

Then /^I should (|not )see (?:|the text )"([^"]+)"$/ do |negation, text|
  if negation.strip == "not"
    page.should_not have_content(text)
  else
    page.should have_content(text)
  end
end

Then /^show me the page$/ do
  save_and_open_page
end
