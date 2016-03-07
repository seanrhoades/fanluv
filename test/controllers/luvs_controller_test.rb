require 'test_helper'

class LuvsControllerTest < ActionController::TestCase
  setup do
    @luv = luvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luv" do
    assert_difference('Luv.count') do
      post :create, luv: {  }
    end

    assert_redirected_to luv_path(assigns(:luv))
  end

  test "should show luv" do
    get :show, id: @luv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luv
    assert_response :success
  end

  test "should update luv" do
    patch :update, id: @luv, luv: {  }
    assert_redirected_to luv_path(assigns(:luv))
  end

  test "should destroy luv" do
    assert_difference('Luv.count', -1) do
      delete :destroy, id: @luv
    end

    assert_redirected_to luvs_path
  end
end
