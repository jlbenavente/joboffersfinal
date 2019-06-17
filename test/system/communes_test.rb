require "application_system_test_case"

class CommunesTest < ApplicationSystemTestCase
  setup do
    @commune = communes(:one)
  end

  test "visiting the index" do
    visit communes_url
    assert_selector "h1", text: "Communes"
  end

  test "creating a Commune" do
    visit communes_url
    click_on "New Commune"

    check "Display in index" if @commune.display_in_index
    fill_in "Name", with: @commune.name
    click_on "Create Commune"

    assert_text "Commune was successfully created"
    click_on "Back"
  end

  test "updating a Commune" do
    visit communes_url
    click_on "Edit", match: :first

    check "Display in index" if @commune.display_in_index
    fill_in "Name", with: @commune.name
    click_on "Update Commune"

    assert_text "Commune was successfully updated"
    click_on "Back"
  end

  test "destroying a Commune" do
    visit communes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commune was successfully destroyed"
  end
end
