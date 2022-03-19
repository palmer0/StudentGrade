package es.ulpgc.eite.studentgrade;


import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.MatcherAssert.assertThat;

import android.content.pm.ActivityInfo;
import android.widget.Button;
import android.widget.TextView;

import androidx.lifecycle.Lifecycle;
import androidx.test.core.app.ActivityScenario;

import es.ulpgc.eite.studentgrade.grade.GradeActivity;
import es.ulpgc.eite.studentgrade.student.StudentActivity;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;

/**
 * Created by Luis on marzo, 2022
 */
public class StudentGradeSteps {

  ActivityScenario<StudentActivity> student;
  ActivityScenario<GradeActivity> grade;

  @Given("I am on {string} screen")
  public void iAmOnScreen(String screen) {


    Class activity = (screen.equals("student"))
        ? StudentActivity.class : GradeActivity.class;
    ActivityScenario scenario = ActivityScenario.launch(activity);

    if(screen.equals("student")){
      student = scenario;

    } else {
      grade = scenario;

    }

    scenario.moveToState(Lifecycle.State.CREATED);
    scenario.moveToState(Lifecycle.State.RESUMED);
  }

  @And("I am on {string} screen and see {string} value on {string} view")
  public void iAmOnScreenAndSeeValueOnView(
      String screen, String value, String view
  ) {

    int viewId = (view.equals("lower")) ? R.id.btnLowerGrade :
        ((view.equals("higher")) ? R.id.btnHigherGrade : R.id.tvStudentGrade);

    ActivityScenario scenario = (screen.equals("student")) ? student : grade;

    scenario.onActivity(activity -> {
      TextView tv = (TextView) activity.findViewById(viewId);
      assertThat(tv.getText().toString(), equalTo(value));
    });
  }

  @When("I am on {string} screen and press {string} button")
  public void iAmOnScreenAndPressButton(String screen, String button) {

    int viewId;

    if(screen.equals("student")) {

      viewId = (button.equals("outstanding")) ? R.id.btnOutstandingGrade :
          ((button.equals("mention")) ? R.id.btnMentionGrade : R.id.btnPassGrade);

    } else {

      viewId = (button.equals("lower")) ? R.id.btnLowerGrade : R.id.btnHigherGrade;
    }


    ActivityScenario scenario = (screen.equals("student")) ? student : grade;

    scenario.onActivity(activity -> {
      Button btn = (Button) activity.findViewById(viewId);
      btn.performClick();
    });
  }


  @And("I rotate {string} screen")
  public void iRotateScreen(String screen) {
    ActivityScenario scenario = (screen.equals("student")) ? student : grade;

    scenario.onActivity(activity -> {
      activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
      activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    });

  }
}
