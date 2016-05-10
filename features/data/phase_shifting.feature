Feature: Phase shifting
  In order to check if the provided data is periodic
  As the astronomer
  I want to be able to shift my data based on the provided period

  Scenario: Unsuccessful phase shifting: phase is not greater than zero
    Given I have provided the input data
    And I have not provided phase greater than zero
    When I Request phase shifting
    Then I should be asked to provide phase greater than zero

  Scenario Outline: Unsuccessful phase shifting: input data is in wrong format
    Given I have provided <input data>
    And Input data doesn't match <correct data format>
    When I Request phase shifting
    Then I should be notify about problems with the data format
    And Example of the <correct data format> should be displayed to me
    And I should be asked to provide data in <correct data format>

    Examples:
      | correct data format |
      | correct_format1.txt |

  Scenario: Unsuccessful phase shifting: input data contains illegal characters
    Given I have provided input data
    And Input data contains characters other than numbers, spaces and dot (as decimal separator)
    When I request phase shifting
    Then I should be notify about data containing illegal characters
    And I should be asked to provide correct data

  Scenario Outline: Successful phase shifting: phase is greater than zero
    Given I have provided <input data>
    And I have provided <phase> greater than zero
    When I request phase shifting
    Then <input data> should be copied
    And X values of the copied data should be increased by the value of the phase
    And Both sets should be joined into <joined data>
    And <joined data> should be shifted by the phase
    And <shifted data> should be displayed to me
    And I should receive a link to download <shifted data>

    Examples:
      | input data        | joined data | phase | shifted data |
      | to_be_phased1.txt | joined1.txt | 1     | phased_1.out |
      | to_be_phased2.txt | joined2.txt | 3     | phased_2.out |
      | to_be_phased3.txt | joined3.txt | 0.78  | phased_3.out |