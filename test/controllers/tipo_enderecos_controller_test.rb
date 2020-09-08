require 'test_helper'

class TipoEnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_endereco = tipo_enderecos(:one)
  end

  test "should get index" do
    get tipo_enderecos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_endereco_url
    assert_response :success
  end

  test "should create tipo_endereco" do
    assert_difference('TipoEndereco.count') do
      post tipo_enderecos_url, params: { tipo_endereco: { descricao: @tipo_endereco.descricao, status: @tipo_endereco.status } }
    end

    assert_redirected_to tipo_endereco_url(TipoEndereco.last)
  end

  test "should show tipo_endereco" do
    get tipo_endereco_url(@tipo_endereco)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_endereco_url(@tipo_endereco)
    assert_response :success
  end

  test "should update tipo_endereco" do
    patch tipo_endereco_url(@tipo_endereco), params: { tipo_endereco: { descricao: @tipo_endereco.descricao, status: @tipo_endereco.status } }
    assert_redirected_to tipo_endereco_url(@tipo_endereco)
  end

  test "should destroy tipo_endereco" do
    assert_difference('TipoEndereco.count', -1) do
      delete tipo_endereco_url(@tipo_endereco)
    end

    assert_redirected_to tipo_enderecos_url
  end
end
