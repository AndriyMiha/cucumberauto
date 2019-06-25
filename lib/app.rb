module App
  class App
    include Wrappers
    include Selectors

    attr_reader :driver

    def initialize(driver)
      @driver = driver
    end

    def start_driver
      driver.driver.manage.timeouts.implicit_wait = 10
      driver.driver.manage.window.maximize
    end

    def get(url)
      driver.driver.get url
    end

    def screenshot(png_path)
      driver.driver.save_screenshot(png_path)
    end

    def driver_quit
      driver.driver.quit
    end
  end
end
