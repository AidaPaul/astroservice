# Created by Konrad Wybraniec at 28.11.2015
Feature: Converting data

  Scenario: empty file provided
    Given empty file provided
    Then conversion won't be started

  Scenario: no file provided
    Given no file provided
    Then conversion won't be started

  Scenario Outline: data compatible with selected conversion
    Given "<input data>" provided
    Then converted "<input data>" will be the same as "<correctly converted data>"

    Examples: Good conversion
      | input data | correctly converted data |
      | asas.txt   | asas.out                 |
      | kepler     |                          |
      | catalina   |                          |
      | chandra    |                          |
      | hipparcos  |                          |
      | integral   |                          |
      | munipack   |                          |
      | nsvs       |                          |

  Scenario Outline: Data incompatible with selected conversion
    Given "<input data>" provided
    Then converted "<input data>" won't match "<correctly converted data>"

    Examples: Bad conversion
      | input data | correctly converted data |
      | asas.txt   | asas.out                 |
      | kepler     |                          |
      | catalina   |                          |
      | chandra    |                          |
      | hipparcos  |                          |
      | integral   |                          |
      | munipack   |                          |
      | nsvs       |                          |
