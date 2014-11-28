@api @javascript
Feature: Search autocomplete
  In order to find courses convinintly
  As any user
  I should be able to see autocomplete on all pages where search field exist

  Scenario Outline: Use autocomplete
    Given I am on "<page>"
    When I fill in "edit-keys" with "test c"
    And I trigger autocomplete with id "edit-keys"
    And I wait for 2 seconds
    Then I should see "test cours"

  Examples:
    | page           |
    | front_page     |