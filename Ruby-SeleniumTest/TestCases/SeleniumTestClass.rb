require "selenium-webdriver"
require "test/unit"
require "page-object"
require "./Pages/GooglePage"
require "./Pages/SearchResultPage"

class SeleniumTestClass < Test::Unit::TestCase
  
  #This is my first Selenium test with Ruby
  
  def setup
    @driver = Selenium::WebDriver.for :firefox #this should be implemented with a factory pattern
    @driver.navigate.to "https://www.google.com"
    @driver.manage.window.maximize
  end
  
  def teardown
    @driver.quit
  end
  
  def test_case1
    desiredSearch = 'platypus'
    desiredLink = 'Platypus | National Geographic'
    desiredURL = 'https://www.nationalgeographic.com/animals/mammals/p/platypus/'
    
    googlePage = GooglePage.new(@driver)
    resultPage = googlePage.search(desiredSearch, @driver)
    natgeoPage = resultPage.click_on_link(desiredLink, @driver)
    natgeoPage.assert_NatGeo(desiredURL, @driver)
    
  end
  
end