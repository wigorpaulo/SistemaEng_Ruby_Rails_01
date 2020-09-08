require 'test_helper'

class PessoaContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa_contato = pessoa_contatos(:one)
  end

  test "should get index" do
    get pessoa_contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_contato_url
    assert_response :success
  end

  test "should create pessoa_contato" do
    assert_difference('PessoaContato.count') do
      post pessoa_contatos_url, params: { pessoa_contato: { celular: @pessoa_contato.celular, email: @pessoa_contato.email, id_pessoa: @pessoa_contato.id_pessoa, num_whats_zap: @pessoa_contato.num_whats_zap, telefone: @pessoa_contato.telefone } }
    end

    assert_redirected_to pessoa_contato_url(PessoaContato.last)
  end

  test "should show pessoa_contato" do
    get pessoa_contato_url(@pessoa_contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_contato_url(@pessoa_contato)
    assert_response :success
  end

  test "should update pessoa_contato" do
    patch pessoa_contato_url(@pessoa_contato), params: { pessoa_contato: { celular: @pessoa_contato.celular, email: @pessoa_contato.email, id_pessoa: @pessoa_contato.id_pessoa, num_whats_zap: @pessoa_contato.num_whats_zap, telefone: @pessoa_contato.telefone } }
    assert_redirected_to pessoa_contato_url(@pessoa_contato)
  end

  test "should destroy pessoa_contato" do
    assert_difference('PessoaContato.count', -1) do
      delete pessoa_contato_url(@pessoa_contato)
    end

    assert_redirected_to pessoa_contatos_url
  end
end
