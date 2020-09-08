require "application_system_test_case"

class TipoDocumentosTest < ApplicationSystemTestCase
  setup do
    @tipo_documento = tipo_documentos(:one)
  end

  test "visiting the index" do
    visit tipo_documentos_url
    assert_selector "h1", text: "Tipo Documentos"
  end

  test "creating a Tipo documento" do
    visit tipo_documentos_url
    click_on "New Tipo Documento"

    fill_in "Descricao", with: @tipo_documento.descricao
    check "Status" if @tipo_documento.status
    click_on "Create Tipo documento"

    assert_text "Tipo documento was successfully created"
    click_on "Back"
  end

  test "updating a Tipo documento" do
    visit tipo_documentos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tipo_documento.descricao
    check "Status" if @tipo_documento.status
    click_on "Update Tipo documento"

    assert_text "Tipo documento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo documento" do
    visit tipo_documentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo documento was successfully destroyed"
  end
end
