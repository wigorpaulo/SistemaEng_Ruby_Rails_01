require "application_system_test_case"

class PessoaEnderecosTest < ApplicationSystemTestCase
  setup do
    @pessoa_endereco = pessoa_enderecos(:one)
  end

  test "visiting the index" do
    visit pessoa_enderecos_url
    assert_selector "h1", text: "Pessoa Enderecos"
  end

  test "creating a Pessoa endereco" do
    visit pessoa_enderecos_url
    click_on "New Pessoa Endereco"

    fill_in "Id endereco", with: @pessoa_endereco.id_endereco
    fill_in "Id pessoa", with: @pessoa_endereco.id_pessoa
    fill_in "Id tipo endereco", with: @pessoa_endereco.id_tipo_endereco
    click_on "Create Pessoa endereco"

    assert_text "Pessoa endereco was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa endereco" do
    visit pessoa_enderecos_url
    click_on "Edit", match: :first

    fill_in "Id endereco", with: @pessoa_endereco.id_endereco
    fill_in "Id pessoa", with: @pessoa_endereco.id_pessoa
    fill_in "Id tipo endereco", with: @pessoa_endereco.id_tipo_endereco
    click_on "Update Pessoa endereco"

    assert_text "Pessoa endereco was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa endereco" do
    visit pessoa_enderecos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa endereco was successfully destroyed"
  end
end
