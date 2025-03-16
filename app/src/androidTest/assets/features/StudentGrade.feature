Feature: Student Grade

  Scenario: Test01Scenario012A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    When I am on "student" screen and press "outstanding" button
    Then I am on "grade" screen
    And I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view

  Scenario: Test02Scenario023A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    When I am on "student" screen and press "mention" button
    Then I am on "grade" screen
    And I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view

  Scenario: Test03Scenario034A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    When I am on "student" screen and press "pass" button
    Then I am on "grade" screen
    And I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view

  Scenario: Test04Scenario0421A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "outstanding" button
    And I am on "grade" screen
    And I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view
    When I am on "grade" screen and press "lower" button
    Then I back on "student" screen
    And I am on "student" screen and see "9" value on "grade" view

  Scenario: Test05Scenario0522A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "outstanding" button
    And I am on "grade" screen
    And I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view
    When I am on "grade" screen and press "higher" button
    Then I back on "student" screen
    And I am on "student" screen and see "10" value on "grade" view

  Scenario: Test06Scenario0631A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    And I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    When I am on "grade" screen and press "higher" button
    Then I back on "student" screen
    And I am on "student" screen and see "8" value on "grade" view

  Scenario: Test07Scenario0732A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    And I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    When I am on "grade" screen and press "lower" button
    Then I back on "student" screen
    And I am on "student" screen and see "7" value on "grade" view

  Scenario: Test08Scenario0841A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    And I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    When I am on "grade" screen and press "higher" button
    Then I back on "student" screen
    And I am on "student" screen and see "6" value on "grade" view

  Scenario: Test09Scenario0942A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    And I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    When I am on "grade" screen and press "lower" button
    Then I back on "student" screen
    And I am on "student" screen and see "5" value on "grade" view

  Scenario: Test10Scenario102B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "outstanding" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view

  Scenario: Test11Scenario113B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view

  Scenario: Test12Scenario124B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view

  Scenario: Test13Scenario1321B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "outstanding" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view
    And I am on "grade" screen and press "lower" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "9" value on "grade" view

  Scenario: Test14Scenario1422B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "outstanding" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "9" value on "lower" view
    And I am on "grade" screen and see "10" value on "higher" view
    And I am on "grade" screen and press "higher" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "10" value on "grade" view

  Scenario: Test15Scenario1531B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    And I am on "grade" screen and press "higher" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "8" value on "grade" view

  Scenario: Test16Scenario1632B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    And I am on "grade" screen and press "lower" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "7" value on "grade" view

  Scenario: Test17Scenario1741B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    And I am on "grade" screen and press "higher" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "6" value on "grade" view

  Scenario: Test18Scenario1842B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    And I am on "grade" screen and press "lower" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "5" value on "grade" view

  Scenario: Test19Scenario195A
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    And I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    And I am on "grade" screen and press "lower" button
    And I back on "student" screen
    And I am on "student" screen and see "5" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    When I am on "grade" screen and press "back" button
    Then I back on "student" screen
    And I am on "student" screen and see "5" value on "grade" view

  Scenario: Test20Scenario205B
    Given I am on "student" screen
    And I am on "student" screen and see "0" value on "grade" view
    And I am on "student" screen and press "pass" button
    And I am on "grade" screen
    And I am on "grade" screen and see "5" value on "lower" view
    And I am on "grade" screen and see "6" value on "higher" view
    And I am on "grade" screen and press "lower" button
    And I back on "student" screen
    And I am on "student" screen and see "5" value on "grade" view
    And I am on "student" screen and press "mention" button
    And I am on "grade" screen
    When I rotate "grade" screen
    Then I am on "grade" screen and see "7" value on "lower" view
    And I am on "grade" screen and see "8" value on "higher" view
    And I am on "grade" screen and press "back" button
    And I back on "student" screen
    When I rotate "student" screen
    Then I am on "student" screen and see "5" value on "grade" view
