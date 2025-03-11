package es.ulpgc.eite.studentgrade.grade;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import es.ulpgc.eite.studentgrade.R;

/**
 * Created by Luis on marzo, 2022
 */
public class GradeActivity
    extends AppCompatActivity implements GradeContract.View {

  public static String TAG = "StudentGrade.GradeActivity";

  private GradeContract.Presenter presenter;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_grade);
    getSupportActionBar().setTitle(R.string.title_grade_screen);

    // do the setup
    GradeScreen.configure(this);

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


  public void onHigherGradeBtnClicked(View view) {
    presenter.onHigherGradeBtnClicked();
  }

  public void onLowerGradeBtnClicked(View view) {
    presenter.onLowerGradeBtnClicked();

  }

  @Override
  public void onDataUpdated(GradeViewModel viewModel) {
    //Log.e(TAG, "onDataUpdated()");

    // deal with the data
    String[] data = viewModel.data.split(",");
    ((TextView) findViewById(R.id.btnLowerGrade)).setText(data[0]);
    ((TextView) findViewById(R.id.btnHigherGrade)).setText(data[1]);
  }

  @Override
  public void navigateToPreviousScreen() {
    finish();
  }


  @Override
  public void injectPresenter(GradeContract.Presenter presenter) {
    this.presenter = presenter;
  }
}
