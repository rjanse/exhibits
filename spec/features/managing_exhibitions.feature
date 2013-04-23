Feature: Managing exhibitions

  Scenario: register an exhibitions
    Given   I have 0 exhibitions
    When    I visit the new exhibition path
    And     I fill in the exhibition form with gallery Foo
    And     I submit the new exhibition form
    Then    I have 1 exhibition

  Scenario: update a registered exhibition
    Given   I created an exhibition 
    When    I visit the edit exhibition path
    And     I fill in the exhibition form with gallery Bar
    And     I submit the edit exhibition form
    Then    I should have an updated exhibition with gallery Bar