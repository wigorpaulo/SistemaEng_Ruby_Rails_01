require 'test_helper'

class PessoaDocumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa_documento = pessoa_documentos(:one)
  end

  test "should get index" do
    get pessoa_documentos_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_documento_url
    assert_response :success
  end

  test "should create pessoa_documento" do
    assert_difference('PessoaDocumento.count') do
      post pessoa_documentos_url, params: { pessoa_documento: { descricao: @pessoa_documento.descricao, id_pessoa: @pessoa_documento.id_pessoa } }
    end

    assert_redirected_to pessoa_documento_url(PessoaDocumento.last)
  end

  test "should show pessoa_documento" do
    get pessoa_documento_url(@pessoa_documento)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_documento_url(@pessoa_documento)
    assert_response :success
  end

  test "should update pessoa_documento" do
    patch pessoa_documento_url(@pessoa_documento), params: { pessoa_documento: { descricao: @pessoa_documento.descricao, id_pessoa: @pessoa_documento.id_pessoa } }
    assert_redirected_to pessoa_documento_url(@pessoa_documento)
  end

  test "should destroy pessoa_documento" do
    assert_difference('PessoaDocumento.count', -1) do
      delete pessoa_documento_url(@pessoa_documento)
    end

    assert_redirected_to pessoa_documentos_url
  end
end
