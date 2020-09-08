require "application_system_test_case"

class FornecedorEnderecosTest < ApplicationSystemTestCase
  setup do
    @fornecedor_endereco = fornecedor_enderecos(:one)
  end

  test "visiting the index" do
    visit fornecedor_enderecos_url
    assert_selector "h1", text: "Fornecedor Enderecos"
  end

  test "creating a Fornecedor endereco" do
    visit fornecedor_enderecos_url
    click_on "New Fornecedor Endereco"

    fill_in "Id endereco", with: @fornecedor_endereco.id_endereco
    fill_in "Id fornecedor", with: @fornecedor_endereco.id_fornecedor
    fill_in "Id tipo endereco", with: @fornecedor_endereco.id_tipo_endereco
    click_on "Create Fornecedor endereco"

    assert_text "Fornecedor endereco was successfully created"
    click_on "Back"
  end

  test "updating a Fornecedor endereco" do
    visit fornecedor_enderecos_url
    click_on "Edit", match: :first

    fill_in "Id endereco", with: @fornecedor_endereco.id_endereco
    fill_in "Id fornecedor", with: @fornecedor_endereco.id_fornecedor
    fill_in "Id tipo endereco", with: @fornecedor_endereco.id_tipo_endereco
    click_on "Update Fornecedor endereco"

    assert_text "Fornecedor endereco was successfully updated"
    click_on "Back"
  end

  test "destroying a Fornecedor endereco" do
    visit fornecedor_enderecos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fornecedor endereco was successfully destroyed"
  end
end
