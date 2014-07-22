Feature: Test

  @test
  Scenario Outline: Test Outline
    When I visit <site>
  Examples:
    | site          |
    | www.google.com|
    | www.github.com|

  @test
  Scenario: Test scenario
   When I visit www.google.com
