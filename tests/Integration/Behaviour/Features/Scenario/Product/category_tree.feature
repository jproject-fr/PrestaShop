# ./vendor/bin/behat -c tests/Integration/Behaviour/behat.yml -s product --tags category-tree
@reset-database-before-feature
@clear-cache-before-feature
@category-tree
Feature: Show category tree in product page (BO)
  As an employee
  I need to be able to see category tree in product page with marked product-category associations

  Background:
    Given category "home" in default language named "Home" exists
    And category "clothes" in default language named "Clothes" exists
    And category "clothes" parent is category "home"
    And category "men" in default language named "Men" exists
    And category "men" parent is category "clothes"
    And category "women" in default language named "Women" exists
    And category "women" parent is category "clothes"
    And category "accessories" in default language named "Accessories" exists
    And category "accessories" parent is category "home"
    And category "stationery" in default language named "Stationery" exists
    And category "stationery" parent is category "accessories"
    And category "home_accessories" in default language named "Home Accessories" exists
    And category "home_accessories" parent is category "accessories"
    And category "art" in default language named "Art" exists
    And category "art" parent is category "home"
