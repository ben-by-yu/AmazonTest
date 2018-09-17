require 'selenium-webdriver'
require_relative 'base_page'
require_relative 'book_page'

class SearchResultPage < BasePage

  def initialize(driver)
    @@driver = driver
  end

  def selectBook
    # waitFor(20, :css, '#pdagDesktopSparkleHeadline')
    # @@driver.find_element(:css, '#pdagDesktopSparkleHeadline').click
    waitFor(20, :css, '#result_0 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(3) > div:nth-child(1) > a:nth-child(1) > h2:nth-child(1)')
    @@driver.find_element(:css, '#result_0 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(3) > div:nth-child(1) > a:nth-child(1) > h2:nth-child(1)').click
    return BookPage.new(@@driver)
  end

end