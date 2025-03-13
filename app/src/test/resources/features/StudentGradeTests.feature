
Feature: Student Grade App

  Background:
    Given I am on the "student" screen
    And I see "0" in the "grade" view

  Scenario: Scenario012A - "outstanding" evaluation
    When I press the "outstanding" button on the "student" screen
    Then I should be on the "grade" screen
    And I see "9" in the "lower" view on the "grade" screen
    And I see "10" in the "higher" view on the "grade" screen

  Scenario: Scenario023A - "mention" evaluation
    When I press the "mention" button on the "student" screen
    Then I should be on the "grade" screen
    And I see "7" in the "lower" view on the "grade" screen
    And I see "8" in the "higher" view on the "grade" screen

  Scenario: Scenario034A - "pass" evaluation
    When I press the "pass" button on the "student" screen
    Then I should be on the "grade" screen
    And I see "5" in the "lower" view on the "grade" screen
    And I see "6" in the "higher" view on the "grade" screen

  Scenario: Scenario0421A - "outstanding" with navigation using "lower" button
    Given I press the "outstanding" button on the "student" screen
    And I am on the "grade" screen with "9" in the "lower" view and "10" in the "higher" view
    When I press the "lower" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "9" in the "grade" view on the "student" screen

  Scenario: Scenario0522A - "outstanding" with navigation using "higher" button
    Given I press the "outstanding" button on the "student" screen
    And I am on the "grade" screen with "9" in the "lower" view and "10" in the "higher" view
    When I press the "higher" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "10" in the "grade" view on the "student" screen

  Scenario: Scenario0631A - "mention" with navigation using "higher" button
    Given I press the "mention" button on the "student" screen
    And I am on the "grade" screen with "7" in the "lower" view and "8" in the "higher" view
    When I press the "higher" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "8" in the "grade" view on the "student" screen

  Scenario: Scenario0732A - "mention" with navigation using "lower" button
    Given I press the "mention" button on the "student" screen
    And I am on the "grade" screen with "7" in the "lower" view and "8" in the "higher" view
    When I press the "lower" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "7" in the "grade" view on the "student" screen

  Scenario: Scenario0841A - "pass" with navigation using "higher" button
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    When I press the "higher" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "6" in the "grade" view on the "student" screen

  Scenario: Scenario0942A - "pass" with navigation using "lower" button
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    When I press the "lower" button on the "grade" screen
    Then I go back to the "student" screen
    And I see "5" in the "grade" view on the "student" screen

  Scenario: Scenario102B - "outstanding" with screen rotation on the "grade" screen
    Given I press the "outstanding" button on the "student" screen
    And I am on the "grade" screen
    When I rotate the "grade" screen
    Then I see "9" in the "lower" view on the "grade" screen
    And I see "10" in the "higher" view on the "grade" screen

  Scenario: Scenario113B - "mention" with screen rotation on the "grade" screen
    Given I press the "mention" button on the "student" screen
    And I am on the "grade" screen
    When I rotate the "grade" screen
    Then I see "7" in the "lower" view on the "grade" screen
    And I see "8" in the "higher" view on the "grade" screen

  Scenario: Scenario124B - "pass" with screen rotation on the "grade" screen
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen
    When I rotate the "grade" screen
    Then I see "5" in the "lower" view on the "grade" screen
    And I see "6" in the "higher" view on the "grade" screen

  Scenario: Scenario1321B - "outstanding" with rotation and navigation using "lower" button
    Given I press the "outstanding" button on the "student" screen
    And I am on the "grade" screen with "9" in the "lower" view and "10" in the "higher" view
    And I rotate the "grade" screen
    And I press the "lower" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "9" in the "grade" view on the "student" screen

  Scenario: Scenario1422B - "outstanding" with rotation and navigation using "higher" button
    Given I press the "outstanding" button on the "student" screen
    And I am on the "grade" screen with "9" in the "lower" view and "10" in the "higher" view
    And I rotate the "grade" screen
    And I press the "higher" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "10" in the "grade" view on the "student" screen

  Scenario: Scenario1531B - "mention" with rotation and navigation using "higher" button
    Given I press the "mention" button on the "student" screen
    And I am on the "grade" screen with "7" in the "lower" view and "8" in the "higher" view
    And I rotate the "grade" screen
    And I press the "higher" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "8" in the "grade" view on the "student" screen

  Scenario: Scenario1632B - "mention" with rotation and navigation using "lower" button
    Given I press the "mention" button on the "student" screen
    And I am on the "grade" screen with "7" in the "lower" view and "8" in the "higher" view
    And I rotate the "grade" screen
    And I press the "lower" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "7" in the "grade" view on the "student" screen

  Scenario: Scenario1741B - "pass" with rotation and navigation using "higher" button
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    And I rotate the "grade" screen
    And I press the "higher" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "6" in the "grade" view on the "student" screen

  Scenario: Scenario1842B - "pass" with rotation and navigation using "lower" button
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    And I rotate the "grade" screen
    And I press the "lower" button on the "grade" screen to return to the "student" screen
    When I rotate the "student" screen
    Then I see "5" in the "grade" view on the "student" screen

  Scenario: Scenario195A - Flow from "pass" to "mention" with back navigation
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    And I press the "lower" button on the "grade" screen
    And I return to the "student" screen and see "5" in the "grade" view
    And I press the "mention" button on the "student" screen
    And I am on the "grade" screen
    And I rotate the "grade" screen
    And I see "7" in the "lower" view and "8" in the "higher" view
    When I press the "back" button on the "grade" screen
    Then I return to the "student" screen
    And I see "5" in the "grade" view on the "student" screen

  Scenario: Scenario205B - Flow from "pass" to "mention" with rotation and back navigation
    Given I press the "pass" button on the "student" screen
    And I am on the "grade" screen with "5" in the "lower" view and "6" in the "higher" view
    And I press the "lower" button on the "grade" screen
    And I return to the "student" screen and see "5" in the "grade" view
    And I press the "mention" button on the "student" screen
    And I am on the "grade" screen
    And I rotate the "grade" screen
    And I see "7" in the "lower" view and "8" in the "higher" view
    And I press the "back" button on the "grade" screen
    And I return to the "student" screen
    When I rotate the "student" screen
    Then I see "5" in the "grade" view on the "student" screen
