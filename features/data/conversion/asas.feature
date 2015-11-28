# Created by laszl at 24.11.2015
Feature: Asas
  converting from asas database
  into two columns: time and magnitudo

  Scenario: input data is correct
    Given correct asas-style data
    Then conversion should return properly formatted data

  Scenario: input data is not correct
    Given incorrect asas-style data
    Then error should be reported

  Scenario: output data is correct
    Given correct asas-style data
    When no errors occurred
    Then conversion should return properly formatted data

  Scenario: output data is not correct
    Given correct asas-style data
    And incorrect asas-style data
    Then error should be reported
