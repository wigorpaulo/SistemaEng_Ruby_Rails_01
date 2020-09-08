require 'test_helper'

class PessoaEnderecosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa_endereco = pessoa_enderecos(:one)
  end

  test "should get index" do
    get pessoa_enderecos_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_endereco_url
    assert_response :success
  end

  test "should create pessoa_endereco" do
    assert_difference('PessoaEndereco.count') do
      post pessoa_enderecos_url, params: { pessoa_endereco: { id_endereco: @pessoa_endereco.id_endereco, id_pessoa: @pessoa_endereco.id_pessoa, id_tipo_endereco: @pessoa_endereco.id_tipo_endereco } }
    end

    assert_redirected_to pessoa_endereco_url(PessoaEndereco.last)
  end

  test "should show pessoa_endereco" do
    get pessoa_endereco_url(@pessoa_endereco)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_endereco_url(@pessoa_endereco)
    assert_response :success
  end

  test "should update pessoa_endereco" do
    patch pessoa_endereco_url(@pessoa_endereco), params: { pessoa_endereco: { id_endereco: @pessoa_endereco.id_endereco, id_pessoa: @pessoa_endereco.id_pessoa, id_tipo_endereco: @pessoa_endereco.id_tipo_endereco } }
    assert_redirected_to pessoa_endereco_url(@pessoa_endereco)
  end

  test "should destroy pessoa_endereco" do
    assert_difference('PessoaEndereco.count', -1) do
      delete pessoa_endereco_url(@pessoa_endereco)
    end

    assert_redirected_to pessoa_enderecos_url
  end
end
