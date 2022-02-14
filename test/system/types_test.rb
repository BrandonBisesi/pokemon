require "application_system_test_case"

class TypesTest < ApplicationSystemTestCase
  setup do
    @type = types(:one)
  end

  test "visiting the index" do
    visit types_url
    assert_selector "h1", text: "Types"
  end

  test "should create type" do
    visit types_url
    click_on "New type"

    fill_in "Double damage from", with: @type.double_damage_from
    fill_in "Double damage to", with: @type.double_damage_to
    fill_in "Half damage from", with: @type.half_damage_from
    fill_in "Half damage to", with: @type.half_damage_to
    fill_in "Name", with: @type.name
    fill_in "No damage from", with: @type.no_damage_from
    fill_in "No damage to", with: @type.no_damage_to
    click_on "Create Type"

    assert_text "Type was successfully created"
    click_on "Back"
  end

  test "should update Type" do
    visit type_url(@type)
    click_on "Edit this type", match: :first

    fill_in "Double damage from", with: @type.double_damage_from
    fill_in "Double damage to", with: @type.double_damage_to
    fill_in "Half damage from", with: @type.half_damage_from
    fill_in "Half damage to", with: @type.half_damage_to
    fill_in "Name", with: @type.name
    fill_in "No damage from", with: @type.no_damage_from
    fill_in "No damage to", with: @type.no_damage_to
    click_on "Update Type"

    assert_text "Type was successfully updated"
    click_on "Back"
  end

  test "should destroy Type" do
    visit type_url(@type)
    click_on "Destroy this type", match: :first

    assert_text "Type was successfully destroyed"
  end
end
