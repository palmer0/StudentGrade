package es.ulpgc.eite.studentgrade.student;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import es.ulpgc.eite.studentgrade.R;
import es.ulpgc.eite.studentgrade.grade.GradeActivity;

/**
 * Created by Luis on marzo, 2022
 */
public class StudentActivity
    extends AppCompatActivity implements StudentContract.View {

  public static String TAG = "StudentGrade.StudentActivity";

  private StudentContract.Presenter presenter;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_student);
    getSupportActionBar().setTitle(R.string.title_student_screen);

    // do the setup
    StudentScreen.configure(this);

    if (savedInstanceState == null) {
      presenter.onCreateCalled();

    } else {
      presenter.onRecreateCalled();
    }
  }

  @Override
  protected void onResume() {
    super.onResume();

    // load the data
    presenter.onResumeCalled();
  }

  @Override
  public void onBackPressed() {
    super.onBackPressed();

    presenter.onBackPressedCalled();
  }

  @Override
  protected void onPause() {
    super.onPause();

    presenter.onPauseCalled();
  }

  @Override
  protected void onDestroy() {
    super.onDestroy();

    presenter.onDestroyCalled();
  }


  public void onOutstandingGradeBtnClicked(View view) {
    presenter.onOutstandingGradeBtnClicked();
  }

  public void onMentionGradeBtnClicked(View view) {
    presenter.onMentionGradeBtnClicked();
  }

  public void onPassGradeBtnClicked(View view) {
    presenter.onPassGradeBtnClicked();
  }

  @Override
  public void onDataUpdated(StudentViewModel viewModel) {
    //Log.e(TAG, "onDataUpdated()");

    // deal with the data
    ((TextView) findViewById(R.id.tvStudentGrade)).setText(viewModel.data);
  }


  @Override
  public void navigateToNextScreen() {
    Intent intent = new Intent(this, GradeActivity.class);
    startActivity(intent);
  }

  @Override
  public void injectPresenter(StudentContract.Presenter presenter) {
    this.presenter = presenter;
  }


}
