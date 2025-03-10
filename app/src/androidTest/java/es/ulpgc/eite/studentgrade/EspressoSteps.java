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

/**
 * Created by Luis on marzo, 2022
 */
public class EspressoSteps {


  //private ActivityController<StudentActivity> studentTestCtrl;
  //private ActivityController<GradeActivity> gradeTestCtrl;

  private ActivityScenario<StudentActivity> studentScenario;

  public void iAmOnScreen(String screen) {

    if (screen.equals("student") && studentScenario == null) {
      studentScenario = ActivityScenario.launch(StudentActivity.class);

    }

    /*
    if(screen.equals("student")) {
      studentTestCtrl = Robolectric.buildActivity(StudentActivity.class);
      studentTestCtrl.create().resume().visible();

    } else {
      studentTestCtrl.pause();

      gradeTestCtrl = Robolectric.buildActivity(GradeActivity.class);
      gradeTestCtrl.create().resume().visible();
    }
    */

    try {
      Thread.sleep(700);
    } catch (InterruptedException e) {

    }

  }


  public void iBackOnScreen(String screen) {

    if (screen.equals("student")) {
      //onView(withId(R.id.tvStudentGrade)).check(matches(isDisplayed()));
      onView(withId(R.id.tvStudentGrade))
          .check(matches(withEffectiveVisibility(ViewMatchers.Visibility.VISIBLE)));
    } else {
      //onView(withId(R.id.btnLowerGrade)).check(matches(isDisplayed()));
      onView(withId(R.id.btnLowerGrade))
          .check(matches(withEffectiveVisibility(ViewMatchers.Visibility.VISIBLE)));
    }

    /*
    if(screen.equals("student")) {
      studentTestCtrl.resume();

    } else {
      gradeTestCtrl.resume();
    }
    */

    try {
      Thread.sleep(700);
    } catch (InterruptedException e) {

    }

  }

  public void iAmOnScreenAndSeeValueOnView(
      String screen, String value, String view
  ) {

    int viewId = (view.equals("lower")) ? R.id.btnLowerGrade :
        ((view.equals("higher")) ? R.id.btnHigherGrade : R.id.tvStudentGrade);

    onView(withId(viewId)).check(matches(withText(value)));

    /*
    if(screen.equals("student")) {
      StudentActivity activity = studentTestCtrl.get();

      TextView tv = (TextView) activity.findViewById(viewId);
      assertThat(tv.getText().toString(), equalTo(value));

    } else {
      GradeActivity activity = gradeTestCtrl.get();

      Button btn = (Button) activity.findViewById(viewId);
      assertThat(btn.getText().toString(), equalTo(value));
    }
    */
  }

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


    /*
    if(screen.equals("student")) {
      StudentActivity activity = studentTestCtrl.get();

      if(button.equals("back")) {
        activity.onBackPressed();

      } else {
        int viewId = (button.equals("outstanding")) ? R.id.btnOutstandingGrade :
            ((button.equals("mention")) ? R.id.btnMentionGrade : R.id.btnPassGrade);

        Button btn = activity.findViewById(viewId);
        btn.performClick();
      }

    } else {
      GradeActivity activity = gradeTestCtrl.get();

      if(button.equals("back")) {
        activity.onBackPressed();

      } else {
        int viewId =
            (button.equals("lower")) ? R.id.btnLowerGrade : R.id.btnHigherGrade;

        Button btn = activity.findViewById(viewId);
        btn.performClick();
      }
    }
    */
  }


  public void iRotateScreen(String screen) {

    /*
    if (screen.equals("student")) {
      if (studentScenario != null) {
        studentScenario.recreate();
      }
    }
    */

    studentScenario.onActivity(activity -> {
      Context context = ApplicationProvider.getApplicationContext();
      int orientation = context.getResources().getConfiguration().orientation;

      if (orientation == Configuration.ORIENTATION_PORTRAIT) {
        activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
      } else {
        activity.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
      }
    });

    /*
    Bundle bundle = new Bundle();

    if(screen.equals("student")) {
      studentTestCtrl
          .saveInstanceState(bundle)
          .pause()
          .stop()
          .destroy();

      studentTestCtrl = Robolectric.buildActivity(StudentActivity.class)
          .create(bundle)
          .restoreInstanceState(bundle)
          .resume()
          .visible();

    } else {
      gradeTestCtrl
          .saveInstanceState(bundle)
          .pause()
          .stop()
          .destroy();

      gradeTestCtrl = Robolectric.buildActivity(GradeActivity.class)
          .create(bundle)
          .restoreInstanceState(bundle)
          .resume()
          .visible();
    }
    */

  }

}
