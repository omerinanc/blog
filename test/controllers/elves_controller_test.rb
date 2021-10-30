require "test_helper"

class ElvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elf = elves(:one)
  end

  test "should get index" do
    get elves_url
    assert_response :success
  end

  test "should get new" do
    get new_elf_url
    assert_response :success
  end

  test "should create elf" do
    assert_difference('Elf.count') do
      post elves_url, params: { elf: { damage: @elf.damage, level: @elf.level, name: @elf.name } }
    end

    assert_redirected_to elf_url(Elf.last)
  end

  test "should show elf" do
    get elf_url(@elf)
    assert_response :success
  end

  test "should get edit" do
    get edit_elf_url(@elf)
    assert_response :success
  end

  test "should update elf" do
    patch elf_url(@elf), params: { elf: { damage: @elf.damage, level: @elf.level, name: @elf.name } }
    assert_redirected_to elf_url(@elf)
  end

  test "should destroy elf" do
    assert_difference('Elf.count', -1) do
      delete elf_url(@elf)
    end

    assert_redirected_to elves_url
  end
end
