Feature: Basic
  In order to test that the Capybara Screenshot gem is working
  A visitor
  Should visit a page that does not exist

  Scenario: View page with Rack without a screen shot being shown
    Given I am on the Rack page
    Then I should see the text "Rack"

  Scenario: View page with Rack
    Given I am on the Rack page
    Then I should see the text "Rack"
    When I follow "link does not exist"

  @selenium
  Scenario: View page with Selenium
    Given I am on the Selenium page
    Then I should see the text "Selenium supports Javascript"
    When I follow "link does not exist"

  # @javascript
  # Scenario: View page with Webkit
  #   Given I am on the Webkit page
  #   Then I should see the text "Webkit supports Javascript"
  #   When I follow "link does not exist"