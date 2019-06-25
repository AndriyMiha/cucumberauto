require 'pry'

Given("I land on home page")do
  app.get 'https://dominos.ua'
  ExpectedConditions.element_to_be_visible { app.splash_close_button }
  app.splash_confirm_button.click
  ExpectedConditions.element_to_be_visible { app.menu_bar }
  puts 'Home page opened'
end

And("I go to Pizza page")do
  sleep 2
  ExpectedConditions.element_to_be_visible { app.pizza_row }
  app.pizza_row.click
end

Then('I see all the pizzas names')do
  sleep 1
  titles = app.pizza_titles
  texts = titles.map {|title| title.text }
  puts "The pizzas are #{texts}"
end

Then('I select any pizza')do
  app.pizza_titles[0].click
end

Then('I can add pizza to cart')do
  sleep 1
  app.find_element(class: 'btn-body').click
end