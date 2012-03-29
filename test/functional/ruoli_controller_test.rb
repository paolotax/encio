require 'test_helper'

class RuoliControllerTest < ActionController::TestCase
  setup do
    @ruolo = ruoli(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruoli)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruolo" do
    assert_difference('Ruolo.count') do
      post :create, ruolo: @ruolo.attributes
    end

    assert_redirected_to ruolo_path(assigns(:ruolo))
  end

  test "should show ruolo" do
    get :show, id: @ruolo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruolo
    assert_response :success
  end

  test "should update ruolo" do
    put :update, id: @ruolo, ruolo: @ruolo.attributes
    assert_redirected_to ruolo_path(assigns(:ruolo))
  end

  test "should destroy ruolo" do
    assert_difference('Ruolo.count', -1) do
      delete :destroy, id: @ruolo
    end

    assert_redirected_to ruoli_path
  end
end
