Feature: Removing selected points from the graph
  In order to have correct data for my research
  As the astronomer
  I want to be able to remove selected points from the graph

  Scenario: Unsuccessful removing selected points: no points were selected
    Given I have selected no points in the graph
    When I request removing points
    Then I should be asked to select points

  Scenario: Unsuccessful removing selected points: no points were plotted
    Given There is no points in the graph
    When I Request removing points
    Then I should be asked to plot any points first
    
  Scenario: Successful removing selected points
    Given I have selected points in the graph
    When I request removing points
    Then Selected points should be removed from the graph