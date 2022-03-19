package es.ulpgc.eite.studentgrade;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;

/**
 * Created by Luis on marzo, 2022
 */
@RunWith(RobolectricTestRunner.class)
public class StudentGradeTests {

  StudentGradeSteps steps = new StudentGradeSteps();

  @Test
  public void Scenario1A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
  }

  // -----

  @Test
  public void Scenario2A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "outstanding");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "9", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "10", "higher");
  }

  @Test
  public void Scenario3A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "mention");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "7", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "8", "higher");
  }

  @Test
  public void Scenario4A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "pass");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "5", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "6", "higher");
  }

  // -----

  @Test
  public void Scenario21A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "outstanding");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "9", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "10", "higher");
    steps.iAmOnScreenAndPressButton("grade", "lower");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "9", "grade");
  }

  @Test
  public void Scenario22A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "outstanding");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "9", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "10", "higher");
    steps.iAmOnScreenAndPressButton("grade", "higher");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "10", "grade");
  }

  // -----


  @Test
  public void Scenario31A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "mention");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "7", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "8", "higher");
    steps.iAmOnScreenAndPressButton("grade", "higher");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "8", "grade");
  }

  @Test
  public void Scenario32A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "mention");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "7", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "8", "higher");
    steps.iAmOnScreenAndPressButton("grade", "lower");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "7", "grade");
  }

  // -----

  @Test
  public void Scenario41A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "pass");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "5", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "6", "higher");
    steps.iAmOnScreenAndPressButton("grade", "higher");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "6", "grade");
  }


  @Test
  public void Scenario42A() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "pass");
    steps.iAmOnScreen("grade");
    steps.iAmOnScreenAndSeeValueOnView("grade", "5", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "6", "higher");
    steps.iAmOnScreenAndPressButton("grade", "lower");
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "5", "grade");
  }

  // -----

  @Test
  public void Scenario1B() {
    steps.iAmOnScreen("student");
    steps.iRotateScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
  }

  // -----

  @Test
  public void Scenario2B() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "outstanding");
    steps.iAmOnScreen("grade");
    steps.iRotateScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("grade", "9", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "10", "higher");
  }

  @Test
  public void Scenario3B() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "mention");
    steps.iAmOnScreen("grade");
    steps.iRotateScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("grade", "7", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "8", "higher");
  }

  @Test
  public void Scenario4B() {
    steps.iAmOnScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("student", "0", "grade");
    steps.iAmOnScreenAndPressButton("student", "pass");
    steps.iAmOnScreen("grade");
    steps.iRotateScreen("student");
    steps.iAmOnScreenAndSeeValueOnView("grade", "5", "lower");
    steps.iAmOnScreenAndSeeValueOnView("grade", "6", "higher");
  }


}
