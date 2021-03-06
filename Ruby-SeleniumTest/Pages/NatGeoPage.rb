require "selenium-webdriver"
require "test/unit"
require "page-object"

class NatGeoPage
  include PageObject
  include Test::Unit::Assertions
  
  def assert_NatGeo(desiredURL, driver)
    puts driver.current_url
    #assertEquals(desiredURL, driver.current_url)
    assert_equal(desiredURL, driver.current_url, "URL is not correct")
  end
end