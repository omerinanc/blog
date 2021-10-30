require "application_system_test_case"

class RoguesTest < ApplicationSystemTestCase
  setup do
    @rogue = rogues(:one)
  end

  test "visiting the index" do
    visit rogues_url
    assert_selector "h1", text: "Rogues"
  end

  test "creating a Rogue" do
    visit rogues_url
    click_on "New Rogue"

    fill_in "Health", with: @rogue.health
    fill_in "Name", with: @rogue.name
    fill_in "Weapon", with: @rogue.weapon
    click_on "Create Rogue"

    assert_text "Rogue was successfully created"
    click_on "Back"
  end

  test "updating a Rogue" do
    visit rogues_url
    click_on "Edit", match: :first

    fill_in "Health", with: @rogue.health
    fill_in "Name", with: @rogue.name
    fill_in "Weapon", with: @rogue.weapon
    click_on "Update Rogue"

    assert_text "Rogue was successfully updated"
    click_on "Back"
  end

  test "destroying a Rogue" do
    visit rogues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rogue was successfully destroyed"
  end
end
