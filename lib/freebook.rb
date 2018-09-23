# coding: utf-8
require 'selenium-webdriver'

class Freebook
  def info
    driver = Selenium::WebDriver.for :safari
    driver.manage.window.maximize
    driver.navigate.to "https://www.packtpub.com/packt/offers/free-learning"

    element = driver.find_element(class: 'dotd-title')
    driver.action.move_to(element)
    puts element.text.strip

    element = driver.find_element(class: 'packt-js-countdown')
    driver.action.move_to(element)
    puts element.text.strip
    driver.quit

    puts 'go get? -> https://www.packtpub.com/packt/offers/free-learning'
  end
end
