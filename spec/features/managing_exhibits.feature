Feature: Managing exhibits
  Scenario: register an exhibit
    Given   I have 0 exhibits
    And     I have 1 artwork
    And     I have 1 exhibition
    When    I visit the new exhibit path
    And     I fill in the exhibit form
    And     I submit the new exhibit form
    Then    I have 1 exhibit
  