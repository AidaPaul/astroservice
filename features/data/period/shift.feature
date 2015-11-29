# Created by laszlo at 24.11.2015
Feature: Shifting chart point by period
  Calculates new point position
  based on period
  and based on expected format

  Scenario: shifting data in phase format
    Given set of points
    And period
    Then data will be shifted in phase format
    And shifted data will be send to the user

  Scenario: shifting data in epoch format
    Given set of points
    And period
    Then data will be shiften in epoch format
    And shifted data will be send to the user
