require "application_system_test_case"

class PessoaContatosTest < ApplicationSystemTestCase
  setup do
    @pessoa_contato = pessoa_contatos(:one)
  end

  test "visiting the index" do
    visit pessoa_contatos_url
    assert_selector "h1", text: "Pessoa Contatos"
  end

  test "creating a Pessoa contato" do
    visit pessoa_contatos_url
    click_on "New Pessoa Contato"

    fill_in "Celular", with: @pessoa_contato.celular
    fill_in "Email", with: @pessoa_contato.email
    fill_in "Id pessoa", with: @pessoa_contato.id_pessoa
    fill_in "Num whats zap", with: @pessoa_contato.num_whats_zap
    fill_in "Telefone", with: @pessoa_contato.telefone
    click_on "Create Pessoa contato"

    assert_text "Pessoa contato was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa contato" do
    visit pessoa_contatos_url
    click_on "Edit", match: :first

    fill_in "Celular", with: @pessoa_contato.celular
    fill_in "Email", with: @pessoa_contato.email
    fill_in "Id pessoa", with: @pessoa_contato.id_pessoa
    fill_in "Num whats zap", with: @pessoa_contato.num_whats_zap
    fill_in "Telefone", with: @pessoa_contato.telefone
    click_on "Update Pessoa contato"

    assert_text "Pessoa contato was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa contato" do
    visit pessoa_contatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa contato was successfully destroyed"
  end
end
