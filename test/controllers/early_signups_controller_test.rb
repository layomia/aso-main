require 'test_helper'

class EarlySignupsControllerTest < ActionController::TestCase
  setup do
    @early_signup = early_signups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:early_signups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create early_signup" do
    assert_difference('EarlySignup.count') do
      post :create, early_signup: { email: @early_signup.email, signed_up: @early_signup.signed_up }
    end

    assert_redirected_to early_signup_path(assigns(:early_signup))
  end

  test "should show early_signup" do
    get :show, id: @early_signup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @early_signup
    assert_response :success
  end

  test "should update early_signup" do
    patch :update, id: @early_signup, early_signup: { email: @early_signup.email, signed_up: @early_signup.signed_up }
    assert_redirected_to early_signup_path(assigns(:early_signup))
  end

  test "should destroy early_signup" do
    assert_difference('EarlySignup.count', -1) do
      delete :destroy, id: @early_signup
    end

    assert_redirected_to early_signups_path
  end
end
