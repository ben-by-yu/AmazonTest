require 'selenium-webdriver'
require_relative 'base_page'
require_relative 'search_result_page'

class AmazonHomePage < BasePage

  def initialize(driver)
    super(driver)
  end


  def inputSearchText(searchStr)
    @@driver.find_element(:css, '#twotabsearchtextbox').send_keys(searchStr)
  end

  def submitSearch
    @@driver.find_element(:css, '.nav-search-submit > input:nth-child(2)').click
    return SearchResultPage.new(@@driver)
  end

end