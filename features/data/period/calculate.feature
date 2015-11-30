Feature: Calculate period
  Calculates period for points

  Scenario: calculating period for given data
    Given set of data
    And provided calculation accuracy
    Then period will be calculated
    And period coordinates will be send to the user
