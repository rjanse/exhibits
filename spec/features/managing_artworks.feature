Feature: Managing artworks
  Scenario: register an artwork
    Given   I have 0 artworks
    When    I vist the new artwork path
    And     I fill in the form
    And     I submit the form
    Then    I have 1 artwork