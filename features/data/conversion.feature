# Created by Konrad Wybraniec at 28.11.2015
Feature: Converting data

  Scenario: empty file provided
    Given empty file provided
    Then conversion won't be started

  Scenario: no file provided
    Given no file provided
    And conversion request
    Then conversion won't be started

  Scenario Outline: data compatible with selected conversion
    Given "<input data>" provided
    And "<input data>" is compatible with selected "<conversion type>"
    Then "<input data>" will be correctly converted based on selected "<conversion type>"

    Examples: Good conversion
      | input data                        | conversion type |
      | features/data/test_files/asas.txt | asas            |
      | kepler                            | kepler          |
      | catalina                          | catalina        |
      | chandra                           | chandra         |
      | hipparcos                         | hipparcos       |
      | integral                          | integral        |
      | munipack                          | munipack        |
      | nsvs                              | nsvs            |

  Scenario Outline: Data incompatible with selected conversion
    Given "<input data>" provided
    And "<input data>" is incompatible with selected "<conversion type>"
    Then "<input data>" will be incorrectly formatted using "<conversion type>"

    Examples: Bad conversion
      | input data | conversion type |
      | asas.txt   | other           |
      | kepler     | other           |
      | catalina   | other           |
      | chandra    | other           |
      | hipparcos  | other           |
      | integral   | other           |
      | munipack   | other           |
      | nsvs       | other           |
