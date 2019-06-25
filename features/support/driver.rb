 require "selenium-webdriver" 
 require "rubygems"

class Driver 

  attr_reader :driver

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end
end