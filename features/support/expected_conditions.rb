class ExpectedConditions

  def self.element_to_be_visible
    wait = Selenium::WebDriver::Wait.new(timeout: 45)
    wait.until do
      element = yield
      if element
        element if element.displayed?
      end
    end
  end

  def self.element_to_be_present(soft_wait=false)
    wait = Selenium::WebDriver::Wait.new(timeout: 45)
    if soft_wait
      begin
        wait.until { yield }
      rescue
        Selenium::WebDriver::Error::NoSuchElementError
        nil
      end
    else
      wait.until { yield }
    end
  end

  def self.absence_of(&block)
    begin
      wait = Selenium::WebDriver::Wait.new(timeout: 10)
      wait.until { block.call.size.zero? }
    rescue Selenium::WebDriver::Error::TimeOutError
      fail 'Element was present'
    end
  end

  def self.text_to_be_present_in_element(text, &block)
    wait = Selenium::WebDriver::Wait.new(timeout: 45)
    wait.until { block.call.text == text }
  end
end
