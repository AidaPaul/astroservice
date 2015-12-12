# Created by Konrad Wybraniec at 30.11.2015
Feature: Sending file
  As the user
  I want to send file to the server
  So that I can perform operations on this file

  Scenario: file is send
    When user sends the file
    Then window pops up that says "file sent".
