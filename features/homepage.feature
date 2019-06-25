@all
Feature: User should be able to order pizzas

  Background:
    Given I land on home page

  @smoke
  Scenario: I should be able to open Pizza page
    Then I go to Pizza page	
    And I see all the pizzas names			 
    Then I select any pizza
    And I can add pizza to cart
    