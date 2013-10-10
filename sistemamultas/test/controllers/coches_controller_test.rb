require 'test_helper'

class CochesControllerTest < ActionController::TestCase
  setup do
    @coche = coches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coche" do
    assert_difference('Coche.count') do
      post :create, coche: { matricula: @coche.matricula, usuario_id: @coche.usuario_id }
    end

    assert_redirected_to coche_path(assigns(:coche))
  end

  test "should show coche" do
    get :show, id: @coche
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coche
    assert_response :success
  end

  test "should update coche" do
    patch :update, id: @coche, coche: { matricula: @coche.matricula, usuario_id: @coche.usuario_id }
    assert_redirected_to coche_path(assigns(:coche))
  end

  test "should destroy coche" do
    assert_difference('Coche.count', -1) do
      delete :destroy, id: @coche
    end

    assert_redirected_to coches_path
  end
end
