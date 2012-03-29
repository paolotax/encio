require 'test_helper'

class SerateControllerTest < ActionController::TestCase
  setup do
    @serata = serate(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serate)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serata" do
    assert_difference('Serata.count') do
      post :create, serata: @serata.attributes
    end

    assert_redirected_to serata_path(assigns(:serata))
  end

  test "should show serata" do
    get :show, id: @serata
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serata
    assert_response :success
  end

  test "should update serata" do
    put :update, id: @serata, serata: @serata.attributes
    assert_redirected_to serata_path(assigns(:serata))
  end

  test "should destroy serata" do
    assert_difference('Serata.count', -1) do
      delete :destroy, id: @serata
    end

    assert_redirected_to serate_path
  end
end
