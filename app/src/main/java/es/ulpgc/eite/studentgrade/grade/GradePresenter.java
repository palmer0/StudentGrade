package es.ulpgc.eite.studentgrade.grade;

import java.lang.ref.WeakReference;

import es.ulpgc.eite.studentgrade.app.AppMediator;
import es.ulpgc.eite.studentgrade.app.GradeToStudentState;
import es.ulpgc.eite.studentgrade.app.StudentToGradeState;

/**
 * Created by Luis on marzo, 2022
 */
public class GradePresenter implements GradeContract.Presenter {

  public static String TAG = "StudentGrade.GradePresenter";

  private WeakReference<GradeContract.View> view;
  private GradeState state;
  private GradeContract.Model model;
  private AppMediator mediator;

  public GradePresenter(AppMediator mediator) {
    this.mediator = mediator;
    state = mediator.getGradeState();
  }

  @Override
  public void onStart() {
    // Log.e(TAG, "onStart()");

    // initialize the state 
    //state = new GradeState();

    // call the model and update the state
    state.data = model.getStoredData();

    // use passed state if is necessary
    StudentToGradeState savedState = getStateFromPreviousScreen();
    if (savedState != null) {

      // update the model if is necessary
      //model.onDataFromPreviousScreen(savedState.data);

      // update the state if is necessary
      state.data = savedState.data;

    }
  }

  @Override
  public void onRestart() {
    // Log.e(TAG, "onRestart()");

    // update the model if is necessary
    //model.onRestartScreen(state.data);
  }

  @Override
  public void onResume() {
    // Log.e(TAG, "onResume()");

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
  }

  @Override
  public void onDestroy() {
    // Log.e(TAG, "onDestroy()");
  }

  public void onGradeBtnClicked(String data) {
    GradeToStudentState newState = new GradeToStudentState();
    newState.data=data;
    passStateToPreviousScreen(newState);
    view.get().navigateToPreviousScreen();
  }

  @Override
  public void onHigherGradeBtnClicked() {
    String[] data = state.data.split(",");
    onGradeBtnClicked(data[1]);

  }

  @Override
  public void onLowerGradeBtnClicked() {
    String[] data = state.data.split(",");
    onGradeBtnClicked(data[0]);

  }

  private void passStateToPreviousScreen(GradeToStudentState state) {
    mediator.setPreviousGradeScreenState(state);
  }

  private StudentToGradeState getStateFromPreviousScreen() {
    return mediator.getPreviousGradeScreenState();
  }

  @Override
  public void injectView(WeakReference<GradeContract.View> view) {
    this.view = view;
  }

  @Override
  public void injectModel(GradeContract.Model model) {
    this.model = model;
  }

}
