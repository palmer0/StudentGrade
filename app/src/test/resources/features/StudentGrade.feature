Feature: StudentGrade

  Background:
    Given I am on "<screen1>" screen
    And I am on "<screen2>" screen and see "<value0>" value on "<view0>" view

  Scenario Outline: Scenario 1
    When I am on "<screen1>" screen and press "<button>" button
    Then I am on "<screen2>" screen
    And I am on "<screen2>" screen and see "<value1>" value on "<view1>" view
    And I am on "<screen2>" screen and see "<value2>" value on "<view2>" view
    And I rotate "<screen2>" screen

    Examples:
      | button      | screen2 | value1 | view1 | value2 | view2  |
      | outstanding | grade   | 9      | lower | 10     | higher |



