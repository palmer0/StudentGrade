Feature: Student Grade App

  # launch "student" screen

  Background:
    Given launch "student" screen
    And show "0" in "grade" view

  # press button on "student" screen

  Scenario: test01Scenario012A => "outstanding" evaluation
    When press "outstanding" button on "student" screen
    Then launch "grade" screen
    And show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen

  Scenario: test02Scenario023A => "mention" evaluation
    When press "mention" button on "student" screen
    Then launch "grade" screen
    And show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen

  Scenario: test03Scenario034A => "pass" evaluation
    When press "pass" button on "student" screen
    Then launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen

  # press button on "grade" screen

  Scenario: test04Scenario0421A => "outstanding" with navigation using "lower" button
    Given press "outstanding" button on "student" screen
    #And launch "grade" screen with "9" in "lower" view and "10" in "higher" view
    And launch "grade" screen
    And show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen
    When press "lower" button on "grade" screen
    Then resume "student" screen
    And show "9" in "grade" view on "student" screen

  Scenario: test05Scenario0522A => "outstanding" with navigation using "higher" button
    Given press "outstanding" button on "student" screen
    #And launch "grade" screen with "9" in "lower" view and "10" in "higher" view
    And launch "grade" screen
    And show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen
    When press "higher" button on "grade" screen
    Then resume "student" screen
    And show "10" in "grade" view on "student" screen

  Scenario: test06Scenario0631A => "mention" with navigation using "higher" button
    Given press "mention" button on "student" screen
    #And launch "grade" screen with "7" in "lower" view and "8" in "higher" view
    And launch "grade" screen
    And show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen
    When press "higher" button on "grade" screen
    Then resume "student" screen
    And show "8" in "grade" view on "student" screen

  Scenario: test07Scenario0732A => "mention" with navigation using "lower" button
    Given press "mention" button on "student" screen
    #And launch "grade" screen with "7" in "lower" view and "8" in "higher" view
    And launch "grade" screen
    And show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen
    When press "lower" button on "grade" screen
    Then resume "student" screen
    And show "7" in "grade" view on "student" screen

  Scenario: test08Scenario0841A => "pass" with navigation using "higher" button
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    When press "higher" button on "grade" screen
    Then resume "student" screen
    And show "6" in "grade" view on "student" screen


  Scenario: test09Scenario0942A => "pass" with navigation using "lower" button
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    When press "lower" button on "grade" screen
    Then resume "student" screen
    And show "5" in "grade" view on "student" screen


  # press button on "student" screen and rotate "grade" screen

  Scenario: test10Scenario102B => "outstanding" with screen rotation on "grade" screen
    Given press "outstanding" button on "student" screen
    And launch "grade" screen
    When rotate "grade" screen
    Then show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen

  Scenario: test11Scenario113B => "mention" with screen rotation on "grade" screen
    Given press "mention" button on "student" screen
    And launch "grade" screen
    When rotate "grade" screen
    Then show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen

  Scenario: test12Scenario124B => "pass" with screen rotation on "grade" screen
    Given press "pass" button on "student" screen
    And launch "grade" screen
    When rotate "grade" screen
    Then show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen

  # press button on "grade" screen and rotate "grade" and then "student" screen

  Scenario: test13Scenario1321B => "outstanding" with rotation and navigation using "lower" button
    Given press "outstanding" button on "student" screen
    #And launch "grade" screen with "9" in "lower" view and "10" in "higher" view
    And launch "grade" screen
    And show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen
    And rotate "grade" screen
    And press "lower" button on "grade" screen to return to "student" screen
    When rotate "student" screen
    Then show "9" in "grade" view on "student" screen

  Scenario: test14Scenario1422B => "outstanding" with rotation and navigation using "higher" button
    Given press "outstanding" button on "student" screen
    #And launch "grade" screen with "9" in "lower" view and "10" in "higher" view
    And launch "grade" screen
    And show "9" in "lower" view on "grade" screen
    And show "10" in "higher" view on "grade" screen
    And rotate "grade" screen
    #And press "higher" button on "grade" screen to return to "student" screen
    And press "higher" button on "grade" screen
    And resume "student" screen
    When rotate "student" screen
    Then show "10" in "grade" view on "student" screen

  Scenario: test15Scenario1531B => "mention" with rotation and navigation using "higher" button
    Given press "mention" button on "student" screen
    #And launch "grade" screen with "7" in "lower" view and "8" in "higher" view
    And launch "grade" screen
    And show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen
    And rotate "grade" screen
    #And press "higher" button on "grade" screen to return to "student" screen
    And press "higher" button on "grade" screen
    And resume "student" screen
    When rotate "student" screen
    Then show "8" in "grade" view on "student" screen

  Scenario: test16Scenario1632B => "mention" with rotation and navigation using "lower" button
    Given press "mention" button on "student" screen
    #And launch "grade" screen with "7" in "lower" view and "8" in "higher" view
    And launch "grade" screen
    And show "7" in "lower" view on "grade" screen
    And show "8" in "higher" view on "grade" screen
    And rotate "grade" screen
    #And press "lower" button on "grade" screen to return to "student" screen
    And press "lower" button on "grade" screen
    And resume "student" screen
    When rotate "student" screen
    Then show "7" in "grade" view on "student" screen


  Scenario: test17Scenario1741B => "pass" with rotation and navigation using "higher" button
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    And rotate "grade" screen
    #And press "higher" button on "grade" screen to return to "student" screen
    And press "higher" button on "grade" screen
    And resume "student" screen
    When rotate "student" screen
    Then show "6" in "grade" view on "student" screen

  Scenario: test18Scenario1842B => "pass" with rotation and navigation using "lower" button
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    And rotate "grade" screen
    #And press "lower" button on "grade" screen to return to "student" screen
    And press "lower" button on "grade" screen
    And resume "student" screen
    When rotate "student" screen
    Then show "5" in "grade" view on "student" screen

  # press button on "grade" screen and "back" button on "grade" screen

  Scenario: test19Scenario195A => Flow from "pass" to "mention" with back navigation
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    And press "lower" button on "grade" screen
    #And I return to "student" screen and see "5" in "grade" view
    And resume "student" screen
    And show "5" in "grade" view on "student" screen
    And press "mention" button on "student" screen
    And launch "grade" screen
    And rotate "grade" screen
    And show "7" in "lower" view and "8" in "higher" view
    When press "back" button on "grade" screen
    #Then I return to "student" screen
    Then resume "student" screen
    And show "5" in "grade" view on "student" screen

  Scenario: test20Scenario205B => Flow from "pass" to "mention" with rotation and back navigation
    Given press "pass" button on "student" screen
    #And launch "grade" screen with "5" in "lower" view and "6" in "higher" view
    And launch "grade" screen
    And show "5" in "lower" view on "grade" screen
    And show "6" in "higher" view on "grade" screen
    And press "lower" button on "grade" screen
    #And I return to "student" screen and see "5" in "grade" view
    And resume "student" screen
    And show "5" in "grade" view on "student" screen
    And press "mention" button on "student" screen
    And launch "grade" screen
    And rotate "grade" screen
    And show "7" in "lower" view and "8" in "higher" view
    And press "back" button on "grade" screen
    #And I return to "student" screen
    Then resume "student" screen
    When rotate "student" screen
    Then show "5" in "grade" view on "student" screen
