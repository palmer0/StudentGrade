package es.ulpgc.eite.studentgrade.student;

import android.util.Log;

import java.lang.ref.WeakReference;

import es.ulpgc.eite.studentgrade.app.AppMediator;
import es.ulpgc.eite.studentgrade.app.GradeToStudentState;
import es.ulpgc.eite.studentgrade.app.StudentToGradeState;

/**
 * Created by Luis on marzo, 2022
 */
public class StudentPresenter implements StudentContract.Presenter {

  public static String TAG = "StudentGrade.StudentPresenter";

  private WeakReference<StudentContract.View> view;
  private StudentState state;
  private StudentContract.Model model;
  private AppMediator mediator;

  public StudentPresenter(AppMediator mediator) {
    this.mediator = mediator;
    state = mediator.getStudentState();
  }

  @Override
  public void onStart() {
    // Log.e(TAG, "onStart()");

    // initialize the state 
    //state = new StudentState();

    // call the model and update the state
    state.data = model.getStoredData();

  }

  @Override
  public void onRestart() {
    // Log.e(TAG, "onRestart()");

    // update the model if is necessary
    //model.onRestartScreen(state.data);

    // update the view
    //view.get().onDataUpdated(state);
  }

  @Override
  public void onResume() {
    Log.e(TAG, "onResume()");

    // use passed state if is necessary
    GradeToStudentState savedState = getStateFromNextScreen();
    if (savedState != null) {

      // update the model if is necessary
      //model.onDataFromNextScreen(savedState.data);

      // update the state if is necessary
      state.data = savedState.data;
    }

    // call the model and update the state
    //state.data = model.getStoredData();

    // update the view
    view.get().onDataUpdated(state);

  }

  @Override
  public void onBackPressed() {
    // Log.e(TAG, "onBackPressed()");
  }

  @Override
  public void onPause() {
    // Log.e(TAG, "onPause()");

    // call the model and update the state
    //state.data = model.getStoredData();

    // update the view
    //view.get().onDataUpdated(state);
  }

  @Override
  public void onDestroy() {
    // Log.e(TAG, "onDestroy()");
  }

  private void onGradeBtnClicked(String data) {
    StudentToGradeState newState = new StudentToGradeState();
    newState.data = data;
    passStateToNextScreen(newState);
    view.get().navigateToNextScreen();
  }

  @Override
  public void onOutstandingGradeBtnClicked() {
    onGradeBtnClicked("9,10");

  }

  @Override
  public void onMentionGradeBtnClicked() {
    onGradeBtnClicked("7,8");

  }

  @Override
  public void onPassGradeBtnClicked() {
    onGradeBtnClicked("5,6");

  }

  private GradeToStudentState getStateFromNextScreen() {
    return mediator.getNextStudentScreenState();
  }

  private void passStateToNextScreen(StudentToGradeState state) {
    mediator.setNextStudentScreenState(state);
  }


  @Override
  public void injectView(WeakReference<StudentContract.View> view) {
    this.view = view;
  }

  @Override
  public void injectModel(StudentContract.Model model) {
    this.model = model;
  }

}
