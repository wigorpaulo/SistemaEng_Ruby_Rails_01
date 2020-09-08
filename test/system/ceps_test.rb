require "application_system_test_case"

class CepsTest < ApplicationSystemTestCase
  setup do
    @cep = ceps(:one)
  end

  test "visiting the index" do
    visit ceps_url
    assert_selector "h1", text: "Ceps"
  end

  test "creating a Cep" do
    visit ceps_url
    click_on "New Cep"

    fill_in "Descricao", with: @cep.descricao
    click_on "Create Cep"

    assert_text "Cep was successfully created"
    click_on "Back"
  end

  test "updating a Cep" do
    visit ceps_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @cep.descricao
    click_on "Update Cep"

    assert_text "Cep was successfully updated"
    click_on "Back"
  end

  test "destroying a Cep" do
    visit ceps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cep was successfully destroyed"
  end
end
