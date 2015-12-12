# Created by Konrad Wybraniec at 30.11.2015
Feature: Receiving file
  As the user
  I want to receive a file from the server

  Scenario: user is receiving the file
    When user receives the file
    Then window pops up that says "file received".
