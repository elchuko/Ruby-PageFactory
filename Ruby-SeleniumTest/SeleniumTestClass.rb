require "selenium-webdriver"
require "test/unit"
require "page-object"
require "./GooglePage"
require "./SearchResultPage"

class SeleniumTestClass < Test::Unit::TestCase
  
  #This is my first Selenium test with Ruby
  
  def setup
    @driver = Selenium::WebDriver.for :firefox #this should be implemented with a factory pattern
    @driver.navigate.to "http://google.com"
    @driver.manage.window.maximize
  end
  
  def teardown
    @driver.quit
  end
  
  def test_case1
    googlePage = GooglePage.new(@driver)
    resultPage = googlePage.search("platypus",@driver)
    resultPage.assert_result_page("Platypus | National Geographic")
    
  end
  
end