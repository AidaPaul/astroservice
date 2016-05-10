# Created by Konrad Wybraniec at 08.05.2016
Feature: Plotting data
  In order to be able to review my data
  As the astronomer
  I want to be able to display provided data in the graph

  Scenario: Unsuccessful plotted data: data has more or less than two columns
    Given I have provided input data
    And Provided data has more or less than two columns
    When I request plotting
    Then I should be notify about incorrectly formatted data
    And I should be asked to provided properly formatted data

  Scenario: Unsuccessful plotted data: data contains illegal characters
    Given I have provided input data
    And Provided data contains characters other than numbers, spaces and dot (as decimal separator)
    When I Request plotting
    Then I should be notify about the usage of the illegal characters
    And List of valid characters should be displayed to me
    And I should be ask to provide input data again

  Scenario: Unsuccessful plotted data: data contains mixed decimal separators
    Given I have provided input data
    And Data contains mixed decimal separators
    When I Request plotting
    Then I should be notify about mixed decimal separators
    And I should be asked to provide data without mixed decimal separators

  Scenario: Successful plotted data
    Given I have provided input data
    When I request plotting
    Then Input data should be displayed in the graph