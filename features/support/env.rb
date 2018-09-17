require 'selenium-webdriver'
require_relative '../../features/pages/base_page'
require_relative '../../features/pages/amazon_home_page'
require_relative '../../features/pages/search_result_page'
require_relative '../../features/pages/book_page'

Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Firefox Developer Edition\firefox.exe'

Before do
  puts "This is before hook."
  @driver = Selenium::WebDriver.for(:firefox)
  @home_page = nil
  @search_result_page = nil
  @book_page = nil
end

After do
  puts "This is after hook."
  @driver.quit
end