Feature: Verify home page
Background:
Given I am on home page


Scenario: Verify home page title
  /Given I am on home page
  Then I should see "GoCompare™ - The Go To Comparison Website - Official Website" title
  
 
  Scenario: Verify search for a car using car registration
  /Given I am on home page
  When I click on "//a[@alt='Get Quotes']" button
  Then I should see "car insurance [about the car]" title
  

  Scenario: Verify insurance tab in home page
  When I click on "//nav [@class='main']/ul/li[1]/a" button
  Then the page url should contain "insurance"
  

  Scenario Outline: Verify tabs on home page
  When I click on "<locator>" button
  Then the page url should contain "<path>"
  Examples:
  | locator | path |
  |//nav [@class='main']/ul/li[1]/a | insurance|
  |//nav [@class='main']/ul/li[2]/a | money|
  |//nav [@class='main']/ul/li[3]/a | motoring|
  
 