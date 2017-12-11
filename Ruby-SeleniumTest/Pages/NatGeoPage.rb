require "selenium-webdriver"
require "test/unit"
require "page-object"

class NatGeoPage
  include PageObject
  
  def assert_NatGeo(link,driver)
    assert_equal(link,driver.current_url)
  end
end