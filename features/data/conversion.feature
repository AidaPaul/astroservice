# Created by Konrad Wybraniec at 28.11.2015
Feature: Converting data

  Scenario: empty file provided
    Given empty file provided by the user
    Then conversion won't be started
    And user will be notified about empty file

  Scenario: no file provided
    Given no file provided by the user
    And conversion request
    Then conversion won't be started
    And user will be asked to select a file

  Scenario Outline: data compatible with selected conversion
    Given "<input data>" provided by the user
    And user has selected the same "<conversion type>" method as "<input data>"
    Then "<input data>" will be converted based on selected "<conversion type>"
    And converted data will be send to the user

    Examples: Good conversion
      | input data | conversion type |
      | asas       | asas            |
      | kepler     | kepler          |
      | catalina   | catalina        |
      | chandra    | chandra         |
      | hipparcos  | hipparcos       |
      | integral   | integral        |
      | munipack   | munipack        |
      | nsvs       | nsvs            |

  Scenario Outline: Data incompatible with selected conversion
    Given "<input data>" provided by the user
    And "<conversion type>" selected by the user is not the same as "<input data>"
    Then "<input data>" will be incorrectly formatted using "<conversion type>"
    And user will receive incorrectly converted data

    Examples: Bad conversion
      | input data | conversion type |
      | asas       | other           |
      | kepler     | other           |
      | catalina   | other           |
      | chandra    | other           |
      | hipparcos  | other           |
      | integral   | other           |
      | munipack   | other           |
      | nsvs       | other           |
