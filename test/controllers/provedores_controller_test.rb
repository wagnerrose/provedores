require 'test_helper'

class ProvedoresControllerTest < ActionController::TestCase
  setup do
    @provedor = provedores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provedor" do
    assert_difference('Provedor.count') do
      post :create, provedor: { endereco: @provedor.endereco, microRegiao: @provedor.microRegiao, municipio: @provedor.municipio, numAto: @provedor.numAto, razaoSocial: @provedor.razaoSocial, telefone: @provedor.telefone, termo: @provedor.termo, uf: @provedor.uf }
    end

    assert_redirected_to provedor_path(assigns(:provedor))
  end

  test "should show provedor" do
    get :show, id: @provedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provedor
    assert_response :success
  end

  test "should update provedor" do
    patch :update, id: @provedor, provedor: { endereco: @provedor.endereco, microRegiao: @provedor.microRegiao, municipio: @provedor.municipio, numAto: @provedor.numAto, razaoSocial: @provedor.razaoSocial, telefone: @provedor.telefone, termo: @provedor.termo, uf: @provedor.uf }
    assert_redirected_to provedor_path(assigns(:provedor))
  end

  test "should destroy provedor" do
    assert_difference('Provedor.count', -1) do
      delete :destroy, id: @provedor
    end

    assert_redirected_to provedores_path
  end
end
