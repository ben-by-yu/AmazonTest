require 'selenium-webdriver'

class BookPage < BasePage

  def initialize(driver)
    super(driver)
  end

  def addToCart
    # waitFor(25, :css, 'li.style__item__xGWxb:nth-child(1) > div:nth-child(4) > div:nth-child(6) > div:nth-child(1) > span:nth-child(1)')
    # @@driver.find_element(:css, 'li.style__item__xGWxb:nth-child(1) > div:nth-child(4) > div:nth-child(6) > div:nth-child(1) > span:nth-child(1)').click
    waitFor(25, :css, '#add-to-cart-button')
    @@driver.find_element(:css, '#add-to-cart-button').click
  end

  def checkCart
    sleep(5)
    return @@driver.find_element(:css, '#nav-cart-count').text
  end

end