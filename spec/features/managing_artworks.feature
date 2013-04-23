Feature: Managing artworks

  Scenario: register an artwork
    Given   I have 0 artworks
    When    I visit the new artwork path
    And     I fill in the form with Mask
    And     I submit the new form
    Then    I have 1 artwork

  Scenario: update a registered artwork
    Given   I created an artwork with the title Flower
    When    I visit the edit artwork path
    And     I fill in the form with Power
    And     I submit the edit form
    Then    I should have a updated artwork with the title Power