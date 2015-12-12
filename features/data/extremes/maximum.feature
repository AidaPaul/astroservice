# Created by laszl at 25.11.2015
Feature: Calculates global maximum
  Calculates global maximum
  in passed points

  Scenario: maximum calculation
    Given set of points
    Then maximum for set of points will be calculated
    And maximum coordinates will be send to the user
