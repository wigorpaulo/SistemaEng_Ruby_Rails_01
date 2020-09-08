require "application_system_test_case"

class FornecedorsTest < ApplicationSystemTestCase
  setup do
    @fornecedor = fornecedors(:one)
  end

  test "visiting the index" do
    visit fornecedors_url
    assert_selector "h1", text: "Fornecedors"
  end

  test "creating a Fornecedor" do
    visit fornecedors_url
    click_on "New Fornecedor"

    fill_in "Cnpj", with: @fornecedor.cnpj
    fill_in "Fantasia", with: @fornecedor.fantasia
    fill_in "Razao social", with: @fornecedor.razao_social
    click_on "Create Fornecedor"

    assert_text "Fornecedor was successfully created"
    click_on "Back"
  end

  test "updating a Fornecedor" do
    visit fornecedors_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @fornecedor.cnpj
    fill_in "Fantasia", with: @fornecedor.fantasia
    fill_in "Razao social", with: @fornecedor.razao_social
    click_on "Update Fornecedor"

    assert_text "Fornecedor was successfully updated"
    click_on "Back"
  end

  test "destroying a Fornecedor" do
    visit fornecedors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fornecedor was successfully destroyed"
  end
end
