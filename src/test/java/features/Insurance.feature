Feature: Verify insurance page
Background:
Given I am on insurance page

@tag1
Scenario: Verify insurance page title
 Then I should see "Compare Cheap Insurance Quotes Today at GoCompare" title
 
 @tag1
 Scenario: Verify Get Quotes for Car insurance
  When I click on "//a[@class='get_quotes']" button
  Then I should see "car insurance [about the car]" title
  
  @tag1
  Scenario: Verify Retrieve Quotes for Car insurance
  When I click on "//a[@class='retrieve_quotes']" button
  Then I should see "Retrieve a quote from Gocompare.com" title
  
@tag1
  Scenario: Verify Get Quotes for Home insurance
  When I click on "//div[@class='feature_item_2']/p/a/img" button
  Then I should see "home insurance [start]" title
  
@tag1
  Scenario Outline: Verify Get Started button for different options on page
  When I click on "<locator>" button
  Then the page url should contain "<path>"
  Examples:
  | locator | path |
  |//a[@href='/gas-and-electricity/'] | gas-and-electricity|
  |//a[@href='https://breakdown.gocompare.com']| breakdown-cover|
  |//a[@href='https://broadband.gocompare.com/#/?productType=broadband,phone']| broadband,phone|
  |//div[@class='wac_scroller']/ul/li[2]/a[1]| landlord-insurance|
  |//div[@class='wac_scroller']/ul/li[3]/a| student-insurance|
  |//div[@class='wac_scroller']/ul/li[4]/a| business-insurance|
  |//div[@class='wac_scroller']/ul/li[5]/a| motorhome-insurance|
  
  
 