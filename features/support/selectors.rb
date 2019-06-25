module App
  module Selectors

    def splash_close_button
      find_element(css: '.dp-modal__close-btn')
    end

    def splash_confirm_button
      find_element(class: 'red')
    end

    def menu_bar
      find_element(class: 'nav-row')
    end

    def pizza_row
      find_element(xpath: '//div[@class="nav-row"]/a[1]')
    end

    def pizza_titles
      find_elements(class: 'dp-product-block__title-text')
    end
  end
end
