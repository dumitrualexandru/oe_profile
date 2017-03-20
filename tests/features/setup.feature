@api
Feature: Setup
  In order to properly test the Behat Toolbox
  As a developer
  I want to be sure that the test environment is properly setup.

  Background:

    Given users:
      | name    | mail              | pass |
      | test    | test@example.com  | pass |

    Given "article" content:
      | title         | body         |
      | Article title | Article body |

  Scenario: Test that Behat can access a Drupal working copy.

    Given I am not logged in
    When I visit "/user"

    Then I should see "Username"
    When I enter "test" for "Username"
    And I enter "pass" for "Password"
    And I press the "Log in" button

    Then I should see the link "View"
    And I should see the link "Edit"
