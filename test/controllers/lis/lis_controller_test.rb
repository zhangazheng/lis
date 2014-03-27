require 'test_helper'

module Lis
  class LisControllerTest < ActionController::TestCase
    setup do
      @li = lis(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:lis)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create li" do
      assert_difference('Li.count') do
        post :create, li: {  }
      end

      assert_redirected_to li_path(assigns(:li))
    end

    test "should show li" do
      get :show, id: @li
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @li
      assert_response :success
    end

    test "should update li" do
      patch :update, id: @li, li: {  }
      assert_redirected_to li_path(assigns(:li))
    end

    test "should destroy li" do
      assert_difference('Li.count', -1) do
        delete :destroy, id: @li
      end

      assert_redirected_to lis_path
    end
  end
end
