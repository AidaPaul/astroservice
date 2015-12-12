# Created by laszl at 25.11.2015
Feature: Calculating local minimum
  Calculates local minimum
  in passed points

  Scenario: minimum calculation
    Given set of points
    Then minimum im points will be calculated
    And minimum coordinates will be send to the user
