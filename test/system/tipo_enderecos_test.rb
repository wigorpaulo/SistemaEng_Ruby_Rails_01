require "application_system_test_case"

class TipoEnderecosTest < ApplicationSystemTestCase
  setup do
    @tipo_endereco = tipo_enderecos(:one)
  end

  test "visiting the index" do
    visit tipo_enderecos_url
    assert_selector "h1", text: "Tipo Enderecos"
  end

  test "creating a Tipo endereco" do
    visit tipo_enderecos_url
    click_on "New Tipo Endereco"

    fill_in "Descricao", with: @tipo_endereco.descricao
    check "Status" if @tipo_endereco.status
    click_on "Create Tipo endereco"

    assert_text "Tipo endereco was successfully created"
    click_on "Back"
  end

  test "updating a Tipo endereco" do
    visit tipo_enderecos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tipo_endereco.descricao
    check "Status" if @tipo_endereco.status
    click_on "Update Tipo endereco"

    assert_text "Tipo endereco was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo endereco" do
    visit tipo_enderecos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo endereco was successfully destroyed"
  end
end
