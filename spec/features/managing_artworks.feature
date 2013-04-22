Feature: Managing artworks
  Scenario: Register an artwork
    Given there are no artworks registered
    When I vist the new artwork path
    And I fill in the form
    And I submit the form
    Then I should have 1 artwork registered