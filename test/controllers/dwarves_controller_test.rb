require "test_helper"

class DwarvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dwarf = dwarves(:one)
  end

  test "should get index" do
    get dwarves_url
    assert_response :success
  end

  test "should get new" do
    get new_dwarf_url
    assert_response :success
  end

  test "should create dwarf" do
    assert_difference('Dwarf.count') do
      post dwarves_url, params: { dwarf: { : @dwarf. } }
    end

    assert_redirected_to dwarf_url(Dwarf.last)
  end

  test "should show dwarf" do
    get dwarf_url(@dwarf)
    assert_response :success
  end

  test "should get edit" do
    get edit_dwarf_url(@dwarf)
    assert_response :success
  end

  test "should update dwarf" do
    patch dwarf_url(@dwarf), params: { dwarf: { : @dwarf. } }
    assert_redirected_to dwarf_url(@dwarf)
  end

  test "should destroy dwarf" do
    assert_difference('Dwarf.count', -1) do
      delete dwarf_url(@dwarf)
    end

    assert_redirected_to dwarves_url
  end
end
