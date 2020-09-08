require "application_system_test_case"

class ReferenciaTest < ApplicationSystemTestCase
  setup do
    @referencium = referencia(:one)
  end

  test "visiting the index" do
    visit referencia_url
    assert_selector "h1", text: "Referencia"
  end

  test "creating a Referencium" do
    visit referencia_url
    click_on "New Referencium"

    fill_in "Ref anomes", with: @referencium.ref_anomes
    click_on "Create Referencium"

    assert_text "Referencium was successfully created"
    click_on "Back"
  end

  test "updating a Referencium" do
    visit referencia_url
    click_on "Edit", match: :first

    fill_in "Ref anomes", with: @referencium.ref_anomes
    click_on "Update Referencium"

    assert_text "Referencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Referencium" do
    visit referencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Referencium was successfully destroyed"
  end
end
