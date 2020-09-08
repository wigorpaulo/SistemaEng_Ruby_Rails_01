require "application_system_test_case"

class PessoaDocumentosTest < ApplicationSystemTestCase
  setup do
    @pessoa_documento = pessoa_documentos(:one)
  end

  test "visiting the index" do
    visit pessoa_documentos_url
    assert_selector "h1", text: "Pessoa Documentos"
  end

  test "creating a Pessoa documento" do
    visit pessoa_documentos_url
    click_on "New Pessoa Documento"

    fill_in "Descricao", with: @pessoa_documento.descricao
    fill_in "Id pessoa", with: @pessoa_documento.id_pessoa
    click_on "Create Pessoa documento"

    assert_text "Pessoa documento was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa documento" do
    visit pessoa_documentos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @pessoa_documento.descricao
    fill_in "Id pessoa", with: @pessoa_documento.id_pessoa
    click_on "Update Pessoa documento"

    assert_text "Pessoa documento was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa documento" do
    visit pessoa_documentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa documento was successfully destroyed"
  end
end
