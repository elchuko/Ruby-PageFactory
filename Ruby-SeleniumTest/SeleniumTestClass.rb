require "selenium-webdriver"
require "test/unit"

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
  
  def test_testing
    @driver.find_element(:xpath, "//*[@id=\"lst-ib\"]").send_keys("Hava Nagila")
    @driver.find_element(:xpath, "/html/body/div/div[3]/form/div[2]/div[3]/center/input[1]").click
    sleep 1 #This wait is only for demonstration, I know this is not the right way to do waits
  end
  
  def test_testing2
    @driver.find_element(:xpath, "//*[@id=\"lst-ib\"]").send_keys("Pepe el toro")
    @driver.find_element(:xpath, "/html/body/div/div[3]/form/div[2]/div[3]/center/input[1]").click
    sleep 1 
  end
  
end