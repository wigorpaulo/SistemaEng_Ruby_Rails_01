require 'test_helper'

class FornecedorEnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fornecedor_endereco = fornecedor_enderecos(:one)
  end

  test "should get index" do
    get fornecedor_enderecos_url
    assert_response :success
  end

  test "should get new" do
    get new_fornecedor_endereco_url
    assert_response :success
  end

  test "should create fornecedor_endereco" do
    assert_difference('FornecedorEndereco.count') do
      post fornecedor_enderecos_url, params: { fornecedor_endereco: { id_endereco: @fornecedor_endereco.id_endereco, id_fornecedor: @fornecedor_endereco.id_fornecedor, id_tipo_endereco: @fornecedor_endereco.id_tipo_endereco } }
    end

    assert_redirected_to fornecedor_endereco_url(FornecedorEndereco.last)
  end

  test "should show fornecedor_endereco" do
    get fornecedor_endereco_url(@fornecedor_endereco)
    assert_response :success
  end

  test "should get edit" do
    get edit_fornecedor_endereco_url(@fornecedor_endereco)
    assert_response :success
  end

  test "should update fornecedor_endereco" do
    patch fornecedor_endereco_url(@fornecedor_endereco), params: { fornecedor_endereco: { id_endereco: @fornecedor_endereco.id_endereco, id_fornecedor: @fornecedor_endereco.id_fornecedor, id_tipo_endereco: @fornecedor_endereco.id_tipo_endereco } }
    assert_redirected_to fornecedor_endereco_url(@fornecedor_endereco)
  end

  test "should destroy fornecedor_endereco" do
    assert_difference('FornecedorEndereco.count', -1) do
      delete fornecedor_endereco_url(@fornecedor_endereco)
    end

    assert_redirected_to fornecedor_enderecos_url
  end
end
