Feature: Managing artworks

  Scenario: register an artwork
    Given   I have 0 artworks
    When    I visit the new artwork path
    And     I fill in the artwork form with title Flower
    And     I submit the new artwork form
    Then    I have 1 artwork

  Scenario: update a registered artwork
    Given   I created an artwork
    When    I visit the edit artwork path
    And     I fill in the artwork form with title Power
    And     I submit the edit artwork form
    Then    I should have an updated artwork with the title Power