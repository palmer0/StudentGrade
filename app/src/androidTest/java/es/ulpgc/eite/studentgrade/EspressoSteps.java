package es.ulpgc.eite.studentgrade;


import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.Espresso.pressBack;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.withEffectiveVisibility;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;

import androidx.test.core.app.ActivityScenario;
import androidx.test.core.app.ApplicationProvider;
import androidx.test.espresso.matcher.ViewMatchers;

import es.ulpgc.eite.studentgrade.student.StudentActivity;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

/**
 * Created by Luis on marzo, 2022
 */
public class EspressoSteps {



  private ActivityScenario<StudentActivity> studentScenario;

  @Given("I am on {string} screen")
  public void iAmOnScreen(String screen) {

    if (screen.equals("student") && studentScenario == null) {
      studentScenario = ActivityScenario.launch(StudentActivity.class);

    }


    try {
      Thread.sleep(700);
    } catch (InterruptedException e) {

    }

  }


  @Then("I back on {string} screen")
  public void iBackOnScreen(String screen) {

    if (screen.equals("student")) {
      onView(withId(R.id.tvStudentGrade))
          .check(matches(withEffectiveVisibility(ViewMatchers.Visibility.VISIBLE)));

    } else {
      onView(withId(R.id.btnLowerGrade))
          .check(matches(withEffectiveVisibility(ViewMatchers.Visibility.VISIBLE)));
    }


    try {
      Thread.sleep(700);
    } catch (InterruptedException e) {

    }

  }

  @And("I am on {string} screen and see {string} value on {string} view")
  public void iAmOnScreenAndSeeValueOnView(
      String screen, String value, String view
  ) {

    int viewId = (view.equals("lower")) ? R.id.btnLowerGrade :
        ((view.equals("higher")) ? R.id.btnHigherGrade : R.id.tvStudentGrade);

    onView(withId(viewId)).check(matches(withText(value)));

  }

  @When("I am on {string} screen and press {string} button")
  public void iAmOnScreenAndPressButton(String screen, String button) {

    if (screen.equals("student")) {
      if (button.equals("back")) {
        pressBack();

      } else {
        int viewId = button.equals("outstanding") ? R.id.btnOutstandingGrade :
            (button.equals("mention") ? R.id.btnMentionGrade : R.id.btnPassGrade);
        onView(withId(viewId)).perform(click());
      }

    } else {
      if (button.equals("back")) {
        pressBack();

      } else {
        int viewId = button.equals("lower") ? R.id.btnLowerGrade : R.id.btnHigherGrade;
        onView(withId(viewId)).perform(click());
      }
    }


  }

  @And("I rotate {string} screen")
  public void iRotateScreen(String screen) {

    studentScenario.onActivity(activity -> {
      Context context = ApplicationProvider.getApplicationContext();
      int orientation = context.getResources().getConfiguration().orientation;

      if (orientation == Configuration.ORIENTATION_PORTRAIT) {
        activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
      } else {
        activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
      }
    });


  }

}
