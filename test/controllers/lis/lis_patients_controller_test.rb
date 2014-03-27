require 'test_helper'

module Lis
  class LisPatientsControllerTest < ActionController::TestCase
    setup do
      @lis_patient = lis_patients(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:lis_patients)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create lis_patient" do
      assert_difference('LisPatient.count') do
        post :create, lis_patient: {  }
      end

      assert_redirected_to lis_patient_path(assigns(:lis_patient))
    end

    test "should show lis_patient" do
      get :show, id: @lis_patient
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @lis_patient
      assert_response :success
    end

    test "should update lis_patient" do
      patch :update, id: @lis_patient, lis_patient: {  }
      assert_redirected_to lis_patient_path(assigns(:lis_patient))
    end

    test "should destroy lis_patient" do
      assert_difference('LisPatient.count', -1) do
        delete :destroy, id: @lis_patient
      end

      assert_redirected_to lis_patients_path
    end
  end
end
