# Created by Konrad Wybraniec at 28.11.2015

Feature: Converting files from astronomical databases
  In order to have data valid for my research
  As a astronomer
  I want to convert data from various astronomical databases

  Scenario Outline: Successful conversion: uploaded data match selected conversion type
    Given I have uploaded <input data>
    And I have selected <correct conversion type>
    When I request conversion
    Then <converted data> should be displayed to me
    And I should receive a link to download <converted data>

    Examples:
      | input data    | correct conversion type | converted data |
      | hipparcos.txt | hipparcos               | hipparcos.out  |
      | integral.txt  | integral                | integral.out   |
      | nsvs.txt      | nsvs                    | nsvs.out       |
      | asas.txt      | asas                    | asas.out       |
      | munipac.txt   | munipac                 | munipac.out    |
      | kepler.txt    | kepler                  | kepler.out     |
      | catalina.txt  | catalina                | catalina.out   |

  Scenario: Unsuccessful conversion: using empty file
    Given I have uploaded empty file
    Then I should be asked to upload non-empty file

  Scenario Outline: Unsuccessful conversion: uploaded data doesn't match selected conversion type
    Given I have uploaded <input data>
    And I have selected conversion other than <correct conversion type>
    When I request conversion
    And Error occurs during conversion
    Then Error message should be displayed to me
    And I should be asked to select <correct conversion type>

    Examples:
      | input data    | correct conversion type |
      | hipparcos.txt | hipparcos               |
      | integral.txt  | integral                |
      | nsvs.txt      | nsvs                    |
      | asas.txt      | asas                    |
      | munipac.txt   | munipac                 |
      | kepler.txt    | kepler                  |
      | catalina.txt  | catalina                |

  Scenario Outline: Incorrect conversion: uploaded data doesn't match correct conversion type
    # sometimes there is no way to validate correctness of the output file
    Given I have uploaded <input data>
    And I have selected conversion other than <correct conversion type>
    When I request conversion
    Then incorrectly converted data should be displayed to me
    And I should receive a link to download incorrectly converted data

    Examples:
      | input data    | correct conversion type |
      | hipparcos.txt | hipparcos               |
      | integral.txt  | integral                |
      | nsvs.txt      | nsvs                    |
      | asas.txt      | asas                    |
      | munipac.txt   | munipac                 |
      | kepler.txt    | kepler                  |
      | catalina.txt  | catalina                |