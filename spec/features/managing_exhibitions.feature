Feature: Managing exhibitions

  Scenario: create an exhibitions
    Given   I have 0 exhibitions
    When    I visit the new exhibition path
    And     I fill in the exhibition form with gallery Foo
    And     I submit the new exhibition form
    Then    I have 1 exhibition

  Scenario: update an exhibition
    Given   I created an exhibition 
    When    I visit the edit exhibition path
    And     I fill in the exhibition form with gallery Bar
    And     I submit the edit exhibition form
    Then    I should have an updated exhibition with gallery Bar

  Scenario: filter future exhibitions
    Given   I created exhibitions that are in the past, current and future
    And     I visit the exhibitions path
    When    I click the future exhibitions filter
    Then    I only should see future exhibitions

  Scenario: filter past exhibitions
    Given   I created exhibitions that are in the past, current and future
    And     I visit the exhibitions path
    When    I click the past exhibitions filter
    Then    I only should see past exhibitions   
    
  Scenario: filter current exhibitions  
    Given   I created exhibitions that are in the past, current and future
    When    I visit the exhibitions path
    And     I click the current exhibitions filter
    Then    I only should see current exhibitions