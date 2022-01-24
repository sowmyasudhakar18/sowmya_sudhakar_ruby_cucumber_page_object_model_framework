Feature: Validate the user can be added and deleted on way2 automation page

  Scenario: Validate new user can be added to way2 automation page
    Given the user navigates to the way2 automation page
    And the user clicks the add user
    And the user user lands on the add user modal dialogue page
    And the user fills the add user modal dialogue page with josh healen data
    When the user clicks the save
    Then the user validates that josh healen data has been added to the table

  Scenario: Validate User Name: novak can be deleted from the table
    Given the user navigates to the way2 automation page
    And the user clicks on edit button of novak user
    And the user user lands on the confirmation dialogue page
    When the user clicks the ok
    Then the user validates novak user has been deleted from the table
