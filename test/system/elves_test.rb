require "application_system_test_case"

class ElvesTest < ApplicationSystemTestCase
  setup do
    @elf = elves(:one)
  end

  test "visiting the index" do
    visit elves_url
    assert_selector "h1", text: "Elves"
  end

  test "creating a Elf" do
    visit elves_url
    click_on "New Elf"

    fill_in "Damage", with: @elf.damage
    fill_in "Level", with: @elf.level
    fill_in "Name", with: @elf.name
    click_on "Create Elf"

    assert_text "Elf was successfully created"
    click_on "Back"
  end

  test "updating a Elf" do
    visit elves_url
    click_on "Edit", match: :first

    fill_in "Damage", with: @elf.damage
    fill_in "Level", with: @elf.level
    fill_in "Name", with: @elf.name
    click_on "Update Elf"

    assert_text "Elf was successfully updated"
    click_on "Back"
  end

  test "destroying a Elf" do
    visit elves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Elf was successfully destroyed"
  end
end
