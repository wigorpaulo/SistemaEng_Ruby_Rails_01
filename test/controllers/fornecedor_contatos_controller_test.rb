require 'test_helper'

class FornecedorContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fornecedor_contato = fornecedor_contatos(:one)
  end

  test "should get index" do
    get fornecedor_contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_fornecedor_contato_url
    assert_response :success
  end

  test "should create fornecedor_contato" do
    assert_difference('FornecedorContato.count') do
      post fornecedor_contatos_url, params: { fornecedor_contato: { celular: @fornecedor_contato.celular, email: @fornecedor_contato.email, id_fornecedor: @fornecedor_contato.id_fornecedor, num_whats_zap: @fornecedor_contato.num_whats_zap, telefone: @fornecedor_contato.telefone } }
    end

    assert_redirected_to fornecedor_contato_url(FornecedorContato.last)
  end

  test "should show fornecedor_contato" do
    get fornecedor_contato_url(@fornecedor_contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_fornecedor_contato_url(@fornecedor_contato)
    assert_response :success
  end

  test "should update fornecedor_contato" do
    patch fornecedor_contato_url(@fornecedor_contato), params: { fornecedor_contato: { celular: @fornecedor_contato.celular, email: @fornecedor_contato.email, id_fornecedor: @fornecedor_contato.id_fornecedor, num_whats_zap: @fornecedor_contato.num_whats_zap, telefone: @fornecedor_contato.telefone } }
    assert_redirected_to fornecedor_contato_url(@fornecedor_contato)
  end

  test "should destroy fornecedor_contato" do
    assert_difference('FornecedorContato.count', -1) do
      delete fornecedor_contato_url(@fornecedor_contato)
    end

    assert_redirected_to fornecedor_contatos_url
  end
end
