Feature: Basic
  In order to test that the Capybara Screenshot gem is working
  A visitor
  Should visit a page that does not exist

  Scenario: Create a new backlog with Rack
    Given I am on the Rack page
    Then I should see the text "Rack"
    When I follow "link does not exist"

  @selenium
  Scenario: Create a new backlog with Selenium
    Given I am on the Selenium page
    Then I should see the text "Selenium supports Javascript"
    When I follow "link does not exist"

  @javascript
  Scenario: Create a new backlog with Webkit
    Given I am on the Webkit page
    Then I should see the text "Webkit supports Javascript"
    When I follow "link does not exist"