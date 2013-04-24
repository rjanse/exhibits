Feature: Managing exhibits
  Scenario: register an exhibit
    Given   I have 0 exhibits
    And     I created an artwork
    And     I created an exhibition
    When    I visit the new exhibit path
    And     I fill in the exhibit form
    And     I submit the new exhibit form
    Then    I have 1 exhibits