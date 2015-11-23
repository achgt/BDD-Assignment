Feature: Acceptance Test for the
  volume() function of Calculator
 
  Background:
    Given I am using the calculator
 
  Scenario: Calculate volume for dimensions 2x3x4 
    Given I input volume "2" "3" "4"
    Then I should see "24"

  Scenario: Calculate volume for dimensions 5x6x7
    Given I input volume "5" "6" "7"
    Then I should see "210"
	
  Scenario Outline: Calculate volume for a rectangular prism
    Given I input volume "<input1>" "<input2>" "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 2      | 3      | 4      | 24     |
    | 5      | 6      | 7      | 210    |
    | 2      | 2      | 2      | 8      |
