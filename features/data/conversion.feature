# Created by Konrad Wybraniec at 28.11.2015
Feature: Converting data

  Scenario: empty file provided
    Given empty file
    Then conversion won't be started
    And user will be notified about empty file

  Scenario: no file provided
    Given no file
    And conversion request
    Then conversion won't be started
    And user will be asked to select a file

  Scenario Outline: data compatible with selected conversion
    Given some "<sent data>"
    And user has selected "<conversion>" method
    Then "<sent data>" will be converted
    And new data will be send to the user

    Examples: Good conversion
      | sent data | conversion |
      | asas      | asas       |
      | kepler    | kepler     |
      | catalina  | catalina   |
      | chandra   | chandra    |
      | hipparcos | hipparcos  |
      | integral  | integral   |
      | munipack  | munipack   |
      | nsvs      | nsvs       |

  Scenario Outline: Data incompatible with selected conversion
    Given some "<sent data>"
    And user has selected incompatible "<conversion>" method
    Then "<sent data>" will be incorrectly formatted
    And user will receive wrong data

    Examples: Bad conversion
      | sent data | conversion |
      | asas      | other      |
      | kepler    | other      |
      | catalina  | other      |
      | chandra   | other      |
      | hipparcos | other      |
      | integral  | other      |
      | munipack  | other      |
      | nsvs      | other      |
