require 'selenium-webdriver'
require 'rspec'
require_relative '../../features/pages/base_page'
require_relative '../../features/pages/amazon_home_page'
require_relative '../../features/pages/search_result_page'
require_relative '../../features/pages/book_page'

# Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Firefox Developer Edition\firefox.exe'
# driver = Selenium::WebDriver.for(:firefox)

# home_page = nil
# search_result_page = nil
# book_page = nil


Given(/^I open "(.*?)"$/) do |siteUrl|
  @home_page = AmazonHomePage.new(@driver)
  @home_page.navigateToUrl(siteUrl)
end

When(/^I search for "(.*?)"$/) do |keyword|
  @home_page.inputSearchText(keyword)
  @search_result_page = @home_page.submitSearch
end

And(/^I open the first book$/) do
  @book_page = @search_result_page.selectBook
end

And(/^I add the first book to shopping cart$/) do
  @book_page.addToCart
end

Then(/^I should see the book in my shopping cart$/) do
  expect(@book_page.checkCart).to eq("3")
end
