require 'test_helper'

class TipoDocumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_documento = tipo_documentos(:one)
  end

  test "should get index" do
    get tipo_documentos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_documento_url
    assert_response :success
  end

  test "should create tipo_documento" do
    assert_difference('TipoDocumento.count') do
      post tipo_documentos_url, params: { tipo_documento: { descricao: @tipo_documento.descricao, status: @tipo_documento.status } }
    end

    assert_redirected_to tipo_documento_url(TipoDocumento.last)
  end

  test "should show tipo_documento" do
    get tipo_documento_url(@tipo_documento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_documento_url(@tipo_documento)
    assert_response :success
  end

  test "should update tipo_documento" do
    patch tipo_documento_url(@tipo_documento), params: { tipo_documento: { descricao: @tipo_documento.descricao, status: @tipo_documento.status } }
    assert_redirected_to tipo_documento_url(@tipo_documento)
  end

  test "should destroy tipo_documento" do
    assert_difference('TipoDocumento.count', -1) do
      delete tipo_documento_url(@tipo_documento)
    end

    assert_redirected_to tipo_documentos_url
  end
end
