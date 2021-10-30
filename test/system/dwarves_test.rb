require "application_system_test_case"

class DwarvesTest < ApplicationSystemTestCase
  setup do
    @dwarf = dwarves(:one)
  end

  test "visiting the index" do
    visit dwarves_url
    assert_selector "h1", text: "Dwarves"
  end

  test "creating a Dwarf" do
    visit dwarves_url
    click_on "New Dwarf"

    fill_in "Damage", with: @dwarf.damage
    fill_in "Level", with: @dwarf.level
    fill_in "Name", with: @dwarf.name
    click_on "Create Dwarf"

    assert_text "Dwarf was successfully created"
    click_on "Back"
  end

  test "updating a Dwarf" do
    visit dwarves_url
    click_on "Edit", match: :first

    fill_in "Damage", with: @dwarf.damage
    fill_in "Level", with: @dwarf.level
    fill_in "Name", with: @dwarf.name
    click_on "Update Dwarf"

    assert_text "Dwarf was successfully updated"
    click_on "Back"
  end

  test "destroying a Dwarf" do
    visit dwarves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dwarf was successfully destroyed"
  end
end
