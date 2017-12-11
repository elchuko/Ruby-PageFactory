require "selenium-webdriver"
require "test/unit"
require "page-object"
require "./Pages/NatGeoPage"

class SearchResultPage
  include PageObject
 
  def click_on_link(text,driver)
   driver.find_element(:link_text, text).click
   return NatGeoPage.new(driver)
  end
end