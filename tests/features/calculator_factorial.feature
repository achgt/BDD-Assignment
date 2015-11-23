Feature: Acceptance Test for the
  factorial() function of Calculator
 
  Scenario: Calculate factorial of 3
    Given I am using the calculator
    When I input factorial "3"
    Then I should see "6"

 
  Scenario Outline: Calculate factorial of a number
    Given I am using the calculator
    When I input factorial "<input1>"
    Then I should see "<output>"

  Examples:
    | input1 | output |
    | 0      | 1      |
    | 2      | 2      |
    | 3      | 6      |
