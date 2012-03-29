require 'test_helper'

class DipendentiControllerTest < ActionController::TestCase
  setup do
    @dipendente = dipendenti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dipendenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dipendente" do
    assert_difference('Dipendente.count') do
      post :create, dipendente: @dipendente.attributes
    end

    assert_redirected_to dipendente_path(assigns(:dipendente))
  end

  test "should show dipendente" do
    get :show, id: @dipendente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dipendente
    assert_response :success
  end

  test "should update dipendente" do
    put :update, id: @dipendente, dipendente: @dipendente.attributes
    assert_redirected_to dipendente_path(assigns(:dipendente))
  end

  test "should destroy dipendente" do
    assert_difference('Dipendente.count', -1) do
      delete :destroy, id: @dipendente
    end

    assert_redirected_to dipendenti_path
  end
end
