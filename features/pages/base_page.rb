require 'selenium-webdriver'

class BasePage

  def initialize(driver)
    @@driver = driver
  end

  def navigateToUrl(siteUrl)
    @@driver.get(siteUrl)
  end

  def waitFor(seconds=10, how, what)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until do
      web_elem = @@driver.find_element(how, what)
      web_elem if web_elem.displayed?
    end
  end

end