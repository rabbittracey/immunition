require 'test_helper'

class PatientImmunizationsControllerTest < ActionController::TestCase
  setup do
    @patient_immunization = patient_immunizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_immunizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_immunization" do
    assert_difference('PatientImmunization.count') do
      post :create, patient_immunization: { date_registered: @patient_immunization.date_registered, notes: @patient_immunization.notes, title: @patient_immunization.title }
    end

    assert_redirected_to patient_immunization_path(assigns(:patient_immunization))
  end

  test "should show patient_immunization" do
    get :show, id: @patient_immunization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_immunization
    assert_response :success
  end

  test "should update patient_immunization" do
    patch :update, id: @patient_immunization, patient_immunization: { date_registered: @patient_immunization.date_registered, notes: @patient_immunization.notes, title: @patient_immunization.title }
    assert_redirected_to patient_immunization_path(assigns(:patient_immunization))
  end

  test "should destroy patient_immunization" do
    assert_difference('PatientImmunization.count', -1) do
      delete :destroy, id: @patient_immunization
    end

    assert_redirected_to patient_immunizations_path
  end
end
