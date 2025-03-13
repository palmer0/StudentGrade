Feature: Student Grade App

  Background:
    Given I am on "student" screen
    And I see "0" in "grade" view

  Scenario: Scenario012A => "outstanding" evaluation
    When I press "outstanding" button on "student" screen
    Then I should be on "grade" screen
    And I see "9" in "lower" view on "grade" screen
    And I see "10" in "higher" view on "grade" screen

  Scenario: Scenario023A => "mention" evaluation
    When I press "mention" button on "student" screen
    Then I should be on "grade" screen
    And I see "7" in "lower" view on "grade" screen
    And I see "8" in "higher" view on "grade" screen

  Scenario: Scenario034A => "pass" evaluation
    When I press "pass" button on "student" screen
    Then I should be on "grade" screen
    And I see "5" in "lower" view on "grade" screen
    And I see "6" in "higher" view on "grade" screen

  Scenario: Scenario0421A => "outstanding" with navigation using "lower" button
    Given I press "outstanding" button on "student" screen
    And I am on "grade" screen with "9" in "lower" view and "10" in "higher" view
    When I press "lower" button on "grade" screen
    Then I go back to "student" screen
    And I see "9" in "grade" view on "student" screen

  Scenario: Scenario0522A => "outstanding" with navigation using "higher" button
    Given I press "outstanding" button on "student" screen
    And I am on "grade" screen with "9" in "lower" view and "10" in "higher" view
    When I press "higher" button on "grade" screen
    Then I go back to "student" screen
    And I see "10" in "grade" view on "student" screen

  Scenario: Scenario0631A => "mention" with navigation using "higher" button
    Given I press "mention" button on "student" screen
    And I am on "grade" screen with "7" in "lower" view and "8" in "higher" view
    When I press "higher" button on "grade" screen
    Then I go back to "student" screen
    And I see "8" in "grade" view on "student" screen

  Scenario: Scenario0732A => "mention" with navigation using "lower" button
    Given I press "mention" button on "student" screen
    And I am on "grade" screen with "7" in "lower" view and "8" in "higher" view
    When I press "lower" button on "grade" screen
    Then I go back to "student" screen
    And I see "7" in "grade" view on "student" screen

  Scenario: Scenario0841A => "pass" with navigation using "higher" button
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    When I press "higher" button on "grade" screen
    Then I go back to "student" screen
    And I see "6" in "grade" view on "student" screen





  Scenario: Scenario0942A => "pass" with navigation using "lower" button
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    When I press "lower" button on "grade" screen
    Then I go back to "student" screen
    And I see "5" in "grade" view on "student" screen

  Scenario: Scenario102B => "outstanding" with screen rotation on "grade" screen
    Given I press "outstanding" button on "student" screen
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I see "9" in "lower" view on "grade" screen
    And I see "10" in "higher" view on "grade" screen

  Scenario: Scenario113B => "mention" with screen rotation on "grade" screen
    Given I press "mention" button on "student" screen
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I see "7" in "lower" view on "grade" screen
    And I see "8" in "higher" view on "grade" screen

  Scenario: Scenario124B => "pass" with screen rotation on "grade" screen
    Given I press "pass" button on "student" screen
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I see "5" in "lower" view on "grade" screen
    And I see "6" in "higher" view on "grade" screen

  Scenario: Scenario1321B => "outstanding" with rotation and navigation using "lower" button
    Given I press "outstanding" button on "student" screen
    And I am on "grade" screen with "9" in "lower" view and "10" in "higher" view
    And I rotate "grade" screen
    And I press "lower" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "9" in "grade" view on "student" screen

  Scenario: Scenario1422B => "outstanding" with rotation and navigation using "higher" button
    Given I press "outstanding" button on "student" screen
    And I am on "grade" screen with "9" in "lower" view and "10" in "higher" view
    And I rotate "grade" screen
    And I press "higher" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "10" in "grade" view on "student" screen

  Scenario: Scenario1531B => "mention" with rotation and navigation using "higher" button
    Given I press "mention" button on "student" screen
    And I am on "grade" screen with "7" in "lower" view and "8" in "higher" view
    And I rotate "grade" screen
    And I press "higher" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "8" in "grade" view on "student" screen

  Scenario: Scenario1632B => "mention" with rotation and navigation using "lower" button
    Given I press "mention" button on "student" screen
    And I am on "grade" screen with "7" in "lower" view and "8" in "higher" view
    And I rotate "grade" screen
    And I press "lower" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "7" in "grade" view on "student" screen




  Scenario: Scenario1741B => "pass" with rotation and navigation using "higher" button
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    And I rotate "grade" screen
    And I press "higher" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "6" in "grade" view on "student" screen

  Scenario: Scenario1842B => "pass" with rotation and navigation using "lower" button
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    And I rotate "grade" screen
    And I press "lower" button on "grade" screen to return to "student" screen
    When I rotate "student" screen
    Then I see "5" in "grade" view on "student" screen

  Scenario: Scenario195A => Flow from "pass" to "mention" with back navigation
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    And I press "lower" button on "grade" screen
    And I return to "student" screen and see "5" in "grade" view
    And I press "mention" button on "student" screen
    And I am on "grade" screen
    And I rotate "grade" screen
    And I see "7" in "lower" view and "8" in "higher" view
    When I press "back" button on "grade" screen
    Then I return to "student" screen
    And I see "5" in "grade" view on "student" screen

  Scenario: Scenario205B => Flow from "pass" to "mention" with rotation and back navigation
    Given I press "pass" button on "student" screen
    And I am on "grade" screen with "5" in "lower" view and "6" in "higher" view
    And I press "lower" button on "grade" screen
    And I return to "student" screen and see "5" in "grade" view
    And I press "mention" button on "student" screen
    And I am on "grade" screen
    And I rotate "grade" screen
    And I see "7" in "lower" view and "8" in "higher" view
    And I press "back" button on "grade" screen
    And I return to "student" screen
    When I rotate "student" screen
    Then I see "5" in "grade" view on "student" screen
