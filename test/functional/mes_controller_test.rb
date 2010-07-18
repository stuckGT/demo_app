require 'test_helper'

class MesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create me" do
    assert_difference('Me.count') do
      post :create, :me => { }
    end

    assert_redirected_to me_path(assigns(:me))
  end

  test "should show me" do
    get :show, :id => mes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mes(:one).to_param
    assert_response :success
  end

  test "should update me" do
    put :update, :id => mes(:one).to_param, :me => { }
    assert_redirected_to me_path(assigns(:me))
  end

  test "should destroy me" do
    assert_difference('Me.count', -1) do
      delete :destroy, :id => mes(:one).to_param
    end

    assert_redirected_to mes_path
  end
end
