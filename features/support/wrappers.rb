module App
  module Wrappers

    def id(id)
      driver.driver.find_element(id: id)
    end

    def find_element(args)
      driver.driver.find_element(args)
    end

    def find_elements(args)
      driver.driver.find_elements(args)
    end
  end
end
