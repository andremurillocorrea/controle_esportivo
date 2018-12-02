require "application_system_test_case"

class PresencasTest < ApplicationSystemTestCase
  setup do
    @presenca = presencas(:one)
  end

  test "visiting the index" do
    visit presencas_url
    assert_selector "h1", text: "Presencas"
  end

  test "creating a Presenca" do
    visit presencas_url
    click_on "New Presenca"

    fill_in "Treino", with: @presenca.treino_id
    fill_in "User", with: @presenca.user_id
    click_on "Create Presenca"

    assert_text "Presenca was successfully created"
    click_on "Back"
  end

  test "updating a Presenca" do
    visit presencas_url
    click_on "Edit", match: :first

    fill_in "Treino", with: @presenca.treino_id
    fill_in "User", with: @presenca.user_id
    click_on "Update Presenca"

    assert_text "Presenca was successfully updated"
    click_on "Back"
  end

  test "destroying a Presenca" do
    visit presencas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presenca was successfully destroyed"
  end
end
